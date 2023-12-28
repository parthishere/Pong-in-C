/*
 */
// Jay jalaram

#include <mcs51/8051.h>
#include "/usr/share/sdcc/include/stdio.h"
#include "/usr/share/sdcc/include/stdint.h"
#include <at89c51ed2.h>
#include "uart.h"
#include "i2c.h"
#include "expander.h"
#include "dotmatrix.h"
#include "interrupts.h"

#define W_KEY 0xEF
#define S_KEY 0xEB
volatile uint8_t count = 0;
volatile uint8_t w_pressed = 0;
volatile uint8_t s_pressed = 0;
volatile uint8_t up_pressed = 0;
volatile uint8_t down_pressed = 0;

#define UP_KEY 0xF7
#define DOWN_KEY 0xF3

#define R_KEY 0x2E
#define ENTER_KEY 0xE9
#define ESC_KEY 0xF5

volatile uint8_t timeroverflow = 0;

volatile uint8_t add_to_timer = 0;

void Timer0_ISR() __interrupt (1)	/* Timer0 interrupt service routine (ISR) */
{



    if(getGameState() == ONGOING){
        timeroverflow++;

        erase_ball();
        draw_ball();

        if(timeroverflow == 5){
            if((add_to_timer+0x2C) < 0xFF){
                add_to_timer++;
            }
            timeroverflow = 0;
        }
    }

    enable_irq();

    TH0 = (0x2C+add_to_timer);   // Reset Timer0 high byte for the next timeout
    TL0 = 0x00;                 // Reset Timer0 low byte for the next timeout
    TR0 = 1;                    // Start Timer0


}

void EXT0_IRQHandler(void) __interrupt(0){
    uint8_t data = read_expander();
    count++;
    if (2 >= count){
        count = 0;
        if(getGameState() == ONGOING){
            if (data == W_KEY){
                move_p1controller_up();
                w_pressed = 1;
            }
            else if(data == S_KEY){
                move_p1controller_down();
                s_pressed = 1;
            }
            else if (data == UP_KEY){
                move_p2controller_up();
                up_pressed = 1;

            }
            else if(data == DOWN_KEY){
                move_p2controller_down();
                down_pressed = 1;
            }
        }
        if(data == ENTER_KEY){
            if(getGameState() == STOP) setGameState(ONGOING);
            add_to_timer = 0;
        }
        else if(data == ESC_KEY){
            clear_display();
            initialize_controller();
            if(getGameState() == OVER) setGameState(STOP);
            add_to_timer = 0;
        }

    }
    printf("current state: %d \n\r", getGameState());

}

void main(void)
{
    // Enter X2 mode
    //CKCON0 |= 1;

    init_uart();
    init_ext_interrupt();
    initialize_controller();
    timer_init();

    printf("code is starting !");


    while(1){
        send_score();


    }



}
