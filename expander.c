#include "expander.h"

void write_expander(uint8_t pins_state){
	init_i2c();
	i2c_start_bit();
	while(i2c_write(EXPANDER_WRITE_ADD) == 1)
	{
		i2c_start_bit(); // Start condition might need to be repeated if device is busy
	}
	i2c_write(pins_state);

	i2c_send_nack();

	i2c_stop_bit();
}


uint8_t read_expander(void){
	init_i2c();
	i2c_start_bit();
	while(i2c_write(EXPANDER_READ_ADD) == 1)
	{
		i2c_start_bit(); // Start condition might need to be repeated if device is busy
	}
	uint8_t data = i2c_read();

	i2c_send_nack();

	i2c_stop_bit();
	return data;
}