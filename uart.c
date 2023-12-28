#include "uart.h"

void init_uart(){
    // Configure serial communication settings
    SCON = 0x50;  // Set serial mode and 8-bit data
    TMOD = 0x20;  // Set timer mode for baud rate generation
    TH1 = 0xFD;    // Set the high byte of the timer for a specific baud rate
    TR1 = 1;       // Start timer 1 for UART communication
}

// Custom putchar function for sending a character over UART
int putchar(int chr){
    SBUF = chr;      // Put the character in the UART buffer
    while (!TI);     // Wait until transmission is complete
    TI = 0;          // Clear the transmit interrupt flag
    return chr;         // Return 1 to indicate successful transmission
}

// Custom getchar function for receiving a character over UART
int getchar(){
    while (!RI);     // Wait until a character is received
    int a = SBUF;    // Read the received character
    RI = 0;          // Clear the receive interrupt flag
    return a;         // Return the received character
}