;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module dotmatrix
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _display_explosion_pattern
	.globl _spi_init
	.globl _get_display
	.globl _get_unit
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _P5_7
	.globl _P5_6
	.globl _P5_5
	.globl _P5_4
	.globl _P5_3
	.globl _P5_2
	.globl _P5_1
	.globl _P5_0
	.globl _P4_7
	.globl _P4_6
	.globl _P4_5
	.globl _P4_4
	.globl _P4_3
	.globl _P4_2
	.globl _P4_1
	.globl _P4_0
	.globl _PX0L
	.globl _PT0L
	.globl _PX1L
	.globl _PT1L
	.globl _PSL
	.globl _PT2L
	.globl _PPCL
	.globl _EC
	.globl _CCF0
	.globl _CCF1
	.globl _CCF2
	.globl _CCF3
	.globl _CCF4
	.globl _CR
	.globl _CF
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _EECON
	.globl _KBF
	.globl _KBE
	.globl _KBLS
	.globl _BRL
	.globl _BDRCON
	.globl _T2MOD
	.globl _SPDAT
	.globl _SPSTA
	.globl _SPCON
	.globl _SADEN
	.globl _SADDR
	.globl _WDTPRG
	.globl _WDTRST
	.globl _P5
	.globl _P4
	.globl _IPH1
	.globl _IPL1
	.globl _IPH0
	.globl _IPL0
	.globl _IEN1
	.globl _IEN0
	.globl _CMOD
	.globl _CL
	.globl _CH
	.globl _CCON
	.globl _CCAPM4
	.globl _CCAPM3
	.globl _CCAPM2
	.globl _CCAPM1
	.globl _CCAPM0
	.globl _CCAP4L
	.globl _CCAP3L
	.globl _CCAP2L
	.globl _CCAP1L
	.globl _CCAP0L
	.globl _CCAP4H
	.globl _CCAP3H
	.globl _CCAP2H
	.globl _CCAP1H
	.globl _CCAP0H
	.globl _CKCON1
	.globl _CKCON0
	.globl _CKRL
	.globl _AUXR1
	.globl _AUXR
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _player_points
	.globl _current_row_location_of_player2
	.globl _current_row_location_of_player1
	.globl _explosion_large
	.globl _explosion_small
	.globl _letter_N
	.globl _letter_W
	.globl _number_2
	.globl _number_1
	.globl _letter_P
	.globl _letter_R
	.globl _letter_V
	.globl _letter_O
	.globl _letter_E
	.globl _letter_M
	.globl _letter_A
	.globl _letter_G
	.globl _display_character_PARM_3
	.globl _display_character_PARM_2
	.globl _change_ball_PARM_2
	.globl _dotmatrix_send_PARM_4
	.globl _dotmatrix_send_PARM_3
	.globl _dotmatrix_send_PARM_2
	.globl _getGameState
	.globl _setGameState
	.globl _dotmatrix_send
	.globl _move_p1controller_up
	.globl _move_p1controller_down
	.globl _move_p2controller_down
	.globl _move_p2controller_up
	.globl _initialize_controller
	.globl _erase_ball
	.globl _draw_ball
	.globl _ball_y
	.globl _ball_x
	.globl _change_ball
	.globl _increment
	.globl _display_character
	.globl _clear_display
	.globl _display_explosion
	.globl _score_to_binary
	.globl _send_score
	.globl _shift_data
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_AUXR	=	0x008e
_AUXR1	=	0x00a2
_CKRL	=	0x0097
_CKCON0	=	0x008f
_CKCON1	=	0x00af
_CCAP0H	=	0x00fa
_CCAP1H	=	0x00fb
_CCAP2H	=	0x00fc
_CCAP3H	=	0x00fd
_CCAP4H	=	0x00fe
_CCAP0L	=	0x00ea
_CCAP1L	=	0x00eb
_CCAP2L	=	0x00ec
_CCAP3L	=	0x00ed
_CCAP4L	=	0x00ee
_CCAPM0	=	0x00da
_CCAPM1	=	0x00db
_CCAPM2	=	0x00dc
_CCAPM3	=	0x00dd
_CCAPM4	=	0x00de
_CCON	=	0x00d8
_CH	=	0x00f9
_CL	=	0x00e9
_CMOD	=	0x00d9
_IEN0	=	0x00a8
_IEN1	=	0x00b1
_IPL0	=	0x00b8
_IPH0	=	0x00b7
_IPL1	=	0x00b2
_IPH1	=	0x00b3
_P4	=	0x00c0
_P5	=	0x00e8
_WDTRST	=	0x00a6
_WDTPRG	=	0x00a7
_SADDR	=	0x00a9
_SADEN	=	0x00b9
_SPCON	=	0x00c3
_SPSTA	=	0x00c4
_SPDAT	=	0x00c5
_T2MOD	=	0x00c9
_BDRCON	=	0x009b
_BRL	=	0x009a
_KBLS	=	0x009c
_KBE	=	0x009d
_KBF	=	0x009e
_EECON	=	0x00d2
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_CF	=	0x00df
_CR	=	0x00de
_CCF4	=	0x00dc
_CCF3	=	0x00db
_CCF2	=	0x00da
_CCF1	=	0x00d9
_CCF0	=	0x00d8
_EC	=	0x00ae
_PPCL	=	0x00be
_PT2L	=	0x00bd
_PSL	=	0x00bc
_PT1L	=	0x00bb
_PX1L	=	0x00ba
_PT0L	=	0x00b9
_PX0L	=	0x00b8
_P4_0	=	0x00c0
_P4_1	=	0x00c1
_P4_2	=	0x00c2
_P4_3	=	0x00c3
_P4_4	=	0x00c4
_P4_5	=	0x00c5
_P4_6	=	0x00c6
_P4_7	=	0x00c7
_P5_0	=	0x00e8
_P5_1	=	0x00e9
_P5_2	=	0x00ea
_P5_3	=	0x00eb
_P5_4	=	0x00ec
_P5_5	=	0x00ed
_P5_6	=	0x00ee
_P5_7	=	0x00ef
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_dotmatrix_send_sloc0_1_0:
	.ds 2
_display_explosion_pattern_sloc0_1_0:
	.ds 2
_display_explosion_pattern_sloc1_1_0:
	.ds 2
_display_explosion_pattern_sloc2_1_0:
	.ds 3
_display_character_sloc0_1_0:
	.ds 1
_display_character_sloc1_1_0:
	.ds 1
_display_character_sloc2_1_0:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_setGameState_state_65536_25:
	.ds 1
_get_unit_y_65536_27:
	.ds 1
_get_display_x_65536_29:
	.ds 1
_dotmatrix_send_PARM_2:
	.ds 1
_dotmatrix_send_PARM_3:
	.ds 1
_dotmatrix_send_PARM_4:
	.ds 1
_dotmatrix_send_address_65536_33:
	.ds 1
_dotmatrix_send_whole_data_262144_39:
	.ds 2
_move_p1controller_down_start_pos_d1_65536_53:
	.ds 1
_move_p1controller_down_start_pos_d2_65536_53:
	.ds 1
_move_p2controller_down_start_pos_d1_65536_62:
	.ds 1
_move_p2controller_down_start_pos_d2_65536_62:
	.ds 1
_erase_ball_data_to_send_65537_89:
	.ds 1
_draw_ball_data_to_send_65538_94:
	.ds 1
_change_ball_PARM_2:
	.ds 1
_change_ball_x_65536_101:
	.ds 1
_display_explosion_pattern_pattern_65536_115:
	.ds 3
_display_character_PARM_2:
	.ds 1
_display_character_PARM_3:
	.ds 1
_display_character_character_65536_121:
	.ds 3
_display_explosion_player_65536_134:
	.ds 1
_score_to_binary_score_65536_145:
	.ds 1
_score_to_binary_binary_representation_65536_146:
	.ds 1
_shift_data_data_65536_150:
	.ds 1
_shift_data_whole_data_65537_152:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_game_status:
	.ds 1
_letter_G::
	.ds 8
_letter_A::
	.ds 8
_letter_M::
	.ds 8
_letter_E::
	.ds 8
_letter_O::
	.ds 8
_letter_V::
	.ds 8
_letter_R::
	.ds 8
_letter_P::
	.ds 8
_number_1::
	.ds 8
_number_2::
	.ds 8
_letter_W::
	.ds 8
_letter_N::
	.ds 8
_explosion_small::
	.ds 16
_explosion_large::
	.ds 16
_current_row_location_of_player1::
	.ds 1
_current_row_location_of_player2::
	.ds 1
_b_y:
	.ds 1
_b_x:
	.ds 1
_direction_x:
	.ds 1
_direction_y:
	.ds 1
_player_points::
	.ds 2
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'getGameState'
;------------------------------------------------------------
;	dotmatrix.c:26: game_state_t getGameState()
;	-----------------------------------------
;	 function getGameState
;	-----------------------------------------
_getGameState:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	dotmatrix.c:28: return game_status;
	mov	dptr,#_game_status
	movx	a,@dptr
;	dotmatrix.c:29: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setGameState'
;------------------------------------------------------------
;state                     Allocated with name '_setGameState_state_65536_25'
;------------------------------------------------------------
;	dotmatrix.c:31: void setGameState(game_state_t state)
;	-----------------------------------------
;	 function setGameState
;	-----------------------------------------
_setGameState:
	mov	a,dpl
	mov	dptr,#_setGameState_state_65536_25
	movx	@dptr,a
;	dotmatrix.c:33: game_status = state;
	movx	a,@dptr
	mov	dptr,#_game_status
	movx	@dptr,a
;	dotmatrix.c:34: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_unit'
;------------------------------------------------------------
;y                         Allocated with name '_get_unit_y_65536_27'
;------------------------------------------------------------
;	dotmatrix.c:71: uint8_t get_unit(uint8_t y)
;	-----------------------------------------
;	 function get_unit
;	-----------------------------------------
_get_unit:
	mov	a,dpl
	mov	dptr,#_get_unit_y_65536_27
	movx	@dptr,a
;	dotmatrix.c:73: return ((y - 1) >> 3) + 1;
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	dec	r7
	cjne	r7,#0xff,00103$
	dec	r6
00103$:
	mov	a,r6
	swap	a
	rl	a
	xch	a,r7
	swap	a
	rl	a
	anl	a,#0x1f
	xrl	a,r7
	xch	a,r7
	anl	a,#0x1f
	xch	a,r7
	xrl	a,r7
	xch	a,r7
	jnb	acc.4,00104$
	orl	a,#0xe0
00104$:
	inc	r7
	mov	dpl,r7
;	dotmatrix.c:74: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_display'
;------------------------------------------------------------
;x                         Allocated with name '_get_display_x_65536_29'
;------------------------------------------------------------
;	dotmatrix.c:76: display_t get_display(uint8_t x)
;	-----------------------------------------
;	 function get_display
;	-----------------------------------------
_get_display:
	mov	a,dpl
	mov	dptr,#_get_display_x_65536_29
	movx	@dptr,a
;	dotmatrix.c:78: return (x > EIGHT) ? DISPLAY2 : DISPLAY1;
	movx	a,@dptr
	add	a,#0xff - 0x08
	jnc	00103$
	mov	r6,#0x01
	mov	r7,#0x00
	sjmp	00104$
00103$:
	mov	r6,#0x00
	mov	r7,#0x00
00104$:
	mov	dpl,r6
;	dotmatrix.c:79: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_init'
;------------------------------------------------------------
;	dotmatrix.c:81: void spi_init(void)
;	-----------------------------------------
;	 function spi_init
;	-----------------------------------------
_spi_init:
;	dotmatrix.c:84: SS_HIGH;
;	assignBit
	setb	_P1_1
;	dotmatrix.c:85: SS2_HIGH;
;	assignBit
	setb	_P1_0
;	dotmatrix.c:86: LATCH_LOW;
;	assignBit
	clr	_P0_0
;	dotmatrix.c:88: SPI_SCL_LOW;
;	assignBit
	clr	_P1_6
;	dotmatrix.c:89: MOSI_LOW;
;	assignBit
	clr	_P1_7
;	dotmatrix.c:90: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dotmatrix_send'
;------------------------------------------------------------
;sloc0                     Allocated with name '_dotmatrix_send_sloc0_1_0'
;data                      Allocated with name '_dotmatrix_send_PARM_2'
;slave                     Allocated with name '_dotmatrix_send_PARM_3'
;display_unit              Allocated with name '_dotmatrix_send_PARM_4'
;address                   Allocated with name '_dotmatrix_send_address_65536_33'
;j                         Allocated with name '_dotmatrix_send_j_131072_37'
;whole_data                Allocated with name '_dotmatrix_send_whole_data_262144_39'
;i                         Allocated with name '_dotmatrix_send_i_327680_40'
;i                         Allocated with name '_dotmatrix_send_i_327680_43'
;------------------------------------------------------------
;	dotmatrix.c:92: void dotmatrix_send(uint8_t address, uint8_t data, display_t slave, uint8_t display_unit)
;	-----------------------------------------
;	 function dotmatrix_send
;	-----------------------------------------
_dotmatrix_send:
	mov	a,dpl
	mov	dptr,#_dotmatrix_send_address_65536_33
	movx	@dptr,a
;	dotmatrix.c:94: spi_init();
	lcall	_spi_init
;	dotmatrix.c:96: if (slave == DISPLAY1)
	mov	dptr,#_dotmatrix_send_PARM_3
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jnz	00104$
;	dotmatrix.c:98: SS_LOW; // selecting Display1
;	assignBit
	clr	_P1_1
	sjmp	00135$
00104$:
;	dotmatrix.c:100: else if (slave == DISPLAY2)
	cjne	r7,#0x01,00135$
;	dotmatrix.c:102: SS2_LOW; // selecting Display2
;	assignBit
	clr	_P1_0
;	dotmatrix.c:105: for (int j = 1; j <= 4; j++)
00135$:
	mov	dptr,#_dotmatrix_send_address_65536_33
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_dotmatrix_send_PARM_2
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_dotmatrix_send_PARM_4
	movx	a,@dptr
	mov	r5,a
	mov	r3,#0x01
	mov	r4,#0x00
00122$:
	clr	c
	mov	a,#0x04
	subb	a,r3
	mov	a,#(0x00 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00172$
	ljmp	00114$
00172$:
;	dotmatrix.c:107: if (j == display_unit)
	mov	ar1,r5
	mov	r2,#0x00
	mov	a,r3
	cjne	a,ar1,00134$
	mov	a,r4
	cjne	a,ar2,00134$
;	dotmatrix.c:109: uint16_t whole_data = (uint16_t)(((uint16_t)(address << EIGHT)) | data);
	push	ar5
	mov	ar1,r7
	mov	ar2,r1
	mov	r1,#0x00
	mov	ar0,r6
	mov	r5,#0x00
	mov	dptr,#_dotmatrix_send_whole_data_262144_39
	mov	a,r0
	orl	a,r1
	movx	@dptr,a
	mov	a,r5
	orl	a,r2
	inc	dptr
	movx	@dptr,a
;	dotmatrix.c:111: for (int i = 0; i < SIXTEEN; i++)
	clr	a
	mov	_dotmatrix_send_sloc0_1_0,a
	mov	(_dotmatrix_send_sloc0_1_0 + 1),a
;	dotmatrix.c:139: SS2_HIGH;
	pop	ar5
;	dotmatrix.c:111: for (int i = 0; i < SIXTEEN; i++)
00116$:
	clr	c
	mov	a,_dotmatrix_send_sloc0_1_0
	subb	a,#0x10
	mov	a,(_dotmatrix_send_sloc0_1_0 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00123$
;	dotmatrix.c:113: if (whole_data & 0x8000)
	mov	dptr,#_dotmatrix_send_whole_data_262144_39
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	jnb	acc.7,00107$
;	dotmatrix.c:114: MOSI_HIGH;
;	assignBit
	setb	_P1_7
	sjmp	00108$
00107$:
;	dotmatrix.c:116: MOSI_LOW;
;	assignBit
	clr	_P1_7
00108$:
;	dotmatrix.c:118: SPI_SCL_HIGH;
;	assignBit
	setb	_P1_6
;	dotmatrix.c:119: SPI_SCL_LOW;
;	assignBit
	clr	_P1_6
;	dotmatrix.c:121: whole_data <<= 1; // shifting one bit
	mov	dptr,#_dotmatrix_send_whole_data_262144_39
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,r1
	add	a,r1
	mov	r1,a
	mov	a,r2
	rlc	a
	mov	r2,a
	mov	dptr,#_dotmatrix_send_whole_data_262144_39
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
;	dotmatrix.c:111: for (int i = 0; i < SIXTEEN; i++)
	inc	_dotmatrix_send_sloc0_1_0
	clr	a
;	dotmatrix.c:127: for (int i = 0; i < SIXTEEN; i++)
	cjne	a,_dotmatrix_send_sloc0_1_0,00116$
	inc	(_dotmatrix_send_sloc0_1_0 + 1)
	sjmp	00116$
00134$:
	mov	r1,#0x00
	mov	r2,#0x00
00119$:
	clr	c
	mov	a,r1
	subb	a,#0x10
	mov	a,r2
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00123$
;	dotmatrix.c:130: MOSI_LOW;
;	assignBit
	clr	_P1_7
;	dotmatrix.c:132: SPI_SCL_HIGH;
;	assignBit
	setb	_P1_6
;	dotmatrix.c:133: SPI_SCL_LOW;
;	assignBit
	clr	_P1_6
;	dotmatrix.c:127: for (int i = 0; i < SIXTEEN; i++)
	inc	r1
	cjne	r1,#0x00,00119$
	inc	r2
	sjmp	00119$
00123$:
;	dotmatrix.c:105: for (int j = 1; j <= 4; j++)
	inc	r3
	cjne	r3,#0x00,00180$
	inc	r4
00180$:
	ljmp	00122$
00114$:
;	dotmatrix.c:138: SS_HIGH;
;	assignBit
	setb	_P1_1
;	dotmatrix.c:139: SS2_HIGH;
;	assignBit
	setb	_P1_0
;	dotmatrix.c:140: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'move_p1controller_up'
;------------------------------------------------------------
;how_much_pixel_in_d2      Allocated with name '_move_p1controller_up_how_much_pixel_in_d2_65536_45'
;how_much_pixel_in_d1      Allocated with name '_move_p1controller_up_how_much_pixel_in_d1_65536_45'
;start_pos_d1              Allocated with name '_move_p1controller_up_start_pos_d1_65536_45'
;temp_location_d2          Allocated with name '_move_p1controller_up_temp_location_d2_65536_45'
;i                         Allocated with name '_move_p1controller_up_i_196608_48'
;i                         Allocated with name '_move_p1controller_up_i_196608_50'
;------------------------------------------------------------
;	dotmatrix.c:142: void move_p1controller_up()
;	-----------------------------------------
;	 function move_p1controller_up
;	-----------------------------------------
_move_p1controller_up:
;	dotmatrix.c:146: if (current_row_location_of_player1 == 1)
	mov	dptr,#_current_row_location_of_player1
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00102$
;	dotmatrix.c:147: return;
	ret
00102$:
;	dotmatrix.c:149: if (current_row_location_of_player1 >= 10)
	mov	dptr,#_current_row_location_of_player1
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0a,00162$
00162$:
	jc	00112$
;	dotmatrix.c:151: temp_location_d2 = current_row_location_of_player1 % MAX_LENGTH;
	mov	dptr,#_current_row_location_of_player1
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x07
;	dotmatrix.c:152: dotmatrix_send(temp_location_d2 + 3, ZERO, DISPLAY2, PLAYER1_UNIT);
	mov	ar6,r7
	inc	r6
	inc	r6
	inc	r6
	mov	dptr,#_dotmatrix_send_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	movx	@dptr,a
	mov	dpl,r6
	push	ar7
	lcall	_dotmatrix_send
	pop	ar7
;	dotmatrix.c:154: temp_location_d2--;
	dec	r7
;	dotmatrix.c:155: (current_row_location_of_player1) = (current_row_location_of_player1)-1;
	mov	dptr,#_current_row_location_of_player1
	movx	a,@dptr
	dec	a
	movx	@dptr,a
;	dotmatrix.c:157: dotmatrix_send(temp_location_d2, PLAYER1_ROW, DISPLAY2, PLAYER1_UNIT);
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x80
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	rl	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	movx	@dptr,a
	mov	dpl,r7
;	dotmatrix.c:158: return;
	ljmp	_dotmatrix_send
00112$:
;	dotmatrix.c:160: else if (current_row_location_of_player1 <= 9 && current_row_location_of_player1 >= 6)
	mov	dptr,#_current_row_location_of_player1
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x09
	jnc	00164$
	ljmp	00108$
00164$:
	mov	dptr,#_current_row_location_of_player1
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x06,00165$
00165$:
	jnc	00166$
	ljmp	00108$
00166$:
;	dotmatrix.c:162: how_much_pixel_in_d2 = (current_row_location_of_player1 + (PLAYER_LENGTH - 2)) - MAX_LENGTH;
	mov	dptr,#_current_row_location_of_player1
	movx	a,@dptr
;	dotmatrix.c:163: how_much_pixel_in_d1 = PLAYER_LENGTH - how_much_pixel_in_d2;
	add	a,#0xfa
	mov	r7,a
	mov	r6,a
	mov	a,#0x04
	clr	c
	subb	a,r6
	mov	r6,a
;	dotmatrix.c:165: start_pos_d1 = current_row_location_of_player1 - 1;
	movx	a,@dptr
	mov	r5,a
	dec	r5
;	dotmatrix.c:167: dotmatrix_send(((current_row_location_of_player1 + 3) % EIGHT), ZERO, DISPLAY2, PLAYER1_UNIT);
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	mov	a,#0x03
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	lcall	__modsint
	mov	r3,dpl
	mov	dptr,#_dotmatrix_send_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	movx	@dptr,a
	mov	dpl,r3
	lcall	_dotmatrix_send
	pop	ar5
	pop	ar6
	pop	ar7
;	dotmatrix.c:168: current_row_location_of_player1--;
	mov	dptr,#_current_row_location_of_player1
	movx	a,@dptr
	dec	a
	movx	@dptr,a
;	dotmatrix.c:170: for (int i = 0; i < how_much_pixel_in_d1; i++)
	mov	r3,#0x00
	mov	r4,#0x00
00115$:
	mov	ar1,r6
	mov	r2,#0x00
	clr	c
	mov	a,r3
	subb	a,r1
	mov	a,r4
	xrl	a,#0x80
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jnc	00103$
;	dotmatrix.c:172: dotmatrix_send(start_pos_d1 + i, PLAYER1_ROW, DISPLAY1, PLAYER1_UNIT);
	mov	ar2,r3
	mov	ar1,r5
	mov	a,r2
	add	a,r1
	mov	r2,a
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x80
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	inc	a
	movx	@dptr,a
	mov	dpl,r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_dotmatrix_send
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	dotmatrix.c:170: for (int i = 0; i < how_much_pixel_in_d1; i++)
	inc	r3
	cjne	r3,#0x00,00115$
	inc	r4
	sjmp	00115$
00103$:
;	dotmatrix.c:175: for (int i = 0; i < (how_much_pixel_in_d2); i++)
	mov	r5,#0x00
	mov	r6,#0x00
00118$:
	mov	ar3,r7
	mov	r4,#0x00
	clr	c
	mov	a,r5
	subb	a,r3
	mov	a,r6
	xrl	a,#0x80
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00120$
;	dotmatrix.c:177: dotmatrix_send(1 + i, PLAYER1_ROW, DISPLAY2, PLAYER1_UNIT);
	mov	ar4,r5
	inc	r4
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x80
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	rl	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	movx	@dptr,a
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_dotmatrix_send
	pop	ar5
	pop	ar6
	pop	ar7
;	dotmatrix.c:175: for (int i = 0; i < (how_much_pixel_in_d2); i++)
	inc	r5
	cjne	r5,#0x00,00118$
	inc	r6
	sjmp	00118$
00108$:
;	dotmatrix.c:180: else if (current_row_location_of_player1 <= 5)
	mov	dptr,#_current_row_location_of_player1
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x05
	jc	00120$
;	dotmatrix.c:182: dotmatrix_send(current_row_location_of_player1 + 3, ZERO, DISPLAY1, PLAYER1_UNIT);
	mov	dptr,#_current_row_location_of_player1
	movx	a,@dptr
	mov	r7,a
	inc	r7
	inc	r7
	inc	r7
	mov	dptr,#_dotmatrix_send_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	inc	a
	movx	@dptr,a
	mov	dpl,r7
	lcall	_dotmatrix_send
;	dotmatrix.c:183: (current_row_location_of_player1) = (current_row_location_of_player1)-1;
	mov	dptr,#_current_row_location_of_player1
	movx	a,@dptr
	dec	a
	movx	@dptr,a
;	dotmatrix.c:184: dotmatrix_send(current_row_location_of_player1, PLAYER1_ROW, DISPLAY1, PLAYER1_UNIT);
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x80
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	inc	a
	movx	@dptr,a
	mov	dpl,r7
;	dotmatrix.c:186: }
	ljmp	_dotmatrix_send
00120$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'move_p1controller_down'
;------------------------------------------------------------
;how_much_pixel_in_d2      Allocated with name '_move_p1controller_down_how_much_pixel_in_d2_65536_53'
;how_much_pixel_in_d1      Allocated with name '_move_p1controller_down_how_much_pixel_in_d1_65536_53'
;start_pos_d1              Allocated with name '_move_p1controller_down_start_pos_d1_65536_53'
;start_pos_d2              Allocated with name '_move_p1controller_down_start_pos_d2_65536_53'
;i                         Allocated with name '_move_p1controller_down_i_196608_57'
;i                         Allocated with name '_move_p1controller_down_i_196608_59'
;------------------------------------------------------------
;	dotmatrix.c:188: void move_p1controller_down()
;	-----------------------------------------
;	 function move_p1controller_down
;	-----------------------------------------
_move_p1controller_down:
;	dotmatrix.c:193: if (current_row_location_of_player1 >= 5)
	mov	dptr,#_current_row_location_of_player1
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x05,00173$
00173$:
	jnc	00174$
	ljmp	00111$
00174$:
;	dotmatrix.c:195: if (current_row_location_of_player1 == 13)
	mov	dptr,#_current_row_location_of_player1
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0d,00102$
;	dotmatrix.c:196: return;
	ret
00102$:
;	dotmatrix.c:198: how_much_pixel_in_d2 = (current_row_location_of_player1 < 9) ? (current_row_location_of_player1 + (PLAYER_LENGTH)) - MAX_LENGTH : PLAYER_LENGTH;
	mov	dptr,#_current_row_location_of_player1
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x09,00177$
00177$:
	jnc	00121$
	mov	dptr,#_current_row_location_of_player1
	movx	a,@dptr
	add	a,#0xfc
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
	sjmp	00122$
00121$:
	mov	r6,#0x04
	mov	r7,#0x00
00122$:
;	dotmatrix.c:200: how_much_pixel_in_d1 = PLAYER_LENGTH - how_much_pixel_in_d2;
	mov	ar7,r6
	mov	a,#0x04
	clr	c
	subb	a,r7
	mov	r7,a
;	dotmatrix.c:202: start_pos_d1 = (current_row_location_of_player1 <= EIGHT) ? current_row_location_of_player1 : EIGHT;
	mov	dptr,#_current_row_location_of_player1
	movx	a,@dptr
	add	a,#0xff - 0x08
	jc	00123$
	mov	dptr,#_current_row_location_of_player1
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	sjmp	00124$
00123$:
	mov	r4,#0x08
	mov	r5,#0x00
00124$:
	mov	dptr,#_move_p1controller_down_start_pos_d1_65536_53
	mov	a,r4
	movx	@dptr,a
;	dotmatrix.c:203: start_pos_d2 = (current_row_location_of_player1 > EIGHT) ? (current_row_location_of_player1 - MAX_LENGTH) : 1;
	mov	dptr,#_current_row_location_of_player1
	movx	a,@dptr
	add	a,#0xff - 0x08
	jnc	00125$
	mov	dptr,#_current_row_location_of_player1
	movx	a,@dptr
	add	a,#0xf8
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r5,a
	sjmp	00126$
00125$:
	mov	r3,#0x01
	mov	r5,#0x00
00126$:
	mov	dptr,#_move_p1controller_down_start_pos_d2_65536_53
	mov	a,r3
	movx	@dptr,a
;	dotmatrix.c:205: if (current_row_location_of_player1 <= EIGHT)
	mov	dptr,#_current_row_location_of_player1
	movx	a,@dptr
	add	a,#0xff - 0x08
	jc	00104$
;	dotmatrix.c:207: dotmatrix_send(start_pos_d1, ZERO, DISPLAY1, PLAYER1_UNIT);
	mov	dptr,#_dotmatrix_send_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	inc	a
	movx	@dptr,a
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar4
	lcall	_dotmatrix_send
	pop	ar4
	pop	ar6
	pop	ar7
;	dotmatrix.c:208: start_pos_d1++;
	mov	dptr,#_move_p1controller_down_start_pos_d1_65536_53
	mov	a,r4
	inc	a
	movx	@dptr,a
	sjmp	00105$
00104$:
;	dotmatrix.c:212: dotmatrix_send(start_pos_d2, ZERO, DISPLAY2, PLAYER1_UNIT);
	mov	dptr,#_dotmatrix_send_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	movx	@dptr,a
	mov	dpl,r3
	push	ar7
	push	ar6
	push	ar3
	lcall	_dotmatrix_send
	pop	ar3
	pop	ar6
	pop	ar7
;	dotmatrix.c:213: start_pos_d2++;
	mov	dptr,#_move_p1controller_down_start_pos_d2_65536_53
	mov	a,r3
	inc	a
	movx	@dptr,a
00105$:
;	dotmatrix.c:216: current_row_location_of_player1 = current_row_location_of_player1 + 1;
	mov	dptr,#_current_row_location_of_player1
	movx	a,@dptr
	inc	a
	movx	@dptr,a
;	dotmatrix.c:218: for (int i = 0; i < how_much_pixel_in_d1; i++)
	mov	dptr,#_move_p1controller_down_start_pos_d1_65536_53
	movx	a,@dptr
	mov	r5,a
	mov	r3,#0x00
	mov	r4,#0x00
00114$:
	mov	ar1,r7
	mov	r2,#0x00
	clr	c
	mov	a,r3
	subb	a,r1
	mov	a,r4
	xrl	a,#0x80
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jnc	00106$
;	dotmatrix.c:220: dotmatrix_send(start_pos_d1 + i, PLAYER1_ROW, DISPLAY1, PLAYER1_UNIT);
	mov	ar2,r3
	mov	ar1,r5
	mov	a,r2
	add	a,r1
	mov	r2,a
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x80
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	inc	a
	movx	@dptr,a
	mov	dpl,r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_dotmatrix_send
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	dotmatrix.c:218: for (int i = 0; i < how_much_pixel_in_d1; i++)
	inc	r3
	cjne	r3,#0x00,00114$
	inc	r4
	sjmp	00114$
00106$:
;	dotmatrix.c:223: for (int i = 0; i < how_much_pixel_in_d2; i++)
	mov	dptr,#_move_p1controller_down_start_pos_d2_65536_53
	movx	a,@dptr
	mov	r7,a
	mov	r4,#0x00
	mov	r5,#0x00
00117$:
	mov	ar2,r6
	mov	r3,#0x00
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jc	00184$
	ret
00184$:
;	dotmatrix.c:225: dotmatrix_send(start_pos_d2 + i, PLAYER1_ROW, DISPLAY2, PLAYER1_UNIT);
	mov	ar3,r4
	mov	ar2,r7
	mov	a,r3
	add	a,r2
	mov	r3,a
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x80
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	rl	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	movx	@dptr,a
	mov	dpl,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_dotmatrix_send
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	dotmatrix.c:223: for (int i = 0; i < how_much_pixel_in_d2; i++)
	inc	r4
	cjne	r4,#0x00,00117$
	inc	r5
	sjmp	00117$
00111$:
;	dotmatrix.c:230: if (current_row_location_of_player1 == 5)
	mov	dptr,#_current_row_location_of_player1
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x05,00109$
;	dotmatrix.c:231: return;
	ret
00109$:
;	dotmatrix.c:232: dotmatrix_send(current_row_location_of_player1, ZERO, DISPLAY1, PLAYER1_UNIT);
	mov	dptr,#_current_row_location_of_player1
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_dotmatrix_send_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	inc	a
	movx	@dptr,a
	mov	dpl,r7
	lcall	_dotmatrix_send
;	dotmatrix.c:233: (current_row_location_of_player1) = (current_row_location_of_player1) + 1;
	mov	dptr,#_current_row_location_of_player1
	movx	a,@dptr
	inc	a
	movx	@dptr,a
;	dotmatrix.c:234: dotmatrix_send(current_row_location_of_player1 + 3, PLAYER1_ROW, DISPLAY1, PLAYER1_UNIT);
	movx	a,@dptr
	mov	r7,a
	inc	r7
	inc	r7
	inc	r7
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x80
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	inc	a
	movx	@dptr,a
	mov	dpl,r7
;	dotmatrix.c:236: }
	ljmp	_dotmatrix_send
;------------------------------------------------------------
;Allocation info for local variables in function 'move_p2controller_down'
;------------------------------------------------------------
;how_much_pixel_in_d2      Allocated with name '_move_p2controller_down_how_much_pixel_in_d2_65536_62'
;how_much_pixel_in_d1      Allocated with name '_move_p2controller_down_how_much_pixel_in_d1_65536_62'
;start_pos_d1              Allocated with name '_move_p2controller_down_start_pos_d1_65536_62'
;start_pos_d2              Allocated with name '_move_p2controller_down_start_pos_d2_65536_62'
;i                         Allocated with name '_move_p2controller_down_i_196608_66'
;i                         Allocated with name '_move_p2controller_down_i_196608_68'
;------------------------------------------------------------
;	dotmatrix.c:238: void move_p2controller_down()
;	-----------------------------------------
;	 function move_p2controller_down
;	-----------------------------------------
_move_p2controller_down:
;	dotmatrix.c:242: if (current_row_location_of_player2 >= 5)
	mov	dptr,#_current_row_location_of_player2
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x05,00173$
00173$:
	jnc	00174$
	ljmp	00111$
00174$:
;	dotmatrix.c:244: if (current_row_location_of_player2 == 13)
	mov	dptr,#_current_row_location_of_player2
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0d,00102$
;	dotmatrix.c:245: return;
	ret
00102$:
;	dotmatrix.c:247: how_much_pixel_in_d2 = (current_row_location_of_player2 < 9) ? (current_row_location_of_player2 + (PLAYER_LENGTH)) - MAX_LENGTH : PLAYER_LENGTH;
	mov	dptr,#_current_row_location_of_player2
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x09,00177$
00177$:
	jnc	00121$
	mov	dptr,#_current_row_location_of_player2
	movx	a,@dptr
	add	a,#0xfc
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
	sjmp	00122$
00121$:
	mov	r6,#0x04
	mov	r7,#0x00
00122$:
;	dotmatrix.c:249: how_much_pixel_in_d1 = PLAYER_LENGTH - how_much_pixel_in_d2;
	mov	ar7,r6
	mov	a,#0x04
	clr	c
	subb	a,r7
	mov	r7,a
;	dotmatrix.c:251: start_pos_d1 = (current_row_location_of_player2 <= EIGHT) ? current_row_location_of_player2 : EIGHT;
	mov	dptr,#_current_row_location_of_player2
	movx	a,@dptr
	add	a,#0xff - 0x08
	jc	00123$
	mov	dptr,#_current_row_location_of_player2
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	sjmp	00124$
00123$:
	mov	r4,#0x08
	mov	r5,#0x00
00124$:
	mov	dptr,#_move_p2controller_down_start_pos_d1_65536_62
	mov	a,r4
	movx	@dptr,a
;	dotmatrix.c:252: start_pos_d2 = (current_row_location_of_player2 > EIGHT) ? (current_row_location_of_player2 - MAX_LENGTH) : 1;
	mov	dptr,#_current_row_location_of_player2
	movx	a,@dptr
	add	a,#0xff - 0x08
	jnc	00125$
	mov	dptr,#_current_row_location_of_player2
	movx	a,@dptr
	add	a,#0xf8
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r5,a
	sjmp	00126$
00125$:
	mov	r3,#0x01
	mov	r5,#0x00
00126$:
	mov	dptr,#_move_p2controller_down_start_pos_d2_65536_62
	mov	a,r3
	movx	@dptr,a
;	dotmatrix.c:254: if (current_row_location_of_player2 <= EIGHT)
	mov	dptr,#_current_row_location_of_player2
	movx	a,@dptr
	add	a,#0xff - 0x08
	jc	00104$
;	dotmatrix.c:256: dotmatrix_send(start_pos_d1, ZERO, DISPLAY1, PLAYER2_UNIT);
	mov	dptr,#_dotmatrix_send_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar4
	lcall	_dotmatrix_send
	pop	ar4
	pop	ar6
	pop	ar7
;	dotmatrix.c:257: start_pos_d1++;
	mov	dptr,#_move_p2controller_down_start_pos_d1_65536_62
	mov	a,r4
	inc	a
	movx	@dptr,a
	sjmp	00105$
00104$:
;	dotmatrix.c:261: dotmatrix_send(start_pos_d2, ZERO, DISPLAY2, PLAYER2_UNIT);
	mov	dptr,#_dotmatrix_send_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,r3
	push	ar7
	push	ar6
	push	ar3
	lcall	_dotmatrix_send
	pop	ar3
	pop	ar6
	pop	ar7
;	dotmatrix.c:262: start_pos_d2++;
	mov	dptr,#_move_p2controller_down_start_pos_d2_65536_62
	mov	a,r3
	inc	a
	movx	@dptr,a
00105$:
;	dotmatrix.c:265: current_row_location_of_player2 = current_row_location_of_player2 + 1;
	mov	dptr,#_current_row_location_of_player2
	movx	a,@dptr
	inc	a
	movx	@dptr,a
;	dotmatrix.c:267: for (int i = 0; i < how_much_pixel_in_d1; i++)
	mov	dptr,#_move_p2controller_down_start_pos_d1_65536_62
	movx	a,@dptr
	mov	r5,a
	mov	r3,#0x00
	mov	r4,#0x00
00114$:
	mov	ar1,r7
	mov	r2,#0x00
	clr	c
	mov	a,r3
	subb	a,r1
	mov	a,r4
	xrl	a,#0x80
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jnc	00106$
;	dotmatrix.c:269: dotmatrix_send(start_pos_d1 + i, PLAYER2_ROW, DISPLAY1, PLAYER2_UNIT);
	mov	ar2,r3
	mov	ar1,r5
	mov	a,r2
	add	a,r1
	mov	r2,a
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_dotmatrix_send
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	dotmatrix.c:267: for (int i = 0; i < how_much_pixel_in_d1; i++)
	inc	r3
	cjne	r3,#0x00,00114$
	inc	r4
	sjmp	00114$
00106$:
;	dotmatrix.c:272: for (int i = 0; i < how_much_pixel_in_d2; i++)
	mov	dptr,#_move_p2controller_down_start_pos_d2_65536_62
	movx	a,@dptr
	mov	r7,a
	mov	r4,#0x00
	mov	r5,#0x00
00117$:
	mov	ar2,r6
	mov	r3,#0x00
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jc	00184$
	ret
00184$:
;	dotmatrix.c:274: dotmatrix_send(start_pos_d2 + i, PLAYER2_ROW, DISPLAY2, PLAYER2_UNIT);
	mov	ar3,r4
	mov	ar2,r7
	mov	a,r3
	add	a,r2
	mov	r3,a
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_dotmatrix_send
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	dotmatrix.c:272: for (int i = 0; i < how_much_pixel_in_d2; i++)
	inc	r4
	cjne	r4,#0x00,00117$
	inc	r5
	sjmp	00117$
00111$:
;	dotmatrix.c:279: if (current_row_location_of_player2 == 5)
	mov	dptr,#_current_row_location_of_player2
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x05,00109$
;	dotmatrix.c:280: return;
	ret
00109$:
;	dotmatrix.c:281: dotmatrix_send(current_row_location_of_player2, ZERO, DISPLAY1, PLAYER2_UNIT);
	mov	dptr,#_current_row_location_of_player2
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_dotmatrix_send_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,r7
	lcall	_dotmatrix_send
;	dotmatrix.c:282: (current_row_location_of_player2) = (current_row_location_of_player2) + 1;
	mov	dptr,#_current_row_location_of_player2
	movx	a,@dptr
	inc	a
	movx	@dptr,a
;	dotmatrix.c:283: dotmatrix_send(current_row_location_of_player2 + 3, PLAYER2_ROW, DISPLAY1, PLAYER2_UNIT);
	movx	a,@dptr
	mov	r7,a
	inc	r7
	inc	r7
	inc	r7
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,r7
;	dotmatrix.c:285: }
	ljmp	_dotmatrix_send
;------------------------------------------------------------
;Allocation info for local variables in function 'move_p2controller_up'
;------------------------------------------------------------
;how_much_pixel_in_d2      Allocated with name '_move_p2controller_up_how_much_pixel_in_d2_65536_71'
;how_much_pixel_in_d1      Allocated with name '_move_p2controller_up_how_much_pixel_in_d1_65536_71'
;start_pos_d1              Allocated with name '_move_p2controller_up_start_pos_d1_65536_71'
;temp_location_d2          Allocated with name '_move_p2controller_up_temp_location_d2_65536_71'
;i                         Allocated with name '_move_p2controller_up_i_196608_74'
;i                         Allocated with name '_move_p2controller_up_i_196608_76'
;------------------------------------------------------------
;	dotmatrix.c:287: void move_p2controller_up()
;	-----------------------------------------
;	 function move_p2controller_up
;	-----------------------------------------
_move_p2controller_up:
;	dotmatrix.c:291: if (current_row_location_of_player2 == 1)
	mov	dptr,#_current_row_location_of_player2
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00102$
;	dotmatrix.c:292: return;
	ret
00102$:
;	dotmatrix.c:294: if (current_row_location_of_player2 >= 10)
	mov	dptr,#_current_row_location_of_player2
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0a,00162$
00162$:
	jc	00112$
;	dotmatrix.c:296: temp_location_d2 = current_row_location_of_player2 % MAX_LENGTH;
	mov	dptr,#_current_row_location_of_player2
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x07
;	dotmatrix.c:297: dotmatrix_send(temp_location_d2 + 3, ZERO, DISPLAY2, PLAYER2_UNIT);
	mov	ar6,r7
	inc	r6
	inc	r6
	inc	r6
	mov	dptr,#_dotmatrix_send_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,r6
	push	ar7
	lcall	_dotmatrix_send
	pop	ar7
;	dotmatrix.c:299: temp_location_d2--;
	dec	r7
;	dotmatrix.c:300: (current_row_location_of_player2) = (current_row_location_of_player2)-1;
	mov	dptr,#_current_row_location_of_player2
	movx	a,@dptr
	dec	a
	movx	@dptr,a
;	dotmatrix.c:302: dotmatrix_send(temp_location_d2, PLAYER2_ROW, DISPLAY2, PLAYER2_UNIT);
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,r7
;	dotmatrix.c:303: return;
	ljmp	_dotmatrix_send
00112$:
;	dotmatrix.c:305: else if (current_row_location_of_player2 <= 9 && current_row_location_of_player2 >= 6)
	mov	dptr,#_current_row_location_of_player2
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x09
	jnc	00164$
	ljmp	00108$
00164$:
	mov	dptr,#_current_row_location_of_player2
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x06,00165$
00165$:
	jnc	00166$
	ljmp	00108$
00166$:
;	dotmatrix.c:307: how_much_pixel_in_d2 = (current_row_location_of_player2 + (PLAYER_LENGTH - 2)) - MAX_LENGTH;
	mov	dptr,#_current_row_location_of_player2
	movx	a,@dptr
;	dotmatrix.c:308: how_much_pixel_in_d1 = PLAYER_LENGTH - how_much_pixel_in_d2;
	add	a,#0xfa
	mov	r7,a
	mov	r6,a
	mov	a,#0x04
	clr	c
	subb	a,r6
	mov	r6,a
;	dotmatrix.c:310: start_pos_d1 = current_row_location_of_player2 - 1;
	movx	a,@dptr
	mov	r5,a
	dec	r5
;	dotmatrix.c:312: dotmatrix_send(((current_row_location_of_player2 + 3) % EIGHT), ZERO, DISPLAY2, PLAYER2_UNIT);
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	mov	a,#0x03
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	lcall	__modsint
	mov	r3,dpl
	mov	dptr,#_dotmatrix_send_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,r3
	lcall	_dotmatrix_send
	pop	ar5
	pop	ar6
	pop	ar7
;	dotmatrix.c:313: current_row_location_of_player2--;
	mov	dptr,#_current_row_location_of_player2
	movx	a,@dptr
	dec	a
	movx	@dptr,a
;	dotmatrix.c:315: for (int i = 0; i < how_much_pixel_in_d1; i++)
	mov	r3,#0x00
	mov	r4,#0x00
00115$:
	mov	ar1,r6
	mov	r2,#0x00
	clr	c
	mov	a,r3
	subb	a,r1
	mov	a,r4
	xrl	a,#0x80
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jnc	00103$
;	dotmatrix.c:317: dotmatrix_send(start_pos_d1 + i, PLAYER2_ROW, DISPLAY1, PLAYER2_UNIT);
	mov	ar2,r3
	mov	ar1,r5
	mov	a,r2
	add	a,r1
	mov	r2,a
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_dotmatrix_send
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	dotmatrix.c:315: for (int i = 0; i < how_much_pixel_in_d1; i++)
	inc	r3
	cjne	r3,#0x00,00115$
	inc	r4
	sjmp	00115$
00103$:
;	dotmatrix.c:320: for (int i = 0; i < (how_much_pixel_in_d2); i++)
	mov	r5,#0x00
	mov	r6,#0x00
00118$:
	mov	ar3,r7
	mov	r4,#0x00
	clr	c
	mov	a,r5
	subb	a,r3
	mov	a,r6
	xrl	a,#0x80
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00120$
;	dotmatrix.c:322: dotmatrix_send(1 + i, PLAYER2_ROW, DISPLAY2, PLAYER2_UNIT);
	mov	ar4,r5
	inc	r4
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_dotmatrix_send
	pop	ar5
	pop	ar6
	pop	ar7
;	dotmatrix.c:320: for (int i = 0; i < (how_much_pixel_in_d2); i++)
	inc	r5
	cjne	r5,#0x00,00118$
	inc	r6
	sjmp	00118$
00108$:
;	dotmatrix.c:325: else if (current_row_location_of_player2 <= 5)
	mov	dptr,#_current_row_location_of_player2
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x05
	jc	00120$
;	dotmatrix.c:327: dotmatrix_send(current_row_location_of_player2 + 3, ZERO, DISPLAY1, PLAYER2_UNIT);
	mov	dptr,#_current_row_location_of_player2
	movx	a,@dptr
	mov	r7,a
	inc	r7
	inc	r7
	inc	r7
	mov	dptr,#_dotmatrix_send_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,r7
	lcall	_dotmatrix_send
;	dotmatrix.c:328: (current_row_location_of_player2) = (current_row_location_of_player2)-1;
	mov	dptr,#_current_row_location_of_player2
	movx	a,@dptr
	dec	a
	movx	@dptr,a
;	dotmatrix.c:329: dotmatrix_send(current_row_location_of_player2, PLAYER2_ROW, DISPLAY1, PLAYER2_UNIT);
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,r7
;	dotmatrix.c:331: }
	ljmp	_dotmatrix_send
00120$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'initialize_controller'
;------------------------------------------------------------
;unit                      Allocated with name '_initialize_controller_unit_131072_80'
;row                       Allocated with name '_initialize_controller_row_262144_82'
;unit                      Allocated with name '_initialize_controller_unit_131072_84'
;row                       Allocated with name '_initialize_controller_row_262144_86'
;------------------------------------------------------------
;	dotmatrix.c:333: void initialize_controller()
;	-----------------------------------------
;	 function initialize_controller
;	-----------------------------------------
_initialize_controller:
;	dotmatrix.c:337: current_row_location_of_player1 = 7;
	mov	dptr,#_current_row_location_of_player1
	mov	a,#0x07
	movx	@dptr,a
;	dotmatrix.c:338: current_row_location_of_player2 = 7;
	mov	dptr,#_current_row_location_of_player2
	movx	@dptr,a
;	dotmatrix.c:340: b_y = SIXTEEN;
	mov	dptr,#_b_y
	mov	a,#0x10
	movx	@dptr,a
;	dotmatrix.c:341: b_x = EIGHT;
	mov	dptr,#_b_x
	rr	a
	movx	@dptr,a
;	dotmatrix.c:343: direction_x = 1;
	mov	dptr,#_direction_x
	mov	a,#0x01
	movx	@dptr,a
;	dotmatrix.c:344: direction_y = 1;
	mov	dptr,#_direction_y
	movx	@dptr,a
;	dotmatrix.c:346: dotmatrix_send(DISPLAY_TEST_REG, DISPLAY_TEST_NORMAL_MODE_VAL, DISPLAY1, PLAYER1_UNIT);
	mov	dptr,#_dotmatrix_send_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	inc	a
	movx	@dptr,a
	mov	dpl,#0x0f
	lcall	_dotmatrix_send
;	dotmatrix.c:347: dotmatrix_send(DISPLAY_TEST_REG, DISPLAY_TEST_NORMAL_MODE_VAL, DISPLAY1, 2);
	mov	dptr,#_dotmatrix_send_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,#0x0f
	lcall	_dotmatrix_send
;	dotmatrix.c:348: dotmatrix_send(DISPLAY_TEST_REG, DISPLAY_TEST_NORMAL_MODE_VAL, DISPLAY1, 3);
	mov	dptr,#_dotmatrix_send_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl,#0x0f
	lcall	_dotmatrix_send
;	dotmatrix.c:349: dotmatrix_send(DISPLAY_TEST_REG, DISPLAY_TEST_NORMAL_MODE_VAL, DISPLAY1, PLAYER2_UNIT);
	mov	dptr,#_dotmatrix_send_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,#0x0f
	lcall	_dotmatrix_send
;	dotmatrix.c:351: dotmatrix_send(DISPLAY_TEST_REG, DISPLAY_TEST_NORMAL_MODE_VAL, DISPLAY2, PLAYER1_UNIT);
	mov	dptr,#_dotmatrix_send_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	movx	@dptr,a
	mov	dpl,#0x0f
	lcall	_dotmatrix_send
;	dotmatrix.c:352: dotmatrix_send(DISPLAY_TEST_REG, DISPLAY_TEST_NORMAL_MODE_VAL, DISPLAY2, 2);
	mov	dptr,#_dotmatrix_send_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	inc	a
	movx	@dptr,a
	mov	dpl,#0x0f
	lcall	_dotmatrix_send
;	dotmatrix.c:353: dotmatrix_send(DISPLAY_TEST_REG, DISPLAY_TEST_NORMAL_MODE_VAL, DISPLAY2, 3);
	mov	dptr,#_dotmatrix_send_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl,#0x0f
	lcall	_dotmatrix_send
;	dotmatrix.c:354: dotmatrix_send(DISPLAY_TEST_REG, DISPLAY_TEST_NORMAL_MODE_VAL, DISPLAY2, PLAYER2_UNIT);
	mov	dptr,#_dotmatrix_send_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,#0x0f
	lcall	_dotmatrix_send
;	dotmatrix.c:356: dotmatrix_send(DECODE_MODE_REG, DECODE_MODE_REG_NO_DECODE_VAL, DISPLAY1, PLAYER1_UNIT);
	mov	dptr,#_dotmatrix_send_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	inc	a
	movx	@dptr,a
	mov	dpl,#0x09
	lcall	_dotmatrix_send
;	dotmatrix.c:357: dotmatrix_send(DECODE_MODE_REG, DECODE_MODE_REG_NO_DECODE_VAL, DISPLAY1, 2);
	mov	dptr,#_dotmatrix_send_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,#0x09
	lcall	_dotmatrix_send
;	dotmatrix.c:358: dotmatrix_send(DECODE_MODE_REG, DECODE_MODE_REG_NO_DECODE_VAL, DISPLAY1, 3);
	mov	dptr,#_dotmatrix_send_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl,#0x09
	lcall	_dotmatrix_send
;	dotmatrix.c:359: dotmatrix_send(DECODE_MODE_REG, DECODE_MODE_REG_NO_DECODE_VAL, DISPLAY1, PLAYER2_UNIT);
	mov	dptr,#_dotmatrix_send_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,#0x09
	lcall	_dotmatrix_send
;	dotmatrix.c:361: dotmatrix_send(DECODE_MODE_REG, DECODE_MODE_REG_NO_DECODE_VAL, DISPLAY2, PLAYER1_UNIT);
	mov	dptr,#_dotmatrix_send_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	movx	@dptr,a
	mov	dpl,#0x09
	lcall	_dotmatrix_send
;	dotmatrix.c:362: dotmatrix_send(DECODE_MODE_REG, DECODE_MODE_REG_NO_DECODE_VAL, DISPLAY2, 2);
	mov	dptr,#_dotmatrix_send_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	inc	a
	movx	@dptr,a
	mov	dpl,#0x09
	lcall	_dotmatrix_send
;	dotmatrix.c:363: dotmatrix_send(DECODE_MODE_REG, DECODE_MODE_REG_NO_DECODE_VAL, DISPLAY2, 3);
	mov	dptr,#_dotmatrix_send_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl,#0x09
	lcall	_dotmatrix_send
;	dotmatrix.c:364: dotmatrix_send(DECODE_MODE_REG, DECODE_MODE_REG_NO_DECODE_VAL, DISPLAY2, PLAYER2_UNIT);
	mov	dptr,#_dotmatrix_send_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,#0x09
	lcall	_dotmatrix_send
;	dotmatrix.c:366: dotmatrix_send(INTENSITY_REG, INTENSITY_REG_MED_INTENSITY_VAL, DISPLAY1, PLAYER1_UNIT);
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	inc	a
	movx	@dptr,a
	mov	dpl,#0x0a
	lcall	_dotmatrix_send
;	dotmatrix.c:367: dotmatrix_send(INTENSITY_REG, INTENSITY_REG_MED_INTENSITY_VAL, DISPLAY1, 2);
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,#0x0a
	lcall	_dotmatrix_send
;	dotmatrix.c:368: dotmatrix_send(INTENSITY_REG, INTENSITY_REG_MED_INTENSITY_VAL, DISPLAY1, 3);
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl,#0x0a
	lcall	_dotmatrix_send
;	dotmatrix.c:369: dotmatrix_send(INTENSITY_REG, INTENSITY_REG_MED_INTENSITY_VAL, DISPLAY1, PLAYER2_UNIT);
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,#0x0a
	lcall	_dotmatrix_send
;	dotmatrix.c:371: dotmatrix_send(INTENSITY_REG, INTENSITY_REG_MED_INTENSITY_VAL, DISPLAY2, PLAYER1_UNIT);
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	movx	@dptr,a
	mov	dpl,#0x0a
	lcall	_dotmatrix_send
;	dotmatrix.c:372: dotmatrix_send(INTENSITY_REG, INTENSITY_REG_MED_INTENSITY_VAL, DISPLAY2, 2);
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	inc	a
	movx	@dptr,a
	mov	dpl,#0x0a
	lcall	_dotmatrix_send
;	dotmatrix.c:373: dotmatrix_send(INTENSITY_REG, INTENSITY_REG_MED_INTENSITY_VAL, DISPLAY2, 3);
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl,#0x0a
	lcall	_dotmatrix_send
;	dotmatrix.c:374: dotmatrix_send(INTENSITY_REG, INTENSITY_REG_MED_INTENSITY_VAL, DISPLAY2, PLAYER2_UNIT);
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,#0x0a
	lcall	_dotmatrix_send
;	dotmatrix.c:376: dotmatrix_send(SCAN_LIMIT_REG, SCAN_LIMIT_REG_ALL_SCAN_LIMIT_VAL, DISPLAY1, PLAYER1_UNIT);
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	inc	a
	movx	@dptr,a
	mov	dpl,#0x0b
	lcall	_dotmatrix_send
;	dotmatrix.c:377: dotmatrix_send(SCAN_LIMIT_REG, SCAN_LIMIT_REG_ALL_SCAN_LIMIT_VAL, DISPLAY1, 2);
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,#0x0b
	lcall	_dotmatrix_send
;	dotmatrix.c:378: dotmatrix_send(SCAN_LIMIT_REG, SCAN_LIMIT_REG_ALL_SCAN_LIMIT_VAL, DISPLAY1, 3);
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl,#0x0b
	lcall	_dotmatrix_send
;	dotmatrix.c:379: dotmatrix_send(SCAN_LIMIT_REG, SCAN_LIMIT_REG_ALL_SCAN_LIMIT_VAL, DISPLAY1, PLAYER2_UNIT);
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,#0x0b
	lcall	_dotmatrix_send
;	dotmatrix.c:381: dotmatrix_send(SCAN_LIMIT_REG, SCAN_LIMIT_REG_ALL_SCAN_LIMIT_VAL, DISPLAY2, PLAYER1_UNIT);
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	movx	@dptr,a
	mov	dpl,#0x0b
	lcall	_dotmatrix_send
;	dotmatrix.c:382: dotmatrix_send(SCAN_LIMIT_REG, SCAN_LIMIT_REG_ALL_SCAN_LIMIT_VAL, DISPLAY2, 2);
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	inc	a
	movx	@dptr,a
	mov	dpl,#0x0b
	lcall	_dotmatrix_send
;	dotmatrix.c:383: dotmatrix_send(SCAN_LIMIT_REG, SCAN_LIMIT_REG_ALL_SCAN_LIMIT_VAL, DISPLAY2, 3);
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl,#0x0b
	lcall	_dotmatrix_send
;	dotmatrix.c:384: dotmatrix_send(SCAN_LIMIT_REG, SCAN_LIMIT_REG_ALL_SCAN_LIMIT_VAL, DISPLAY2, PLAYER2_UNIT);
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,#0x0b
	lcall	_dotmatrix_send
;	dotmatrix.c:386: dotmatrix_send(SHUTDOWN_REG, SHUTDOWN_REG_NORMAL_MODE_VAL, DISPLAY1, PLAYER1_UNIT); // turn on chip
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	inc	a
	movx	@dptr,a
	mov	dpl,#0x0c
	lcall	_dotmatrix_send
;	dotmatrix.c:387: dotmatrix_send(SHUTDOWN_REG, SHUTDOWN_REG_NORMAL_MODE_VAL, DISPLAY1, 2);            // turn on chip
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,#0x0c
	lcall	_dotmatrix_send
;	dotmatrix.c:388: dotmatrix_send(SHUTDOWN_REG, SHUTDOWN_REG_NORMAL_MODE_VAL, DISPLAY1, 3);            // turn on chip
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl,#0x0c
	lcall	_dotmatrix_send
;	dotmatrix.c:389: dotmatrix_send(SHUTDOWN_REG, SHUTDOWN_REG_NORMAL_MODE_VAL, DISPLAY1, PLAYER2_UNIT); // turn on chip
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,#0x0c
	lcall	_dotmatrix_send
;	dotmatrix.c:391: dotmatrix_send(SHUTDOWN_REG, SHUTDOWN_REG_NORMAL_MODE_VAL, DISPLAY2, PLAYER1_UNIT); // turn on chip
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	movx	@dptr,a
	mov	dpl,#0x0c
	lcall	_dotmatrix_send
;	dotmatrix.c:392: dotmatrix_send(SHUTDOWN_REG, SHUTDOWN_REG_NORMAL_MODE_VAL, DISPLAY2, 2);            // turn on chip
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	inc	a
	movx	@dptr,a
	mov	dpl,#0x0c
	lcall	_dotmatrix_send
;	dotmatrix.c:393: dotmatrix_send(SHUTDOWN_REG, SHUTDOWN_REG_NORMAL_MODE_VAL, DISPLAY2, 3);            // turn on chip
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl,#0x0c
	lcall	_dotmatrix_send
;	dotmatrix.c:394: dotmatrix_send(SHUTDOWN_REG, SHUTDOWN_REG_NORMAL_MODE_VAL, DISPLAY2, PLAYER2_UNIT); // turn on chip
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,#0x0c
	lcall	_dotmatrix_send
;	dotmatrix.c:396: for (int unit = 1; unit <= 4; unit++)
	mov	r6,#0x01
	mov	r7,#0x00
00109$:
	clr	c
	mov	a,#0x04
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00102$
;	dotmatrix.c:398: for (int row = 1; row <= EIGHT; row++)
	mov	ar4,r6
	mov	ar5,r7
	mov	r2,#0x01
	mov	r3,#0x00
00106$:
	clr	c
	mov	a,#0x08
	subb	a,r2
	mov	a,#(0x00 ^ 0x80)
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jc	00110$
;	dotmatrix.c:400: dotmatrix_send(row, ZERO, DISPLAY1, unit);
	mov	ar1,r2
	mov	ar0,r4
	mov	dptr,#_dotmatrix_send_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,r0
	movx	@dptr,a
	mov	dpl,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_dotmatrix_send
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	dotmatrix.c:398: for (int row = 1; row <= EIGHT; row++)
	inc	r2
	cjne	r2,#0x00,00106$
	inc	r3
	sjmp	00106$
00110$:
;	dotmatrix.c:396: for (int unit = 1; unit <= 4; unit++)
	inc	r6
	cjne	r6,#0x00,00109$
	inc	r7
	sjmp	00109$
00102$:
;	dotmatrix.c:404: for (int unit = 1; unit <= 4; unit++)
	mov	r6,#0x01
	mov	r7,#0x00
00115$:
	clr	c
	mov	a,#0x04
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00104$
;	dotmatrix.c:406: for (int row = 1; row <= EIGHT; row++)
	mov	ar4,r6
	mov	ar5,r7
	mov	r2,#0x01
	mov	r3,#0x00
00112$:
	clr	c
	mov	a,#0x08
	subb	a,r2
	mov	a,#(0x00 ^ 0x80)
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jc	00116$
;	dotmatrix.c:408: dotmatrix_send(row, ZERO, DISPLAY2, unit);
	mov	ar1,r2
	mov	ar0,r4
	mov	dptr,#_dotmatrix_send_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,r0
	movx	@dptr,a
	mov	dpl,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_dotmatrix_send
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	dotmatrix.c:406: for (int row = 1; row <= EIGHT; row++)
	inc	r2
	cjne	r2,#0x00,00112$
	inc	r3
	sjmp	00112$
00116$:
;	dotmatrix.c:404: for (int unit = 1; unit <= 4; unit++)
	inc	r6
	cjne	r6,#0x00,00115$
	inc	r7
	sjmp	00115$
00104$:
;	dotmatrix.c:412: dotmatrix_send(current_row_location_of_player1, PLAYER1_ROW, DISPLAY1, PLAYER1_UNIT);
	mov	dptr,#_current_row_location_of_player1
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x80
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	inc	a
	movx	@dptr,a
	mov	dpl,r7
	lcall	_dotmatrix_send
;	dotmatrix.c:413: dotmatrix_send(current_row_location_of_player1 + 1, PLAYER1_ROW, DISPLAY1, PLAYER1_UNIT);
	mov	dptr,#_current_row_location_of_player1
	movx	a,@dptr
	mov	r7,a
	inc	r7
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x80
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	inc	a
	movx	@dptr,a
	mov	dpl,r7
	lcall	_dotmatrix_send
;	dotmatrix.c:414: dotmatrix_send(1, PLAYER1_ROW, DISPLAY2, PLAYER1_UNIT);
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x80
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	rl	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_dotmatrix_send
;	dotmatrix.c:415: dotmatrix_send(2, PLAYER1_ROW, DISPLAY2, PLAYER1_UNIT);
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x80
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	rl	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	movx	@dptr,a
	mov	dpl,#0x02
	lcall	_dotmatrix_send
;	dotmatrix.c:417: dotmatrix_send(current_row_location_of_player2, PLAYER2_ROW, DISPLAY1, PLAYER2_UNIT);
	mov	dptr,#_current_row_location_of_player2
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,r7
	lcall	_dotmatrix_send
;	dotmatrix.c:418: dotmatrix_send(current_row_location_of_player2+1, PLAYER2_ROW, DISPLAY1, PLAYER2_UNIT);
	mov	dptr,#_current_row_location_of_player2
	movx	a,@dptr
	mov	r7,a
	inc	r7
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,r7
	lcall	_dotmatrix_send
;	dotmatrix.c:419: dotmatrix_send(1, PLAYER2_ROW, DISPLAY2, PLAYER2_UNIT);
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_dotmatrix_send
;	dotmatrix.c:420: dotmatrix_send(2, PLAYER2_ROW, DISPLAY2, PLAYER2_UNIT);
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,#0x02
	lcall	_dotmatrix_send
;	dotmatrix.c:422: BUZZER_OFF;
;	assignBit
	setb	_P0_2
;	dotmatrix.c:424: }
	ret


;------------------------------------------------------------
;Allocation info for local variables in function 'erase_ball'
;------------------------------------------------------------
;display                   Allocated with name '_erase_ball_display_65536_88'
;unit                      Allocated with name '_erase_ball_unit_65536_88'
;ball_x_range              Allocated with name '_erase_ball_ball_x_range_65536_88'
;ball_y_range              Allocated with name '_erase_ball_ball_y_range_65536_88'
;ball_y_bitwise            Allocated with name '_erase_ball_ball_y_bitwise_65536_88'
;isBallNearPlayer1         Allocated with name '_erase_ball_isBallNearPlayer1_65537_89'
;isBallNearPlayer2         Allocated with name '_erase_ball_isBallNearPlayer2_65537_89'
;data_to_send              Allocated with name '_erase_ball_data_to_send_65537_89'
;------------------------------------------------------------
;	dotmatrix.c:427: void erase_ball()
;	-----------------------------------------
;	 function erase_ball
;	-----------------------------------------
_erase_ball:
;	dotmatrix.c:429: display_t display = get_display(b_x);
	mov	dptr,#_b_x
	movx	a,@dptr
	mov	dpl,a
	lcall	_get_display
	mov	r7,dpl
;	dotmatrix.c:430: uint8_t unit = get_unit(b_y);
	mov	dptr,#_b_y
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	lcall	_get_unit
	mov	r6,dpl
	pop	ar7
;	dotmatrix.c:435: ball_x_range = (b_x & 0x07) ? (b_x & 0x07) : EIGHT;
	mov	dptr,#_b_x
	movx	a,@dptr
	mov	r5,a
	anl	a,#0x07
	jz	00108$
	mov	ar3,r5
	anl	ar3,#0x07
	mov	r4,#0x00
	sjmp	00109$
00108$:
	mov	r3,#0x08
	mov	r4,#0x00
00109$:
;	dotmatrix.c:437: ball_y_range = (b_y & 0x07) ? (EIGHT - ((b_y) & 0x07)) : 0;
	mov	dptr,#_b_y
	movx	a,@dptr
	mov	r4,a
	anl	a,#0x07
	jz	00110$
	mov	a,#0x07
	anl	a,r4
	setb	c
	subb	a,#0x08
	cpl	a
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r4,a
	sjmp	00111$
00110$:
	mov	r2,#0x00
	mov	r4,#0x00
00111$:
;	dotmatrix.c:438: ball_y_bitwise = 0 << ball_y_range;
	mov	b,r2
	inc	b
	clr	a
	sjmp	00158$
00156$:
	add	a,acc
00158$:
	djnz	b,00156$
	mov	r4,a
;	dotmatrix.c:441: uint8_t isBallNearPlayer1 = (((current_row_location_of_player1 <= b_x) && ((current_row_location_of_player1 + 3) >= b_x)) && (unit == 1));
	mov	dptr,#_current_row_location_of_player1
	movx	a,@dptr
	mov	r2,a
	clr	c
	mov	a,r5
	subb	a,r2
	jc	00112$
	push	ar3
	mov	dptr,#_current_row_location_of_player1
	movx	a,@dptr
	mov	r1,a
	mov	r2,#0x00
	mov	a,#0x03
	add	a,r1
	mov	r1,a
	clr	a
	addc	a,r2
	mov	r2,a
	mov	ar0,r5
	mov	r3,#0x00
	clr	c
	mov	a,r1
	subb	a,r0
	mov	a,r2
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	pop	ar3
	jc	00112$
	cjne	r6,#0x01,00161$
	sjmp	00113$
00161$:
00112$:
	mov	r2,#0x00
	sjmp	00114$
00113$:
	mov	r2,#0x01
00114$:
;	dotmatrix.c:442: uint8_t isBallNearPlayer2 = (((current_row_location_of_player2 <= b_x) && ((current_row_location_of_player2 + 3) >= b_x)) && (unit == 4));
	mov	dptr,#_current_row_location_of_player2
	movx	a,@dptr
	mov	r1,a
	clr	c
	mov	a,r5
	subb	a,r1
	jc	00118$
	push	ar2
	mov	dptr,#_current_row_location_of_player2
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	mov	a,#0x03
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	r1,a
	mov	ar2,r5
	mov	r5,#0x00
	clr	c
	mov	a,r0
	subb	a,r2
	mov	a,r1
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	pop	ar2
	jc	00118$
	cjne	r6,#0x04,00164$
	sjmp	00119$
00164$:
00118$:
	mov	r5,#0x00
	sjmp	00120$
00119$:
	mov	r5,#0x01
00120$:
;	dotmatrix.c:444: uint8_t data_to_send = ball_y_bitwise;
	mov	dptr,#_erase_ball_data_to_send_65537_89
	mov	a,r4
	movx	@dptr,a
;	dotmatrix.c:445: if (isBallNearPlayer1)
	mov	a,r2
	jz	00104$
;	dotmatrix.c:447: data_to_send |= 0b10000000;
	mov	dptr,#_erase_ball_data_to_send_65537_89
	mov	a,#0x80
	orl	a,r4
	movx	@dptr,a
	sjmp	00105$
00104$:
;	dotmatrix.c:449: else if (isBallNearPlayer2)
	mov	a,r5
	jz	00105$
;	dotmatrix.c:451: data_to_send |= 0b00000001;
	mov	dptr,#_erase_ball_data_to_send_65537_89
	mov	a,#0x01
	orl	a,r4
	movx	@dptr,a
00105$:
;	dotmatrix.c:453: dotmatrix_send(ball_x_range, data_to_send, display, unit);
	mov	dptr,#_erase_ball_data_to_send_65537_89
	movx	a,@dptr
	mov	dptr,#_dotmatrix_send_PARM_2
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,r6
	movx	@dptr,a
	mov	dpl,r3
;	dotmatrix.c:455: return;
;	dotmatrix.c:456: }
	ljmp	_dotmatrix_send
;------------------------------------------------------------
;Allocation info for local variables in function 'draw_ball'
;------------------------------------------------------------
;display                   Allocated with name '_draw_ball_display_65537_93'
;unit                      Allocated with name '_draw_ball_unit_65537_93'
;ball_x_range              Allocated with name '_draw_ball_ball_x_range_65537_93'
;ball_y_range              Allocated with name '_draw_ball_ball_y_range_65537_93'
;ball_y_bitwise            Allocated with name '_draw_ball_ball_y_bitwise_65537_93'
;isBallNearPlayer1         Allocated with name '_draw_ball_isBallNearPlayer1_65538_94'
;isBallNearPlayer2         Allocated with name '_draw_ball_isBallNearPlayer2_65538_94'
;data_to_send              Allocated with name '_draw_ball_data_to_send_65538_94'
;------------------------------------------------------------
;	dotmatrix.c:459: void draw_ball()
;	-----------------------------------------
;	 function draw_ball
;	-----------------------------------------
_draw_ball:
;	dotmatrix.c:461: increment();
	lcall	_increment
;	dotmatrix.c:462: display_t display = get_display(b_x);
	mov	dptr,#_b_x
	movx	a,@dptr
	mov	dpl,a
	lcall	_get_display
	mov	r7,dpl
;	dotmatrix.c:463: uint8_t unit = get_unit(b_y);
	mov	dptr,#_b_y
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	lcall	_get_unit
	mov	r6,dpl
	pop	ar7
;	dotmatrix.c:468: ball_x_range = (b_x & 0x07) ? (b_x & 0x07) : EIGHT;
	mov	dptr,#_b_x
	movx	a,@dptr
	mov	r5,a
	anl	a,#0x07
	jz	00108$
	mov	ar3,r5
	anl	ar3,#0x07
	mov	r4,#0x00
	sjmp	00109$
00108$:
	mov	r3,#0x08
	mov	r4,#0x00
00109$:
;	dotmatrix.c:470: ball_y_range = (b_y & 0x07) ? (EIGHT - ((b_y) & 0x07)) : 0;
	mov	dptr,#_b_y
	movx	a,@dptr
	mov	r4,a
	anl	a,#0x07
	jz	00110$
	mov	a,#0x07
	anl	a,r4
	setb	c
	subb	a,#0x08
	cpl	a
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r4,a
	sjmp	00111$
00110$:
	mov	r2,#0x00
	mov	r4,#0x00
00111$:
;	dotmatrix.c:471: ball_y_bitwise = 1 << ball_y_range;
	mov	b,r2
	inc	b
	mov	a,#0x01
	sjmp	00158$
00156$:
	add	a,acc
00158$:
	djnz	b,00156$
	mov	r4,a
;	dotmatrix.c:474: uint8_t isBallNearPlayer1 = (((current_row_location_of_player1 <= b_x) && ((current_row_location_of_player1 + 3) >= b_x)) && (unit == 1));
	mov	dptr,#_current_row_location_of_player1
	movx	a,@dptr
	mov	r2,a
	clr	c
	mov	a,r5
	subb	a,r2
	jc	00112$
	push	ar3
	mov	dptr,#_current_row_location_of_player1
	movx	a,@dptr
	mov	r1,a
	mov	r2,#0x00
	mov	a,#0x03
	add	a,r1
	mov	r1,a
	clr	a
	addc	a,r2
	mov	r2,a
	mov	ar0,r5
	mov	r3,#0x00
	clr	c
	mov	a,r1
	subb	a,r0
	mov	a,r2
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	pop	ar3
	jc	00112$
	cjne	r6,#0x01,00161$
	sjmp	00113$
00161$:
00112$:
	mov	r2,#0x00
	sjmp	00114$
00113$:
	mov	r2,#0x01
00114$:
;	dotmatrix.c:475: uint8_t isBallNearPlayer2 = (((current_row_location_of_player2 <= b_x) && ((current_row_location_of_player2 + 3) >= b_x)) && (unit == 4));
	mov	dptr,#_current_row_location_of_player2
	movx	a,@dptr
	mov	r1,a
	clr	c
	mov	a,r5
	subb	a,r1
	jc	00118$
	push	ar2
	mov	dptr,#_current_row_location_of_player2
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	mov	a,#0x03
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	r1,a
	mov	ar2,r5
	mov	r5,#0x00
	clr	c
	mov	a,r0
	subb	a,r2
	mov	a,r1
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	pop	ar2
	jc	00118$
	cjne	r6,#0x04,00164$
	sjmp	00119$
00164$:
00118$:
	mov	r5,#0x00
	sjmp	00120$
00119$:
	mov	r5,#0x01
00120$:
;	dotmatrix.c:477: uint8_t data_to_send = ball_y_bitwise;
	mov	dptr,#_draw_ball_data_to_send_65538_94
	mov	a,r4
	movx	@dptr,a
;	dotmatrix.c:478: if (isBallNearPlayer1)
	mov	a,r2
	jz	00104$
;	dotmatrix.c:480: data_to_send |= 0b10000000;
	mov	dptr,#_draw_ball_data_to_send_65538_94
	mov	a,#0x80
	orl	a,r4
	movx	@dptr,a
	sjmp	00105$
00104$:
;	dotmatrix.c:482: else if (isBallNearPlayer2)
	mov	a,r5
	jz	00105$
;	dotmatrix.c:484: data_to_send |= 0b00000001;
	mov	dptr,#_draw_ball_data_to_send_65538_94
	mov	a,#0x01
	orl	a,r4
	movx	@dptr,a
00105$:
;	dotmatrix.c:486: dotmatrix_send(ball_x_range, data_to_send, display, unit);
	mov	dptr,#_draw_ball_data_to_send_65538_94
	movx	a,@dptr
	mov	dptr,#_dotmatrix_send_PARM_2
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,r6
	movx	@dptr,a
	mov	dpl,r3
;	dotmatrix.c:488: return;
;	dotmatrix.c:489: }
	ljmp	_dotmatrix_send
;------------------------------------------------------------
;Allocation info for local variables in function 'ball_y'
;------------------------------------------------------------
;	dotmatrix.c:491: uint8_t ball_y(void)
;	-----------------------------------------
;	 function ball_y
;	-----------------------------------------
_ball_y:
;	dotmatrix.c:493: return (b_y);
	mov	dptr,#_b_y
	movx	a,@dptr
;	dotmatrix.c:494: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ball_x'
;------------------------------------------------------------
;	dotmatrix.c:496: uint8_t ball_x(void)
;	-----------------------------------------
;	 function ball_x
;	-----------------------------------------
_ball_x:
;	dotmatrix.c:498: return (b_x);
	mov	dptr,#_b_x
	movx	a,@dptr
;	dotmatrix.c:499: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'change_ball'
;------------------------------------------------------------
;y                         Allocated with name '_change_ball_PARM_2'
;x                         Allocated with name '_change_ball_x_65536_101'
;------------------------------------------------------------
;	dotmatrix.c:501: void change_ball(uint8_t x, uint8_t y)
;	-----------------------------------------
;	 function change_ball
;	-----------------------------------------
_change_ball:
	mov	a,dpl
	mov	dptr,#_change_ball_x_65536_101
	movx	@dptr,a
;	dotmatrix.c:503: if (x > THIRTY_TWO || y > EIGHT)
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x20
	jc	00101$
	mov	dptr,#_change_ball_PARM_2
	movx	a,@dptr
	mov  r6,a
	add	a,#0xff - 0x08
	jnc	00102$
00101$:
;	dotmatrix.c:504: return;
	ret
00102$:
;	dotmatrix.c:505: b_y = x;
	mov	dptr,#_b_y
	mov	a,r7
	movx	@dptr,a
;	dotmatrix.c:506: b_x = y;
	mov	dptr,#_b_x
	mov	a,r6
	movx	@dptr,a
;	dotmatrix.c:507: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'increment'
;------------------------------------------------------------
;isBallNearPlayer2         Allocated with name '_increment_isBallNearPlayer2_131073_106'
;i                         Allocated with name '_increment_i_262145_109'
;isBallNearPlayer1         Allocated with name '_increment_isBallNearPlayer1_131073_111'
;i                         Allocated with name '_increment_i_262145_114'
;------------------------------------------------------------
;	dotmatrix.c:509: void increment(void)
;	-----------------------------------------
;	 function increment
;	-----------------------------------------
_increment:
;	dotmatrix.c:511: if (b_y == THIRTY_TWO && direction_y == 1)
	mov	dptr,#_b_y
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x20,00221$
	sjmp	00222$
00221$:
	ljmp	00115$
00222$:
	mov	dptr,#_direction_y
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x01,00223$
	sjmp	00224$
00223$:
	ljmp	00115$
00224$:
;	dotmatrix.c:513: direction_y = 0;
	mov	dptr,#_direction_y
	clr	a
	movx	@dptr,a
;	dotmatrix.c:514: uint8_t isBallNearPlayer2 = (((current_row_location_of_player2 <= b_x) && ((current_row_location_of_player2 + 3) >= b_x)));
	mov	dptr,#_current_row_location_of_player2
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_b_x
	movx	a,@dptr
	mov	r5,a
	clr	c
	subb	a,r6
	jc	00141$
	mov	dptr,#_current_row_location_of_player2
	movx	a,@dptr
	mov	r6,a
	mov	r4,#0x00
	mov	a,#0x03
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	r3,#0x00
	clr	c
	mov	a,r6
	subb	a,r5
	mov	a,r4
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jc	00226$
	ljmp	00116$
00226$:
00141$:
;	dotmatrix.c:517: if(player_points[PLAYER1] == MAX_SCORE){
	mov	dptr,#_player_points
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x04,00102$
;	dotmatrix.c:518: setGameState(OVER);
	mov	dpl,#0x02
	lcall	_setGameState
;	dotmatrix.c:519: clear_display();
	lcall	_clear_display
;	dotmatrix.c:520: display_explosion(PLAYER1);
	mov	dpl,#0x00
	lcall	_display_explosion
;	dotmatrix.c:521: player_points[0] = 0;
	mov	dptr,#_player_points
	clr	a
	movx	@dptr,a
;	dotmatrix.c:522: player_points[1] = 0;
	mov	dptr,#(_player_points + 0x0001)
	movx	@dptr,a
;	dotmatrix.c:523: return;
	ret
00102$:
;	dotmatrix.c:525: BUZZER_ON;
;	assignBit
	clr	_P0_2
;	dotmatrix.c:526: player_points[PLAYER1] += 1;
	inc	r6
	mov	dptr,#_player_points
	mov	a,r6
	movx	@dptr,a
;	dotmatrix.c:527: setGameState(STOP);
	mov	dpl,#0x01
	lcall	_setGameState
;	dotmatrix.c:528: clear_display();
	lcall	_clear_display
;	dotmatrix.c:529: for(int i=0; i<=10;i++);
	mov	r5,#0x00
	mov	r6,#0x00
00132$:
	clr	c
	mov	a,#0x0a
	subb	a,r5
	mov	a,#(0x00 ^ 0x80)
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jc	00103$
	inc	r5
	cjne	r5,#0x00,00132$
	inc	r6
	sjmp	00132$
00103$:
;	dotmatrix.c:530: initialize_controller();
	lcall	_initialize_controller
	ljmp	00116$
00115$:
;	dotmatrix.c:533: else if (b_y == 1 && direction_y == 0)
	cjne	r7,#0x01,00231$
	sjmp	00232$
00231$:
	ljmp	00116$
00232$:
	mov	dptr,#_direction_y
	movx	a,@dptr
	jz	00233$
	ljmp	00116$
00233$:
;	dotmatrix.c:535: direction_y = 1;
	mov	dptr,#_direction_y
	mov	a,#0x01
	movx	@dptr,a
;	dotmatrix.c:537: uint8_t isBallNearPlayer1 = (((current_row_location_of_player1 <= b_x) && ((current_row_location_of_player1 + 3) >= b_x)));
	mov	dptr,#_current_row_location_of_player1
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_b_x
	movx	a,@dptr
	mov	r6,a
	clr	c
	subb	a,r7
	jc	00144$
	mov	dptr,#_current_row_location_of_player1
	movx	a,@dptr
	mov	r7,a
	mov	r5,#0x00
	mov	a,#0x03
	add	a,r7
	mov	r7,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	r4,#0x00
	clr	c
	mov	a,r7
	subb	a,r6
	mov	a,r5
	xrl	a,#0x80
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00116$
00144$:
;	dotmatrix.c:540: if(player_points[PLAYER2] == MAX_SCORE){
	mov	dptr,#(_player_points + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,00107$
;	dotmatrix.c:541: clear_display();
	lcall	_clear_display
;	dotmatrix.c:542: display_explosion(PLAYER2);
	mov	dpl,#0x01
	lcall	_display_explosion
;	dotmatrix.c:543: setGameState(OVER);
	mov	dpl,#0x02
	lcall	_setGameState
;	dotmatrix.c:544: player_points[0] = 0;
	mov	dptr,#_player_points
	clr	a
	movx	@dptr,a
;	dotmatrix.c:545: player_points[1] = 0;
	mov	dptr,#(_player_points + 0x0001)
	movx	@dptr,a
;	dotmatrix.c:546: return;
	ret
00107$:
;	dotmatrix.c:548: BUZZER_ON;
;	assignBit
	clr	_P0_2
;	dotmatrix.c:549: player_points[PLAYER2] += 1;
	inc	r7
	mov	dptr,#(_player_points + 0x0001)
	mov	a,r7
	movx	@dptr,a
;	dotmatrix.c:550: setGameState(STOP);
	mov	dpl,#0x01
	lcall	_setGameState
;	dotmatrix.c:551: clear_display();
	lcall	_clear_display
;	dotmatrix.c:552: for(int i=0; i<=10;i++);
	mov	r6,#0x00
	mov	r7,#0x00
00135$:
	clr	c
	mov	a,#0x0a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00108$
	inc	r6
	cjne	r6,#0x00,00135$
	inc	r7
	sjmp	00135$
00108$:
;	dotmatrix.c:553: initialize_controller();
	lcall	_initialize_controller
00116$:
;	dotmatrix.c:557: if (direction_y == 1)
	mov	dptr,#_direction_y
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00119$
;	dotmatrix.c:558: b_y++;
	mov	dptr,#_b_y
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	sjmp	00120$
00119$:
;	dotmatrix.c:560: b_y--;
	mov	dptr,#_b_y
	movx	a,@dptr
	dec	a
	movx	@dptr,a
00120$:
;	dotmatrix.c:562: if (b_x == SIXTEEN && direction_x == 1)
	mov	dptr,#_b_x
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x10,00125$
	mov	dptr,#_direction_x
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x01,00125$
;	dotmatrix.c:563: direction_x = 0;
	mov	dptr,#_direction_x
	clr	a
	movx	@dptr,a
	sjmp	00126$
00125$:
;	dotmatrix.c:564: else if (b_x == 1 && direction_x == 0)
	cjne	r7,#0x01,00126$
	mov	dptr,#_direction_x
	movx	a,@dptr
	jnz	00126$
;	dotmatrix.c:565: direction_x = 1;
	mov	dptr,#_direction_x
	mov	a,#0x01
	movx	@dptr,a
00126$:
;	dotmatrix.c:567: if (direction_x == 1)
	mov	dptr,#_direction_x
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x01,00129$
;	dotmatrix.c:568: b_x++;
	mov	dptr,#_b_x
	mov	a,r7
	inc	a
	movx	@dptr,a
	ret
00129$:
;	dotmatrix.c:570: b_x--;
	mov	a,r7
	dec	a
	mov	dptr,#_b_x
	movx	@dptr,a
;	dotmatrix.c:571: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'display_explosion_pattern'
;------------------------------------------------------------
;sloc0                     Allocated with name '_display_explosion_pattern_sloc0_1_0'
;sloc1                     Allocated with name '_display_explosion_pattern_sloc1_1_0'
;sloc2                     Allocated with name '_display_explosion_pattern_sloc2_1_0'
;pattern                   Allocated with name '_display_explosion_pattern_pattern_65536_115'
;unit                      Allocated with name '_display_explosion_pattern_unit_131072_117'
;row                       Allocated with name '_display_explosion_pattern_row_262144_119'
;------------------------------------------------------------
;	dotmatrix.c:573: void display_explosion_pattern(uint8_t pattern[2][8])
;	-----------------------------------------
;	 function display_explosion_pattern
;	-----------------------------------------
_display_explosion_pattern:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_display_explosion_pattern_pattern_65536_115
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	dotmatrix.c:575: for (int unit = 1; unit <= 4; unit++)
	mov	dptr,#_display_explosion_pattern_pattern_65536_115
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x08
	add	a,r5
	mov	_display_explosion_pattern_sloc2_1_0,a
	clr	a
	addc	a,r6
	mov	(_display_explosion_pattern_sloc2_1_0 + 1),a
	mov	(_display_explosion_pattern_sloc2_1_0 + 2),r7
	mov	r0,#0x01
	mov	r1,#0x00
00107$:
	clr	c
	mov	a,#0x04
	subb	a,r0
	mov	a,#(0x00 ^ 0x80)
	mov	b,r1
	xrl	b,#0x80
	subb	a,b
	jnc	00129$
	ret
00129$:
;	dotmatrix.c:577: for (int row = 0; row < 8; row++)
	mov	_display_explosion_pattern_sloc0_1_0,r0
	mov	(_display_explosion_pattern_sloc0_1_0 + 1),r1
	clr	a
	mov	_display_explosion_pattern_sloc1_1_0,a
	mov	(_display_explosion_pattern_sloc1_1_0 + 1),a
00104$:
	clr	c
	mov	a,_display_explosion_pattern_sloc1_1_0
	subb	a,#0x08
	mov	a,(_display_explosion_pattern_sloc1_1_0 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jc	00130$
	ljmp	00108$
00130$:
;	dotmatrix.c:579: dotmatrix_send(row + 1, pattern[0][row], DISPLAY1, unit);
	push	ar0
	push	ar1
	mov	r1,_display_explosion_pattern_sloc1_1_0
	inc	r1
	mov	a,_display_explosion_pattern_sloc1_1_0
	add	a,r5
	mov	r0,a
	mov	a,(_display_explosion_pattern_sloc1_1_0 + 1)
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	mov	r4,_display_explosion_pattern_sloc0_1_0
	mov	dptr,#_dotmatrix_send_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,r4
	movx	@dptr,a
	mov	dpl,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar1
	push	ar0
	lcall	_dotmatrix_send
	pop	ar0
	pop	ar1
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	dotmatrix.c:580: dotmatrix_send(row + 1, pattern[1][row], DISPLAY2, unit);
	mov	a,_display_explosion_pattern_sloc1_1_0
	add	a,_display_explosion_pattern_sloc2_1_0
	mov	r0,a
	mov	a,(_display_explosion_pattern_sloc1_1_0 + 1)
	addc	a,(_display_explosion_pattern_sloc2_1_0 + 1)
	mov	r2,a
	mov	r3,(_display_explosion_pattern_sloc2_1_0 + 2)
	mov	dpl,r0
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r0,a
	mov	dptr,#_dotmatrix_send_PARM_2
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,r4
	movx	@dptr,a
	mov	dpl,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar1
	push	ar0
	lcall	_dotmatrix_send
	pop	ar0
	pop	ar1
	pop	ar5
	pop	ar6
	pop	ar7
;	dotmatrix.c:577: for (int row = 0; row < 8; row++)
	inc	_display_explosion_pattern_sloc1_1_0
	clr	a
	cjne	a,_display_explosion_pattern_sloc1_1_0,00131$
	inc	(_display_explosion_pattern_sloc1_1_0 + 1)
00131$:
	pop	ar1
	pop	ar0
	ljmp	00104$
00108$:
;	dotmatrix.c:575: for (int unit = 1; unit <= 4; unit++)
	inc	r0
	cjne	r0,#0x00,00132$
	inc	r1
00132$:
;	dotmatrix.c:583: }
	ljmp	00107$
;------------------------------------------------------------
;Allocation info for local variables in function 'display_character'
;------------------------------------------------------------
;sloc0                     Allocated with name '_display_character_sloc0_1_0'
;sloc1                     Allocated with name '_display_character_sloc1_1_0'
;sloc2                     Allocated with name '_display_character_sloc2_1_0'
;unit                      Allocated with name '_display_character_PARM_2'
;display                   Allocated with name '_display_character_PARM_3'
;character                 Allocated with name '_display_character_character_65536_121'
;i                         Allocated with name '_display_character_i_131072_123'
;------------------------------------------------------------
;	dotmatrix.c:585: void display_character(uint8_t *character, uint8_t unit, display_t display)
;	-----------------------------------------
;	 function display_character
;	-----------------------------------------
_display_character:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_display_character_character_65536_121
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	dotmatrix.c:587: for (int i = 0; i < 8; i++)
	mov	dptr,#_display_character_character_65536_121
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_display_character_PARM_3
	movx	a,@dptr
	mov	_display_character_sloc1_1_0,a
	mov	dptr,#_display_character_PARM_2
	movx	a,@dptr
	mov	_display_character_sloc0_1_0,a
	mov	r1,#0x00
	mov	r2,#0x00
00103$:
	clr	c
	mov	a,r1
	subb	a,#0x08
	mov	a,r2
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00105$
;	dotmatrix.c:589: dotmatrix_send(i + 1, character[i], display, unit);
	mov	ar0,r1
	mov	a,r0
	inc	a
	mov	_display_character_sloc2_1_0,a
	mov	a,r1
	add	a,r5
	mov	r0,a
	mov	a,r2
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dptr,#_dotmatrix_send_PARM_2
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	mov	a,_display_character_sloc1_1_0
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,_display_character_sloc0_1_0
	movx	@dptr,a
	mov	dpl,_display_character_sloc2_1_0
	push	ar7
	push	ar6
	push	ar5
	push	ar2
	push	ar1
	lcall	_dotmatrix_send
	pop	ar1
	pop	ar2
	pop	ar5
	pop	ar6
	pop	ar7
;	dotmatrix.c:587: for (int i = 0; i < 8; i++)
	inc	r1
	cjne	r1,#0x00,00103$
	inc	r2
	sjmp	00103$
00105$:
;	dotmatrix.c:591: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clear_display'
;------------------------------------------------------------
;unit                      Allocated with name '_clear_display_unit_131072_126'
;row                       Allocated with name '_clear_display_row_262144_128'
;unit                      Allocated with name '_clear_display_unit_131072_130'
;row                       Allocated with name '_clear_display_row_262144_132'
;------------------------------------------------------------
;	dotmatrix.c:593: void clear_display(){
;	-----------------------------------------
;	 function clear_display
;	-----------------------------------------
_clear_display:
;	dotmatrix.c:594: for (int unit = 1; unit <= 4; unit++)
	mov	r6,#0x01
	mov	r7,#0x00
00109$:
	clr	c
	mov	a,#0x04
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00102$
;	dotmatrix.c:596: for (int row = 1; row <= EIGHT; row++)
	mov	ar4,r6
	mov	ar5,r7
	mov	r2,#0x01
	mov	r3,#0x00
00106$:
	clr	c
	mov	a,#0x08
	subb	a,r2
	mov	a,#(0x00 ^ 0x80)
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jc	00110$
;	dotmatrix.c:598: dotmatrix_send(row, ZERO, DISPLAY1, unit);
	mov	ar1,r2
	mov	ar0,r4
	mov	dptr,#_dotmatrix_send_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,r0
	movx	@dptr,a
	mov	dpl,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_dotmatrix_send
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	dotmatrix.c:596: for (int row = 1; row <= EIGHT; row++)
	inc	r2
	cjne	r2,#0x00,00106$
	inc	r3
	sjmp	00106$
00110$:
;	dotmatrix.c:594: for (int unit = 1; unit <= 4; unit++)
	inc	r6
	cjne	r6,#0x00,00109$
	inc	r7
	sjmp	00109$
00102$:
;	dotmatrix.c:602: for (int unit = 1; unit <= 4; unit++)
	mov	r6,#0x01
	mov	r7,#0x00
00115$:
	clr	c
	mov	a,#0x04
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00117$
;	dotmatrix.c:604: for (int row = 1; row <= EIGHT; row++)
	mov	ar4,r6
	mov	ar5,r7
	mov	r2,#0x01
	mov	r3,#0x00
00112$:
	clr	c
	mov	a,#0x08
	subb	a,r2
	mov	a,#(0x00 ^ 0x80)
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jc	00116$
;	dotmatrix.c:606: dotmatrix_send(row, ZERO, DISPLAY2, unit);
	mov	ar1,r2
	mov	ar0,r4
	mov	dptr,#_dotmatrix_send_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_dotmatrix_send_PARM_4
	mov	a,r0
	movx	@dptr,a
	mov	dpl,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_dotmatrix_send
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	dotmatrix.c:604: for (int row = 1; row <= EIGHT; row++)
	inc	r2
	cjne	r2,#0x00,00112$
	inc	r3
	sjmp	00112$
00116$:
;	dotmatrix.c:602: for (int unit = 1; unit <= 4; unit++)
	inc	r6
	cjne	r6,#0x00,00115$
	inc	r7
	sjmp	00115$
00117$:
;	dotmatrix.c:609: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'display_explosion'
;------------------------------------------------------------
;player                    Allocated with name '_display_explosion_player_65536_134'
;i                         Allocated with name '_display_explosion_i_65536_135'
;j                         Allocated with name '_display_explosion_j_65536_135'
;player_array              Allocated with name '_display_explosion_player_array_65536_135'
;explosion                 Allocated with name '_display_explosion_explosion_131072_136'
;j                         Allocated with name '_display_explosion_j_131072_144'
;------------------------------------------------------------
;	dotmatrix.c:612: void display_explosion(player_t player)
;	-----------------------------------------
;	 function display_explosion
;	-----------------------------------------
_display_explosion:
	mov	a,dpl
	mov	dptr,#_display_explosion_player_65536_134
	movx	@dptr,a
;	dotmatrix.c:616: uint8_t *player_array = (player == PLAYER1) ? number_1 : number_2;
	movx	a,@dptr
	jnz	00125$
	mov	r6,#_number_1
	mov	r7,#(_number_1 >> 8)
	sjmp	00126$
00125$:
	mov	r6,#_number_2
	mov	r7,#(_number_2 >> 8)
00126$:
	mov	ar5,r7
	mov	r7,#0x00
;	dotmatrix.c:618: for(int explosion=0; explosion<4; explosion++){
	mov	r3,#0x00
	mov	r4,#0x00
00118$:
	clr	c
	mov	a,r3
	subb	a,#0x04
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00105$
;	dotmatrix.c:619: BUZZER_ON;
;	assignBit
	clr	_P0_2
;	dotmatrix.c:621: display_explosion_pattern(explosion_small);
	mov	dptr,#_explosion_small
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_display_explosion_pattern
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	dotmatrix.c:622: for(i=0; i<200; i++){
	mov	r2,#0x00
;	dotmatrix.c:623: for(j=0;j<20;j++);
00129$:
	mov	r1,#0x14
00109$:
	dec	r1
	mov	a,r1
	jnz	00109$
;	dotmatrix.c:622: for(i=0; i<200; i++){
	inc	r2
	cjne	r2,#0xc8,00188$
00188$:
	jc	00129$
;	dotmatrix.c:625: display_explosion_pattern(explosion_large);
	mov	dptr,#_explosion_large
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_display_explosion_pattern
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	dotmatrix.c:626: for(i=0; i<200; i++){
	mov	r2,#0x00
;	dotmatrix.c:627: for(j=0;j<20;j++);
00133$:
	mov	r1,#0x14
00114$:
	dec	r1
	mov	a,r1
	jnz	00114$
;	dotmatrix.c:626: for(i=0; i<200; i++){
	inc	r2
	cjne	r2,#0xc8,00191$
00191$:
	jc	00133$
;	dotmatrix.c:630: BUZZER_OFF;
;	assignBit
	setb	_P0_2
;	dotmatrix.c:618: for(int explosion=0; explosion<4; explosion++){
	inc	r3
	cjne	r3,#0x00,00118$
	inc	r4
	sjmp	00118$
00105$:
;	dotmatrix.c:634: display_character(letter_G, 1, DISPLAY1);
	mov	dptr,#_display_character_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_display_character_PARM_3
	clr	a
	movx	@dptr,a
	mov	dptr,#_letter_G
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	lcall	_display_character
	pop	ar5
	pop	ar6
	pop	ar7
;	dotmatrix.c:635: display_character(letter_A, 2, DISPLAY1);
	mov	dptr,#_display_character_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_display_character_PARM_3
	clr	a
	movx	@dptr,a
	mov	dptr,#_letter_A
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	lcall	_display_character
	pop	ar5
	pop	ar6
	pop	ar7
;	dotmatrix.c:636: display_character(letter_M, 3, DISPLAY1);
	mov	dptr,#_display_character_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#_display_character_PARM_3
	clr	a
	movx	@dptr,a
	mov	dptr,#_letter_M
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	lcall	_display_character
	pop	ar5
	pop	ar6
	pop	ar7
;	dotmatrix.c:637: display_character(letter_E, 4, DISPLAY1);
	mov	dptr,#_display_character_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#_display_character_PARM_3
	clr	a
	movx	@dptr,a
	mov	dptr,#_letter_E
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	lcall	_display_character
	pop	ar5
	pop	ar6
	pop	ar7
;	dotmatrix.c:639: display_character(letter_O, 1, DISPLAY2);
	mov	dptr,#_display_character_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_display_character_PARM_3
	movx	@dptr,a
	mov	dptr,#_letter_O
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	lcall	_display_character
	pop	ar5
	pop	ar6
	pop	ar7
;	dotmatrix.c:640: display_character(letter_V, 2, DISPLAY2);
	mov	dptr,#_display_character_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_display_character_PARM_3
	dec	a
	movx	@dptr,a
	mov	dptr,#_letter_V
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	lcall	_display_character
	pop	ar5
	pop	ar6
	pop	ar7
;	dotmatrix.c:641: display_character(letter_E, 3, DISPLAY2);
	mov	dptr,#_display_character_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#_display_character_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_letter_E
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	lcall	_display_character
	pop	ar5
	pop	ar6
	pop	ar7
;	dotmatrix.c:642: display_character(letter_R, 4, DISPLAY2);
	mov	dptr,#_display_character_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#_display_character_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_letter_R
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	lcall	_display_character
	pop	ar5
	pop	ar6
	pop	ar7
;	dotmatrix.c:644: for (uint16_t j=0; j<= 25000; j++);
	mov	r3,#0x00
	mov	r4,#0x00
00121$:
	mov	ar1,r3
	mov	ar2,r4
	clr	c
	mov	a,#0xa8
	subb	a,r1
	mov	a,#0x61
	subb	a,r2
	jc	00106$
	inc	r3
	cjne	r3,#0x00,00121$
	inc	r4
	sjmp	00121$
00106$:
;	dotmatrix.c:645: clear_display();
	push	ar7
	push	ar6
	push	ar5
	lcall	_clear_display
	pop	ar5
	pop	ar6
	pop	ar7
;	dotmatrix.c:646: display_character(letter_P, 2, DISPLAY1);
	mov	dptr,#_display_character_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_display_character_PARM_3
	clr	a
	movx	@dptr,a
	mov	dptr,#_letter_P
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	lcall	_display_character
	pop	ar5
	pop	ar6
	pop	ar7
;	dotmatrix.c:647: display_character(player_array, 3, DISPLAY1);
	mov	dptr,#_display_character_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#_display_character_PARM_3
	clr	a
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r5
	mov	b,r7
	lcall	_display_character
;	dotmatrix.c:649: display_character(letter_W, 1, DISPLAY2);
	mov	dptr,#_display_character_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_display_character_PARM_3
	movx	@dptr,a
	mov	dptr,#_letter_W
	mov	b,#0x00
	lcall	_display_character
;	dotmatrix.c:650: display_character(letter_O, 2, DISPLAY2);
	mov	dptr,#_display_character_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_display_character_PARM_3
	dec	a
	movx	@dptr,a
	mov	dptr,#_letter_O
	mov	b,#0x00
	lcall	_display_character
;	dotmatrix.c:651: display_character(letter_N, 3, DISPLAY2);
	mov	dptr,#_display_character_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#_display_character_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_letter_N
	mov	b,#0x00
;	dotmatrix.c:654: }
	ljmp	_display_character
;------------------------------------------------------------
;Allocation info for local variables in function 'score_to_binary'
;------------------------------------------------------------
;score                     Allocated with name '_score_to_binary_score_65536_145'
;binary_representation     Allocated with name '_score_to_binary_binary_representation_65536_146'
;i                         Allocated with name '_score_to_binary_i_131072_147'
;------------------------------------------------------------
;	dotmatrix.c:656: uint8_t score_to_binary(uint8_t score) {
;	-----------------------------------------
;	 function score_to_binary
;	-----------------------------------------
_score_to_binary:
	mov	a,dpl
	mov	dptr,#_score_to_binary_score_65536_145
	movx	@dptr,a
;	dotmatrix.c:657: uint8_t binary_representation = 0;
	mov	dptr,#_score_to_binary_binary_representation_65536_146
	clr	a
	movx	@dptr,a
;	dotmatrix.c:659: for (int i = 0; i < score; i++) {
	mov	dptr,#_score_to_binary_score_65536_145
	movx	a,@dptr
	mov	r7,a
	mov	r5,#0x00
	mov	r6,#0x00
00103$:
	mov	ar3,r7
	mov	r4,#0x00
	clr	c
	mov	a,r5
	subb	a,r3
	mov	a,r6
	xrl	a,#0x80
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00101$
;	dotmatrix.c:660: binary_representation |= (1 << i);
	mov	ar4,r5
	mov	b,r4
	inc	b
	mov	a,#0x01
	sjmp	00119$
00117$:
	add	a,acc
00119$:
	djnz	b,00117$
	mov	r4,a
	mov	dptr,#_score_to_binary_binary_representation_65536_146
	movx	a,@dptr
	orl	a,r4
	movx	@dptr,a
;	dotmatrix.c:659: for (int i = 0; i < score; i++) {
	inc	r5
	cjne	r5,#0x00,00103$
	inc	r6
	sjmp	00103$
00101$:
;	dotmatrix.c:663: return binary_representation;
	mov	dptr,#_score_to_binary_binary_representation_65536_146
	movx	a,@dptr
;	dotmatrix.c:664: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_score'
;------------------------------------------------------------
;p_player1                 Allocated with name '_send_score_p_player1_65536_149'
;p_player2                 Allocated with name '_send_score_p_player2_65536_149'
;data                      Allocated with name '_send_score_data_65536_149'
;------------------------------------------------------------
;	dotmatrix.c:666: void send_score(){
;	-----------------------------------------
;	 function send_score
;	-----------------------------------------
_send_score:
;	dotmatrix.c:667: uint8_t p_player1 = score_to_binary(player_points[PLAYER1]);
	mov	dptr,#_player_points
	movx	a,@dptr
	mov	dpl,a
	lcall	_score_to_binary
	mov	r7,dpl
;	dotmatrix.c:668: uint8_t p_player2 = score_to_binary(player_points[PLAYER2]);
	mov	dptr,#(_player_points + 0x0001)
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	lcall	_score_to_binary
	mov	r6,dpl
	pop	ar7
;	dotmatrix.c:671: shift_data((p_player2 << 4 | p_player1));
	mov	a,r6
	swap	a
	anl	a,#0xf0
	orl	ar7,a
	mov	dpl,r7
;	dotmatrix.c:672: }
	ljmp	_shift_data
;------------------------------------------------------------
;Allocation info for local variables in function 'shift_data'
;------------------------------------------------------------
;data                      Allocated with name '_shift_data_data_65536_150'
;whole_data                Allocated with name '_shift_data_whole_data_65537_152'
;i                         Allocated with name '_shift_data_i_131073_153'
;------------------------------------------------------------
;	dotmatrix.c:675: void shift_data(uint8_t data){
;	-----------------------------------------
;	 function shift_data
;	-----------------------------------------
_shift_data:
	mov	a,dpl
	mov	dptr,#_shift_data_data_65536_150
	movx	@dptr,a
;	dotmatrix.c:676: SS_HIGH;
;	assignBit
	setb	_P1_1
;	dotmatrix.c:677: SS2_HIGH;
;	assignBit
	setb	_P1_0
;	dotmatrix.c:678: LATCH_LOW;
;	assignBit
	clr	_P0_0
;	dotmatrix.c:680: SHIFTREG_CLOCK_LOW;
;	assignBit
	clr	_P0_1
;	dotmatrix.c:681: MOSI_LOW;
;	assignBit
	clr	_P1_7
;	dotmatrix.c:683: uint8_t whole_data = data;
	mov	dptr,#_shift_data_data_65536_150
	movx	a,@dptr
	mov	dptr,#_shift_data_whole_data_65537_152
	movx	@dptr,a
;	dotmatrix.c:685: for (int i = 0; i < EIGHT; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00106$:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00104$
;	dotmatrix.c:687: if (whole_data & 0x80)
	mov	dptr,#_shift_data_whole_data_65537_152
	movx	a,@dptr
	jnb	acc.7,00102$
;	dotmatrix.c:688: MOSI_HIGH;
;	assignBit
	setb	_P1_7
	sjmp	00103$
00102$:
;	dotmatrix.c:690: MOSI_LOW;
;	assignBit
	clr	_P1_7
00103$:
;	dotmatrix.c:692: SHIFTREG_CLOCK_HIGH;
;	assignBit
	setb	_P0_1
;	dotmatrix.c:693: SHIFTREG_CLOCK_LOW;
;	assignBit
	clr	_P0_1
;	dotmatrix.c:695: whole_data <<= 1; // shifting one bit
	mov	dptr,#_shift_data_whole_data_65537_152
	movx	a,@dptr
	add	a,acc
	movx	@dptr,a
;	dotmatrix.c:685: for (int i = 0; i < EIGHT; i++)
	inc	r6
	cjne	r6,#0x00,00106$
	inc	r7
	sjmp	00106$
00104$:
;	dotmatrix.c:697: LATCH_LOW;
;	assignBit
	clr	_P0_0
;	dotmatrix.c:698: LATCH_HIGH;
;	assignBit
	setb	_P0_0
;	dotmatrix.c:699: SS_HIGH;
;	assignBit
	setb	_P1_1
;	dotmatrix.c:700: SS2_HIGH;
;	assignBit
	setb	_P1_0
;	dotmatrix.c:701: LATCH_LOW;
;	assignBit
	clr	_P0_0
;	dotmatrix.c:702: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__game_status:
	.db #0x02	; 2
__xinit__letter_G:
	.db #0x78	; 120	'x'
	.db #0x84	; 132
	.db #0x80	; 128
	.db #0x8e	; 142
	.db #0x82	; 130
	.db #0x84	; 132
	.db #0x78	; 120	'x'
	.db #0x00	; 0
__xinit__letter_A:
	.db #0x3c	; 60
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x7e	; 126
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x00	; 0
__xinit__letter_M:
	.db #0x82	; 130
	.db #0xc6	; 198
	.db #0xaa	; 170
	.db #0x92	; 146
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0x00	; 0
__xinit__letter_E:
	.db #0x7e	; 126
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x7c	; 124
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x7e	; 126
	.db #0x00	; 0
__xinit__letter_O:
	.db #0x3c	; 60
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x3c	; 60
	.db #0x00	; 0
__xinit__letter_V:
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x28	; 40
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x00	; 0
__xinit__letter_R:
	.db #0x7c	; 124
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x7c	; 124
	.db #0x48	; 72	'H'
	.db #0x44	; 68	'D'
	.db #0x42	; 66	'B'
	.db #0x00	; 0
__xinit__letter_P:
	.db #0x78	; 120	'x'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x78	; 120	'x'
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x00	; 0
__xinit__number_1:
	.db #0x30	; 48	'0'
	.db #0x70	; 112	'p'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x00	; 0
__xinit__number_2:
	.db #0x78	; 120	'x'
	.db #0x84	; 132
	.db #0x04	; 4
	.db #0x18	; 24
	.db #0x60	; 96
	.db #0x80	; 128
	.db #0xfc	; 252
	.db #0x00	; 0
__xinit__letter_W:
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0xaa	; 170
	.db #0x54	; 84	'T'
	.db #0x00	; 0
__xinit__letter_N:
	.db #0x82	; 130
	.db #0xc2	; 194
	.db #0xa2	; 162
	.db #0x92	; 146
	.db #0x8a	; 138
	.db #0x86	; 134
	.db #0x82	; 130
	.db #0x00	; 0
__xinit__explosion_small:
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x3c	; 60
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x3c	; 60
	.db #0x18	; 24
	.db #0x00	; 0
__xinit__explosion_large:
	.db #0x7e	; 126
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x7e	; 126
__xinit__current_row_location_of_player1:
	.db #0x07	; 7
__xinit__current_row_location_of_player2:
	.db #0x07	; 7
__xinit__b_y:
	.db #0x10	; 16
__xinit__b_x:
	.db #0x08	; 8
__xinit__direction_x:
	.db #0x01	; 1
__xinit__direction_y:
	.db #0x01	; 1
__xinit__player_points:
	.db #0x00	; 0
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
