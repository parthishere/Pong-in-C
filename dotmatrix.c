#include "dotmatrix.h"
#include "/usr/share/sdcc/include/stdio.h"

#define MAX_LENGTH 8
#define PLAYER_LENGTH 4

#define THIRTY_TWO 32
#define SIXTEEN 16
#define EIGHT 8

#define PLAYER1_ROW 0b10000000
#define PLAYER1_UNIT 1

#define PLAYER2_UNIT 4
#define PLAYER2_ROW 0b00000001

#define ZERO 0b00000000

#define MAX_SCORE 4

static game_state_t game_status = OVER;

#define BUZZER_ON (P0_2 = 0)
#define BUZZER_OFF (P0_2 = 1)

game_state_t getGameState()
{
    return game_status;
}

void setGameState(game_state_t state)
{
    game_status = state;
}

uint8_t letter_G[8] = {0x78, 0x84, 0x80, 0x8E, 0x82, 0x84, 0x78, 0x00};
uint8_t letter_A[8] = {0x3C, 0x42, 0x42, 0x7E, 0x42, 0x42, 0x42, 0x00};
uint8_t letter_M[8] = {0x82, 0xC6, 0xAA, 0x92, 0x82, 0x82, 0x82, 0x00};
uint8_t letter_E[8] = {0x7E, 0x40, 0x40, 0x7C, 0x40, 0x40, 0x7E, 0x00};
uint8_t letter_O[8] = {0x3C, 0x42, 0x42, 0x42, 0x42, 0x42, 0x3C, 0x00};
uint8_t letter_V[8] = {0x82, 0x82, 0x44, 0x44, 0x28, 0x10, 0x10, 0x00};
uint8_t letter_R[8] = {0x7C, 0x42, 0x42, 0x7C, 0x48, 0x44, 0x42, 0x00};
uint8_t letter_P[8] = {0x78, 0x44, 0x44, 0x78, 0x40, 0x40, 0x40, 0x00};
uint8_t number_1[8] = {0x30, 0x70, 0x30, 0x30, 0x30, 0x78, 0x00, 0x00};
uint8_t number_2[8] = {0x78, 0x84, 0x04, 0x18, 0x60, 0x80, 0xFC, 0x00};
uint8_t letter_W[8] = {0x82, 0x82, 0x82, 0x82, 0x82, 0xAA, 0x54, 0x00};
uint8_t letter_N[8] = {0x82, 0xC2, 0xA2, 0x92, 0x8A, 0x86, 0x82, 0x00};

uint8_t explosion_small[2][8] = {
    {0x00, 0x18, 0x3C, 0x7E, 0x7E, 0x3C, 0x18, 0x00}, // Upper half
    {0x00, 0x18, 0x3C, 0x7E, 0x7E, 0x3C, 0x18, 0x00}  // Lower half
};

uint8_t explosion_large[2][8] = {
    {0x7E, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x7E}, // Upper half
    {0x7E, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x7E}  // Lower half
};

volatile uint8_t current_row_location_of_player1 = 7;
volatile uint8_t current_row_location_of_player2 = 7;

static uint8_t b_y = SIXTEEN;
static uint8_t b_x = EIGHT;

static uint8_t direction_x = 1;
static uint8_t direction_y = 1;

#define MAX_POINTS 4
uint8_t player_points[2] = {0, 0};

uint8_t get_unit(uint8_t y)
{
    return ((y - 1) >> 3) + 1;
}

display_t get_display(uint8_t x)
{
    return (x > EIGHT) ? DISPLAY2 : DISPLAY1;
}

void spi_init(void)
{
    // Mode 0,0
    SS_HIGH;
    SS2_HIGH;
    LATCH_LOW;

    SPI_SCL_LOW;
    MOSI_LOW;
}

void dotmatrix_send(uint8_t address, uint8_t data, display_t slave, uint8_t display_unit)
{
    spi_init();

    if (slave == DISPLAY1)
    {
        SS_LOW; // selecting Display1
    }
    else if (slave == DISPLAY2)
    {
        SS2_LOW; // selecting Display2
    }

    for (int j = 1; j <= 4; j++)
    {
        if (j == display_unit)
        {
            uint16_t whole_data = (uint16_t)(((uint16_t)(address << EIGHT)) | data);

            for (int i = 0; i < SIXTEEN; i++)
            {
                if (whole_data & 0x8000)
                    MOSI_HIGH;
                else
                    MOSI_LOW;

                SPI_SCL_HIGH;
                SPI_SCL_LOW;

                whole_data <<= 1; // shifting one bit
            }
        }
        else
        {

            for (int i = 0; i < SIXTEEN; i++)
            {

                MOSI_LOW;

                SPI_SCL_HIGH;
                SPI_SCL_LOW;
            }
        }
    }

    SS_HIGH;
    SS2_HIGH;
}

void move_p1controller_up()
{
    uint8_t how_much_pixel_in_d2, how_much_pixel_in_d1, start_pos_d1, temp_location_d2;

    if (current_row_location_of_player1 == 1)
        return;

    if (current_row_location_of_player1 >= 10)
    {
        temp_location_d2 = current_row_location_of_player1 % MAX_LENGTH;
        dotmatrix_send(temp_location_d2 + 3, ZERO, DISPLAY2, PLAYER1_UNIT);

        temp_location_d2--;
        (current_row_location_of_player1) = (current_row_location_of_player1)-1;

        dotmatrix_send(temp_location_d2, PLAYER1_ROW, DISPLAY2, PLAYER1_UNIT);
        return;
    }
    else if (current_row_location_of_player1 <= 9 && current_row_location_of_player1 >= 6)
    {
        how_much_pixel_in_d2 = (current_row_location_of_player1 + (PLAYER_LENGTH - 2)) - MAX_LENGTH;
        how_much_pixel_in_d1 = PLAYER_LENGTH - how_much_pixel_in_d2;

        start_pos_d1 = current_row_location_of_player1 - 1;

        dotmatrix_send(((current_row_location_of_player1 + 3) % EIGHT), ZERO, DISPLAY2, PLAYER1_UNIT);
        current_row_location_of_player1--;

        for (int i = 0; i < how_much_pixel_in_d1; i++)
        {
            dotmatrix_send(start_pos_d1 + i, PLAYER1_ROW, DISPLAY1, PLAYER1_UNIT);
        }

        for (int i = 0; i < (how_much_pixel_in_d2); i++)
        {
            dotmatrix_send(1 + i, PLAYER1_ROW, DISPLAY2, PLAYER1_UNIT);
        }
    }
    else if (current_row_location_of_player1 <= 5)
    {
        dotmatrix_send(current_row_location_of_player1 + 3, ZERO, DISPLAY1, PLAYER1_UNIT);
        (current_row_location_of_player1) = (current_row_location_of_player1)-1;
        dotmatrix_send(current_row_location_of_player1, PLAYER1_ROW, DISPLAY1, PLAYER1_UNIT);
    }
}

void move_p1controller_down()
{

    uint8_t how_much_pixel_in_d2, how_much_pixel_in_d1, start_pos_d1, start_pos_d2;

    if (current_row_location_of_player1 >= 5)
    {
        if (current_row_location_of_player1 == 13)
            return;

        how_much_pixel_in_d2 = (current_row_location_of_player1 < 9) ? (current_row_location_of_player1 + (PLAYER_LENGTH)) - MAX_LENGTH : PLAYER_LENGTH;

        how_much_pixel_in_d1 = PLAYER_LENGTH - how_much_pixel_in_d2;

        start_pos_d1 = (current_row_location_of_player1 <= EIGHT) ? current_row_location_of_player1 : EIGHT;
        start_pos_d2 = (current_row_location_of_player1 > EIGHT) ? (current_row_location_of_player1 - MAX_LENGTH) : 1;

        if (current_row_location_of_player1 <= EIGHT)
        {
            dotmatrix_send(start_pos_d1, ZERO, DISPLAY1, PLAYER1_UNIT);
            start_pos_d1++;
        }
        else
        {
            dotmatrix_send(start_pos_d2, ZERO, DISPLAY2, PLAYER1_UNIT);
            start_pos_d2++;
        }

        current_row_location_of_player1 = current_row_location_of_player1 + 1;

        for (int i = 0; i < how_much_pixel_in_d1; i++)
        {
            dotmatrix_send(start_pos_d1 + i, PLAYER1_ROW, DISPLAY1, PLAYER1_UNIT);
        }

        for (int i = 0; i < how_much_pixel_in_d2; i++)
        {
            dotmatrix_send(start_pos_d2 + i, PLAYER1_ROW, DISPLAY2, PLAYER1_UNIT);
        }
    }
    else
    {
        if (current_row_location_of_player1 == 5)
            return;
        dotmatrix_send(current_row_location_of_player1, ZERO, DISPLAY1, PLAYER1_UNIT);
        (current_row_location_of_player1) = (current_row_location_of_player1) + 1;
        dotmatrix_send(current_row_location_of_player1 + 3, PLAYER1_ROW, DISPLAY1, PLAYER1_UNIT);
    }
}

void move_p2controller_down()
{
    uint8_t how_much_pixel_in_d2, how_much_pixel_in_d1, start_pos_d1, start_pos_d2;

    if (current_row_location_of_player2 >= 5)
    {
        if (current_row_location_of_player2 == 13)
            return;

        how_much_pixel_in_d2 = (current_row_location_of_player2 < 9) ? (current_row_location_of_player2 + (PLAYER_LENGTH)) - MAX_LENGTH : PLAYER_LENGTH;

        how_much_pixel_in_d1 = PLAYER_LENGTH - how_much_pixel_in_d2;

        start_pos_d1 = (current_row_location_of_player2 <= EIGHT) ? current_row_location_of_player2 : EIGHT;
        start_pos_d2 = (current_row_location_of_player2 > EIGHT) ? (current_row_location_of_player2 - MAX_LENGTH) : 1;

        if (current_row_location_of_player2 <= EIGHT)
        {
            dotmatrix_send(start_pos_d1, ZERO, DISPLAY1, PLAYER2_UNIT);
            start_pos_d1++;
        }
        else
        {
            dotmatrix_send(start_pos_d2, ZERO, DISPLAY2, PLAYER2_UNIT);
            start_pos_d2++;
        }

        current_row_location_of_player2 = current_row_location_of_player2 + 1;

        for (int i = 0; i < how_much_pixel_in_d1; i++)
        {
            dotmatrix_send(start_pos_d1 + i, PLAYER2_ROW, DISPLAY1, PLAYER2_UNIT);
        }

        for (int i = 0; i < how_much_pixel_in_d2; i++)
        {
            dotmatrix_send(start_pos_d2 + i, PLAYER2_ROW, DISPLAY2, PLAYER2_UNIT);
        }
    }
    else
    {
        if (current_row_location_of_player2 == 5)
            return;
        dotmatrix_send(current_row_location_of_player2, ZERO, DISPLAY1, PLAYER2_UNIT);
        (current_row_location_of_player2) = (current_row_location_of_player2) + 1;
        dotmatrix_send(current_row_location_of_player2 + 3, PLAYER2_ROW, DISPLAY1, PLAYER2_UNIT);
    }
}

void move_p2controller_up()
{
    uint8_t how_much_pixel_in_d2, how_much_pixel_in_d1, start_pos_d1, temp_location_d2;

    if (current_row_location_of_player2 == 1)
        return;

    if (current_row_location_of_player2 >= 10)
    {
        temp_location_d2 = current_row_location_of_player2 % MAX_LENGTH;
        dotmatrix_send(temp_location_d2 + 3, ZERO, DISPLAY2, PLAYER2_UNIT);

        temp_location_d2--;
        (current_row_location_of_player2) = (current_row_location_of_player2)-1;

        dotmatrix_send(temp_location_d2, PLAYER2_ROW, DISPLAY2, PLAYER2_UNIT);
        return;
    }
    else if (current_row_location_of_player2 <= 9 && current_row_location_of_player2 >= 6)
    {
        how_much_pixel_in_d2 = (current_row_location_of_player2 + (PLAYER_LENGTH - 2)) - MAX_LENGTH;
        how_much_pixel_in_d1 = PLAYER_LENGTH - how_much_pixel_in_d2;

        start_pos_d1 = current_row_location_of_player2 - 1;

        dotmatrix_send(((current_row_location_of_player2 + 3) % EIGHT), ZERO, DISPLAY2, PLAYER2_UNIT);
        current_row_location_of_player2--;

        for (int i = 0; i < how_much_pixel_in_d1; i++)
        {
            dotmatrix_send(start_pos_d1 + i, PLAYER2_ROW, DISPLAY1, PLAYER2_UNIT);
        }

        for (int i = 0; i < (how_much_pixel_in_d2); i++)
        {
            dotmatrix_send(1 + i, PLAYER2_ROW, DISPLAY2, PLAYER2_UNIT);
        }
    }
    else if (current_row_location_of_player2 <= 5)
    {
        dotmatrix_send(current_row_location_of_player2 + 3, ZERO, DISPLAY1, PLAYER2_UNIT);
        (current_row_location_of_player2) = (current_row_location_of_player2)-1;
        dotmatrix_send(current_row_location_of_player2, PLAYER2_ROW, DISPLAY1, PLAYER2_UNIT);
    }
}

void initialize_controller()
{
    // send_score();

    current_row_location_of_player1 = 7;
    current_row_location_of_player2 = 7;

    b_y = SIXTEEN;
    b_x = EIGHT;

    direction_x = 1;
    direction_y = 1;

    dotmatrix_send(DISPLAY_TEST_REG, DISPLAY_TEST_NORMAL_MODE_VAL, DISPLAY1, PLAYER1_UNIT);
    dotmatrix_send(DISPLAY_TEST_REG, DISPLAY_TEST_NORMAL_MODE_VAL, DISPLAY1, 2);
    dotmatrix_send(DISPLAY_TEST_REG, DISPLAY_TEST_NORMAL_MODE_VAL, DISPLAY1, 3);
    dotmatrix_send(DISPLAY_TEST_REG, DISPLAY_TEST_NORMAL_MODE_VAL, DISPLAY1, PLAYER2_UNIT);

    dotmatrix_send(DISPLAY_TEST_REG, DISPLAY_TEST_NORMAL_MODE_VAL, DISPLAY2, PLAYER1_UNIT);
    dotmatrix_send(DISPLAY_TEST_REG, DISPLAY_TEST_NORMAL_MODE_VAL, DISPLAY2, 2);
    dotmatrix_send(DISPLAY_TEST_REG, DISPLAY_TEST_NORMAL_MODE_VAL, DISPLAY2, 3);
    dotmatrix_send(DISPLAY_TEST_REG, DISPLAY_TEST_NORMAL_MODE_VAL, DISPLAY2, PLAYER2_UNIT);

    dotmatrix_send(DECODE_MODE_REG, DECODE_MODE_REG_NO_DECODE_VAL, DISPLAY1, PLAYER1_UNIT);
    dotmatrix_send(DECODE_MODE_REG, DECODE_MODE_REG_NO_DECODE_VAL, DISPLAY1, 2);
    dotmatrix_send(DECODE_MODE_REG, DECODE_MODE_REG_NO_DECODE_VAL, DISPLAY1, 3);
    dotmatrix_send(DECODE_MODE_REG, DECODE_MODE_REG_NO_DECODE_VAL, DISPLAY1, PLAYER2_UNIT);

    dotmatrix_send(DECODE_MODE_REG, DECODE_MODE_REG_NO_DECODE_VAL, DISPLAY2, PLAYER1_UNIT);
    dotmatrix_send(DECODE_MODE_REG, DECODE_MODE_REG_NO_DECODE_VAL, DISPLAY2, 2);
    dotmatrix_send(DECODE_MODE_REG, DECODE_MODE_REG_NO_DECODE_VAL, DISPLAY2, 3);
    dotmatrix_send(DECODE_MODE_REG, DECODE_MODE_REG_NO_DECODE_VAL, DISPLAY2, PLAYER2_UNIT);

    dotmatrix_send(INTENSITY_REG, INTENSITY_REG_MED_INTENSITY_VAL, DISPLAY1, PLAYER1_UNIT);
    dotmatrix_send(INTENSITY_REG, INTENSITY_REG_MED_INTENSITY_VAL, DISPLAY1, 2);
    dotmatrix_send(INTENSITY_REG, INTENSITY_REG_MED_INTENSITY_VAL, DISPLAY1, 3);
    dotmatrix_send(INTENSITY_REG, INTENSITY_REG_MED_INTENSITY_VAL, DISPLAY1, PLAYER2_UNIT);

    dotmatrix_send(INTENSITY_REG, INTENSITY_REG_MED_INTENSITY_VAL, DISPLAY2, PLAYER1_UNIT);
    dotmatrix_send(INTENSITY_REG, INTENSITY_REG_MED_INTENSITY_VAL, DISPLAY2, 2);
    dotmatrix_send(INTENSITY_REG, INTENSITY_REG_MED_INTENSITY_VAL, DISPLAY2, 3);
    dotmatrix_send(INTENSITY_REG, INTENSITY_REG_MED_INTENSITY_VAL, DISPLAY2, PLAYER2_UNIT);

    dotmatrix_send(SCAN_LIMIT_REG, SCAN_LIMIT_REG_ALL_SCAN_LIMIT_VAL, DISPLAY1, PLAYER1_UNIT);
    dotmatrix_send(SCAN_LIMIT_REG, SCAN_LIMIT_REG_ALL_SCAN_LIMIT_VAL, DISPLAY1, 2);
    dotmatrix_send(SCAN_LIMIT_REG, SCAN_LIMIT_REG_ALL_SCAN_LIMIT_VAL, DISPLAY1, 3);
    dotmatrix_send(SCAN_LIMIT_REG, SCAN_LIMIT_REG_ALL_SCAN_LIMIT_VAL, DISPLAY1, PLAYER2_UNIT);

    dotmatrix_send(SCAN_LIMIT_REG, SCAN_LIMIT_REG_ALL_SCAN_LIMIT_VAL, DISPLAY2, PLAYER1_UNIT);
    dotmatrix_send(SCAN_LIMIT_REG, SCAN_LIMIT_REG_ALL_SCAN_LIMIT_VAL, DISPLAY2, 2);
    dotmatrix_send(SCAN_LIMIT_REG, SCAN_LIMIT_REG_ALL_SCAN_LIMIT_VAL, DISPLAY2, 3);
    dotmatrix_send(SCAN_LIMIT_REG, SCAN_LIMIT_REG_ALL_SCAN_LIMIT_VAL, DISPLAY2, PLAYER2_UNIT);

    dotmatrix_send(SHUTDOWN_REG, SHUTDOWN_REG_NORMAL_MODE_VAL, DISPLAY1, PLAYER1_UNIT); // turn on chip
    dotmatrix_send(SHUTDOWN_REG, SHUTDOWN_REG_NORMAL_MODE_VAL, DISPLAY1, 2);            // turn on chip
    dotmatrix_send(SHUTDOWN_REG, SHUTDOWN_REG_NORMAL_MODE_VAL, DISPLAY1, 3);            // turn on chip
    dotmatrix_send(SHUTDOWN_REG, SHUTDOWN_REG_NORMAL_MODE_VAL, DISPLAY1, PLAYER2_UNIT); // turn on chip

    dotmatrix_send(SHUTDOWN_REG, SHUTDOWN_REG_NORMAL_MODE_VAL, DISPLAY2, PLAYER1_UNIT); // turn on chip
    dotmatrix_send(SHUTDOWN_REG, SHUTDOWN_REG_NORMAL_MODE_VAL, DISPLAY2, 2);            // turn on chip
    dotmatrix_send(SHUTDOWN_REG, SHUTDOWN_REG_NORMAL_MODE_VAL, DISPLAY2, 3);            // turn on chip
    dotmatrix_send(SHUTDOWN_REG, SHUTDOWN_REG_NORMAL_MODE_VAL, DISPLAY2, PLAYER2_UNIT); // turn on chip

    for (int unit = 1; unit <= 4; unit++)
    {
        for (int row = 1; row <= EIGHT; row++)
        {
            dotmatrix_send(row, ZERO, DISPLAY1, unit);
        }
    }

    for (int unit = 1; unit <= 4; unit++)
    {
        for (int row = 1; row <= EIGHT; row++)
        {
            dotmatrix_send(row, ZERO, DISPLAY2, unit);
        }
    }

    
    dotmatrix_send(current_row_location_of_player1, PLAYER1_ROW, DISPLAY1, PLAYER1_UNIT);
    dotmatrix_send(current_row_location_of_player1 + 1, PLAYER1_ROW, DISPLAY1, PLAYER1_UNIT);
    dotmatrix_send(1, PLAYER1_ROW, DISPLAY2, PLAYER1_UNIT);
    dotmatrix_send(2, PLAYER1_ROW, DISPLAY2, PLAYER1_UNIT);

    dotmatrix_send(current_row_location_of_player2, PLAYER2_ROW, DISPLAY1, PLAYER2_UNIT);
    dotmatrix_send(current_row_location_of_player2+1, PLAYER2_ROW, DISPLAY1, PLAYER2_UNIT);
    dotmatrix_send(1, PLAYER2_ROW, DISPLAY2, PLAYER2_UNIT);
    dotmatrix_send(2, PLAYER2_ROW, DISPLAY2, PLAYER2_UNIT);

    BUZZER_OFF;

}

#pragma less_pedantic
void erase_ball()
{
    display_t display = get_display(b_x);
    uint8_t unit = get_unit(b_y);
    uint8_t ball_x_range = 0;
    uint8_t ball_y_range = 0;
    uint8_t ball_y_bitwise = 0;

    ball_x_range = (b_x & 0x07) ? (b_x & 0x07) : EIGHT;

    ball_y_range = (b_y & 0x07) ? (EIGHT - ((b_y) & 0x07)) : 0;
    ball_y_bitwise = 0 << ball_y_range;

    // Combine conditions for player 1 and player 2 to reduce redundancy
    uint8_t isBallNearPlayer1 = (((current_row_location_of_player1 <= b_x) && ((current_row_location_of_player1 + 3) >= b_x)) && (unit == 1));
    uint8_t isBallNearPlayer2 = (((current_row_location_of_player2 <= b_x) && ((current_row_location_of_player2 + 3) >= b_x)) && (unit == 4));

    uint8_t data_to_send = ball_y_bitwise;
    if (isBallNearPlayer1)
    {
        data_to_send |= 0b10000000;
    }
    else if (isBallNearPlayer2)
    {
        data_to_send |= 0b00000001;
    }
    dotmatrix_send(ball_x_range, data_to_send, display, unit);

    return;
}

#pragma less_pedantic
void draw_ball()
{
    increment();
    display_t display = get_display(b_x);
    uint8_t unit = get_unit(b_y);
    uint8_t ball_x_range = 0;
    uint8_t ball_y_range = 0;
    uint8_t ball_y_bitwise = 0;

    ball_x_range = (b_x & 0x07) ? (b_x & 0x07) : EIGHT;

    ball_y_range = (b_y & 0x07) ? (EIGHT - ((b_y) & 0x07)) : 0;
    ball_y_bitwise = 1 << ball_y_range;

    // Combine conditions for player 1 and player 2 to reduce redundancy
    uint8_t isBallNearPlayer1 = (((current_row_location_of_player1 <= b_x) && ((current_row_location_of_player1 + 3) >= b_x)) && (unit == 1));
    uint8_t isBallNearPlayer2 = (((current_row_location_of_player2 <= b_x) && ((current_row_location_of_player2 + 3) >= b_x)) && (unit == 4));

    uint8_t data_to_send = ball_y_bitwise;
    if (isBallNearPlayer1)
    {
        data_to_send |= 0b10000000;
    }
    else if (isBallNearPlayer2)
    {
        data_to_send |= 0b00000001;
    }
    dotmatrix_send(ball_x_range, data_to_send, display, unit);

    return;
}

uint8_t ball_y(void)
{
    return (b_y);
}

uint8_t ball_x(void)
{
    return (b_x);
}

void change_ball(uint8_t x, uint8_t y)
{
    if (x > THIRTY_TWO || y > EIGHT)
        return;
    b_y = x;
    b_x = y;
}

void increment(void)
{
    if (b_y == THIRTY_TWO && direction_y == 1)
    {
        direction_y = 0;
        uint8_t isBallNearPlayer2 = (((current_row_location_of_player2 <= b_x) && ((current_row_location_of_player2 + 3) >= b_x)));
        if (!isBallNearPlayer2)
        {
            if(player_points[PLAYER1] == MAX_SCORE){
                setGameState(OVER);
                clear_display();
                display_explosion(PLAYER1);
                player_points[0] = 0;
                player_points[1] = 0;
                return;
            }
            BUZZER_ON;
            player_points[PLAYER1] += 1;
            setGameState(STOP);
            clear_display();
            for(int i=0; i<=10;i++);
            initialize_controller();
        }
    }
    else if (b_y == 1 && direction_y == 0)
    {
        direction_y = 1;

        uint8_t isBallNearPlayer1 = (((current_row_location_of_player1 <= b_x) && ((current_row_location_of_player1 + 3) >= b_x)));
        if (!isBallNearPlayer1)
        {
            if(player_points[PLAYER2] == MAX_SCORE){
                clear_display();
                display_explosion(PLAYER2);
                setGameState(OVER);
                player_points[0] = 0;
                player_points[1] = 0;
                return;
            }
            BUZZER_ON;
            player_points[PLAYER2] += 1;
            setGameState(STOP);
            clear_display();
            for(int i=0; i<=10;i++);
            initialize_controller();
        }
    }

    if (direction_y == 1)
        b_y++;
    else
        b_y--;

    if (b_x == SIXTEEN && direction_x == 1)
        direction_x = 0;
    else if (b_x == 1 && direction_x == 0)
        direction_x = 1;

    if (direction_x == 1)
        b_x++;
    else
        b_x--;
}

void display_explosion_pattern(uint8_t pattern[2][8])
{
    for (int unit = 1; unit <= 4; unit++)
    {
        for (int row = 0; row < 8; row++)
        {
            dotmatrix_send(row + 1, pattern[0][row], DISPLAY1, unit);
            dotmatrix_send(row + 1, pattern[1][row], DISPLAY2, unit);
        }
    }
}

void display_character(uint8_t *character, uint8_t unit, display_t display)
{
    for (int i = 0; i < 8; i++)
    {
        dotmatrix_send(i + 1, character[i], display, unit);
    }
}

void clear_display(){
    for (int unit = 1; unit <= 4; unit++)
    {
        for (int row = 1; row <= EIGHT; row++)
        {
            dotmatrix_send(row, ZERO, DISPLAY1, unit);
        }
    }

    for (int unit = 1; unit <= 4; unit++)
    {
        for (int row = 1; row <= EIGHT; row++)
        {
            dotmatrix_send(row, ZERO, DISPLAY2, unit);
        }
    }
}

#pragma less_pedantic
void display_explosion(player_t player)
{
    uint8_t i = 0, j= 0;

    uint8_t *player_array = (player == PLAYER1) ? number_1 : number_2;

    for(int explosion=0; explosion<4; explosion++){
        BUZZER_ON;

        display_explosion_pattern(explosion_small);
        for(i=0; i<200; i++){
            for(j=0;j<20;j++);
        }
        display_explosion_pattern(explosion_large);
        for(i=0; i<200; i++){
            for(j=0;j<20;j++);
        }

        BUZZER_OFF;
    }


    display_character(letter_G, 1, DISPLAY1);
    display_character(letter_A, 2, DISPLAY1);
    display_character(letter_M, 3, DISPLAY1);
    display_character(letter_E, 4, DISPLAY1);

    display_character(letter_O, 1, DISPLAY2);
    display_character(letter_V, 2, DISPLAY2);
    display_character(letter_E, 3, DISPLAY2);
    display_character(letter_R, 4, DISPLAY2);

    for (uint16_t j=0; j<= 25000; j++);
    clear_display();
    display_character(letter_P, 2, DISPLAY1);
    display_character(player_array, 3, DISPLAY1);

    display_character(letter_W, 1, DISPLAY2);
    display_character(letter_O, 2, DISPLAY2);
    display_character(letter_N, 3, DISPLAY2);


}

uint8_t score_to_binary(uint8_t score) {
    uint8_t binary_representation = 0;

    for (int i = 0; i < score; i++) {
        binary_representation |= (1 << i);
    }

    return binary_representation;
}

void send_score(){
    uint8_t p_player1 = score_to_binary(player_points[PLAYER1]);
    uint8_t p_player2 = score_to_binary(player_points[PLAYER2]);

    uint8_t data = (uint8_t)((p_player2 << 4) | p_player1);
    shift_data((p_player2 << 4 | p_player1));
}


void shift_data(uint8_t data){
    SS_HIGH;
    SS2_HIGH;
    LATCH_LOW;

    SHIFTREG_CLOCK_LOW;
    MOSI_LOW;

    uint8_t whole_data = data;

    for (int i = 0; i < EIGHT; i++)
    {
        if (whole_data & 0x80)
            MOSI_HIGH;
        else
            MOSI_LOW;

        SHIFTREG_CLOCK_HIGH;
        SHIFTREG_CLOCK_LOW;

        whole_data <<= 1; // shifting one bit
    }
    LATCH_LOW;
    LATCH_HIGH;
    SS_HIGH;
    SS2_HIGH;
    LATCH_LOW;
}
