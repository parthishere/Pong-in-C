#include "i2c.h"


void init_i2c(void){
	SDA_HIGH;
	SCL_HIGH;
}
/*
 * Generates a blocking delay for I2C communication.
 * The delay duration is approximately `d` microseconds, assuming that each loop iteration takes 15 clock cycles (adjust `15` based on the actual clock cycle duration).
 * This delay is used to satisfy the timing requirements of I2C communication.
 */
void delay_i2c(int d)
{
   int i = 0, limit = 0;
   limit = d/15;

   for(i=0;i<1;i++);
}

/*
 * Generates an I2C start condition on the bus.
 * A start condition is indicated by a high-to-low transition on the SDA line while SCL is high.
 * This function should be called when the bus is free for a new communication session.
 */
void i2c_start_bit(void)
{
	SCL_HIGH;          // Set SCL to high
	SDA_HIGH;          // Set SDA to high
	delay_i2c(Delay);  // Wait for half bit time
	SDA_LOW;           // Create a high-to-low transition on SDA
	delay_i2c(Delay);  // Hold the condition for half bit time
}

/*
 * Generates an I2C restart condition on the bus.
 * A restart condition is indicated by a transition sequence on SDA while SCL is high, similar to a start condition.
 * This function is used to change the data transfer direction during a communication session.
 */
void i2c_restart_bit(void)
{
	SCL_LOW;           // Make SCL low
	delay_i2c(Delay/2); // Prepare to change SDA
	SDA_HIGH;          // Set SDA to high
	delay_i2c(Delay/2); // Wait a quarter bit time
	SCL_HIGH;          // Set SCL to high
	delay_i2c(Delay/2); // Wait a quarter bit time
	SDA_LOW;           // Set SDA to low
	delay_i2c(Delay/2); // Hold the condition for a quarter bit time
}


/*
 * Generates an I2C stop condition on the bus.
 * A stop condition is indicated by a low-to-high transition on SDA while SCL is high.
 * This function should be called at the end of a communication session to release the bus.
 */
void i2c_stop_bit(void)
{
	SCL_LOW;           // Make SCL low
	delay_i2c(Delay/2); // Prepare to change SDA
	SDA_LOW;           // Make SDA low
	delay_i2c(Delay/2); // Wait a quarter bit time
	SCL_HIGH;          // Set SCL to high
	delay_i2c(Delay/2); // Wait a quarter bit time
	SDA_HIGH;          // Create a low-to-high transition on SDA
	// delay_i2c(Delay/2); // Hold the condition for a quarter bit time
}


/*
 * Sends an acknowledgment (ACK) bit on the I2C bus.
 * An ACK is indicated by pulling SDA low while SCL cycles high and then low.
 * This function is called to acknowledge the receipt of a byte of data.
 */
void i2c_send_ack(void)
{
	SCL_LOW;           // Make SCL low
	delay_i2c(Delay/2); // Prepare to send ACK
	SDA_LOW;           // Pull SDA low to indicate ACK
	delay_i2c(Delay/2); // Wait a quarter bit time
	SCL_HIGH;          // Make SCL high
	delay_i2c(Delay);  // Hold the condition for half bit time
}

/*
 * Sends a non-acknowledgment (NACK) bit on the I2C bus.
 * A NACK is indicated by leaving SDA high while SCL cycles high and then low.
 * This function is called to indicate that no more data will be received or to indicate an error.
 */
void i2c_send_nack(void)
{
	SCL_LOW;				// Make SCK pin low
	delay_i2c(Delay/2);	// Data pin should change it's value,
								// when it is confirm that SCK is low
	SDA_HIGH;				// Make SDA high
	delay_i2c(Delay/2);	// 1/4 bit delay
	SCL_HIGH;				// Make SCK pin high
	delay_i2c(Delay);	// Half bit delay
}

/*
 * Writes a byte of data to the I2C bus.
 * This function sends 8 bits of data, one bit at a time, starting with the most significant bit (MSB).
 * After sending the 8 bits, it generates a clock pulse for the acknowledgment bit.
 * It returns the acknowledgment bit from the slave, which is 0 for ACK and 1 for NACK.
 *
 * Parameters:
 *  Byte - the byte of data to be sent on the I2C bus.
 *
 * Returns:
 *  The acknowledgment bit received from the slave: 0 (ACK) or 1 (NACK).
 */
uint8_t i2c_write(unsigned char Byte)
{
	char i = 0; // Variable to use in the for loop

    for(i = 0; i < 8; i++) // Repeat for every bit
    {
        SCL_LOW; // Make SCL pin low
        delay_i2c(Delay/2); // Ensure SDA can change when SCL is low

        // Place data bit value on SDA pin
        if((Byte << i) & 0x80) // If the current bit of Byte is 1, make SDA high
            SDA_HIGH;
        else // If the current bit of Byte is 0, make SDA low
            SDA_LOW;

        delay_i2c(Delay/2); // Wait for a short period
        SCL_HIGH; // Make SCL high so that slave can latch the bit
        delay_i2c(Delay); // Wait for the data bit to be latched by the slave
    }

    // Prepare to receive ACK from slave
    SCL_LOW; // Make SCL low
    SDA_HIGH; // SDA must be high to act as an input
    delay_i2c(Delay); // Wait for a short period
    SCL_HIGH; // Make SCL high to clock out the ACK bit
    delay_i2c(Delay); // Wait for the ACK bit to be received

    return SDA; // Return the state of SDA, which is the ACK bit
}

/*
 * Reads a byte of data from the I2C bus.
 * The function reads each bit from the SDA line while clocking SCL high for each bit.
 * After reading 8 bits, it assembles them into a byte.
 * It then sends a NACK to signal the end of the reading operation.
 *
 * Returns:
 *  The byte of data received from the I2C bus.
 */
uint8_t i2c_read(void)
{
	uint8_t i = 0, d = 0, RxData = 0;

	for(i = 0; i < 8; i++) // Loop to read each bit
	{
		SCL_LOW;			// Ensure SCL is low before changing SDA
		SDA_HIGH;			// Set SDA to input mode by making it high (not driving the line)
		delay_i2c(Delay);	// Wait for half bit duration
		SCL_HIGH;			// Clock the SCL line high to read the bit
		delay_i2c(Delay/2);	// Wait a quarter bit duration
		d = SDA;			// Read the current bit from SDA
		RxData = RxData | (d << (7 - i)); // Shift the bit to its proper position in RxData
		delay_i2c(Delay/2);	// Wait a quarter bit duration
	}

    i2c_send_nack(); // Send NACK after reading the last bit

    return RxData; // Return the assembled byte
}
