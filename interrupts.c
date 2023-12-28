#include "interrupts.h"

void init_ext_interrupt()
{
	IE |= 0x81; // Enable INT0
	IT0 = 1;	// Set Falling Edge Trigger for INT0
}

void timer_init()
{
	EA = 1; /* Enable global interrupt */
	ET0 = 1;
	TMOD |= 0x01; /* Timer0 mode1 */
	TH0 = 0x2C;
	TL0 = 0x00;
	TR0 = 1;
}

void disable_irq()
{
	EA = 0;
	ET0 = 0;
}

void enable_irq()
{
	EA = 1;
	ET0 = 1;
}
