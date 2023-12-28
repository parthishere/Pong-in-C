#ifndef __EXPANDER_H__
#define __EXPANDER_H__

#include "i2c.h"

#define EXPANDER_READ_ADD 0x71
#define EXPANDER_WRITE_ADD 0x70


void write_expander(uint8_t pins_state);
uint8_t read_expander(void);

#endif