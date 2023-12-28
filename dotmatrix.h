#ifndef __DOTMATRIX_H__
#define __DOTMATRIX_H__

#include <mcs51/8051.h>
#include "/usr/share/sdcc/include/stdint.h"
#include <at89c51ed2.h>
#include "interrupts.h"

#define MOSI P1_7
#define MOSI_LOW (MOSI = 0)
#define MOSI_HIGH (MOSI = 1)

#define SPI_SCL P1_6
#define SPI_SCL_LOW (SPI_SCL = 0)
#define SPI_SCL_HIGH (SPI_SCL = 1)

#define SS P1_1
#define SS_LOW (SS = 0)
#define SS_HIGH (SS = 1)

#define SS2 P1_0
#define SS2_LOW (SS2 = 0)
#define SS2_HIGH (SS2 = 1)


#define LATCH_LOW (P0_0 = 0)
#define LATCH_HIGH (P0_0 = 1)

#define SHIFTREG_CLOCK_LOW (P0_1 = 0)
#define SHIFTREG_CLOCK_HIGH (P0_1 = 1)

#define NO_OP_REG 0x00

#define ROW1_REGISTER 0x01
#define ROW2_REGISTER 0x02
#define ROW3_REGISTER 0x03
#define ROW4_REGISTER 0x04
#define ROW5_REGISTER 0x05
#define ROW6_REGISTER 0x06
#define ROW7_REGISTER 0x07
#define ROW8_REGISTER 0x08

#define DECODE_MODE_REG 0x09
#define DECODE_MODE_REG_NO_DECODE_VAL 0x00

#define INTENSITY_REG 0x0A
#define INTENSITY_REG_MED_INTENSITY_VAL 0x07

#define SCAN_LIMIT_REG 0x0B
#define SCAN_LIMIT_REG_ALL_SCAN_LIMIT_VAL 0x07

#define SHUTDOWN_REG 0x0C
#define SHUTDOWN_REG_NORMAL_MODE_VAL 0x01
#define SHUTDOWN_REG_SHUTDOWN_MODE_VAL 0x00

#define DISPLAY_TEST_REG 0x0F
#define DISPLAY_TEST_NORMAL_MODE_VAL 0x00
#define DISPLAY_TEST_TEST_MODE_VAL 0x01

#define MAX_ROW 8

// Player paddle definitions
#define PADDLE_LENGTH 4

typedef enum{
    PLAYER1,
    PLAYER2
}player_t;

typedef enum {
    UP,
    DOWN
}direction_t;

typedef enum{
    DISPLAY1,
    DISPLAY2
}display_t;

typedef enum{
    ONGOING,
    STOP,
    OVER
}game_state_t;

void dotmatrix_send(uint8_t address, uint8_t data, uint8_t slave, display_t display_unit);
void initialize_controller();

void move_p1controller_up();
void move_p1controller_down();

void move_p2controller_up();
void move_p2controller_down();

void move_controller_p2(direction_t direction);

void change_ball(uint8_t x, uint8_t y);
uint8_t ball_x();
uint8_t ball_y();
void increment(void);
void draw_ball();
void erase_ball();

void display_explosion(player_t player);

game_state_t getGameState();
void setGameState(game_state_t state);

void clear_display();

void display_character(uint8_t *character, uint8_t unit, display_t display);

void send_score();
uint8_t score_to_binary(uint8_t score);
void shift_data(uint8_t data);

#endif // !__DOTMATRIX_H__
