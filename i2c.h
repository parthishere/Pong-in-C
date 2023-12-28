#ifndef __I2C_H__
#define __I2C_H__

#include <mcs51/8051.h>
#include "/usr/share/sdcc/include/stdio.h"
#include "/usr/share/sdcc/include/stdint.h"
#include <at89c51ed2.h>

#define Delay 		(15)

#define SDA P1_5		// Data pin for i2c
#define SCL P1_4		// Clock pin for i2c

#define SDA_LOW		(SDA = 0)
#define SDA_HIGH	(SDA = 1)
#define SCL_LOW		(SCL = 0)
#define SCL_HIGH	(SCL = 1)


void delay_i2c(int d);
void init_i2c(void);
void i2c_start_bit(void);
void i2c_restart_bit(void);
void i2c_stop_bit(void);
void i2c_send_ack(void);
void i2c_send_nack(void);
uint8_t  i2c_write(unsigned char);
uint8_t i2c_read(void);

#endif
