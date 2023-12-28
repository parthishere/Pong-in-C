#ifndef __INTERRUPTS_H__
#define __INTERRUPTS_H__

#include <mcs51/8051.h>

void timer_init();
void init_ext_interrupt();
void disable_irq();
void enable_irq();

#endif