#ifndef __UART_H__
#define __UART_H__

#include <mcs51/8051.h>


void init_uart();
int putchar(int chr);
int getchar();

#endif
