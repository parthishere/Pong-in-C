;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _EXT0_IRQHandler
	.globl _Timer0_ISR
	.globl _send_score
	.globl _clear_display
	.globl _setGameState
	.globl _getGameState
	.globl _erase_ball
	.globl _draw_ball
	.globl _move_p2controller_down
	.globl _move_p2controller_up
	.globl _move_p1controller_down
	.globl _move_p1controller_up
	.globl _initialize_controller
	.globl _enable_irq
	.globl _init_ext_interrupt
	.globl _timer_init
	.globl _read_expander
	.globl _init_uart
	.globl _printf
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
	.globl _add_to_timer
	.globl _timeroverflow
	.globl _down_pressed
	.globl _up_pressed
	.globl _s_pressed
	.globl _w_pressed
	.globl _count
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_count::
	.ds 1
_w_pressed::
	.ds 1
_s_pressed::
	.ds 1
_up_pressed::
	.ds 1
_down_pressed::
	.ds 1
_timeroverflow::
	.ds 1
_add_to_timer::
	.ds 1
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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	ljmp	_EXT0_IRQHandler
	.ds	5
	ljmp	_Timer0_ISR
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer0_ISR'
;------------------------------------------------------------
;	main.c:34: void Timer0_ISR() __interrupt (1)	/* Timer0 interrupt service routine (ISR) */
;	-----------------------------------------
;	 function Timer0_ISR
;	-----------------------------------------
_Timer0_ISR:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	main.c:39: if(getGameState() == ONGOING){
	lcall	_getGameState
	mov	a,dpl
	jnz	00106$
;	main.c:40: timeroverflow++;
	mov	dptr,#_timeroverflow
	movx	a,@dptr
	inc	a
	movx	@dptr,a
;	main.c:42: erase_ball();
	lcall	_erase_ball
;	main.c:43: draw_ball();
	lcall	_draw_ball
;	main.c:45: if(timeroverflow == 5){
	mov	dptr,#_timeroverflow
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x05,00106$
;	main.c:46: if((add_to_timer+0x2C) < 0xFF){
	mov	dptr,#_add_to_timer
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	a,#0x2c
	add	a,r7
	mov	r7,a
	clr	a
	addc	a,r6
	mov	r6,a
	clr	c
	mov	a,r7
	subb	a,#0xff
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00102$
;	main.c:47: add_to_timer++;
	mov	dptr,#_add_to_timer
	movx	a,@dptr
	inc	a
	movx	@dptr,a
00102$:
;	main.c:49: timeroverflow = 0;
	mov	dptr,#_timeroverflow
	clr	a
	movx	@dptr,a
00106$:
;	main.c:53: enable_irq();
	lcall	_enable_irq
;	main.c:55: TH0 = (0x2C+add_to_timer);   // Reset Timer0 high byte for the next timeout
	mov	dptr,#_add_to_timer
	movx	a,@dptr
	add	a,#0x2c
	mov	_TH0,a
;	main.c:56: TL0 = 0x00;                 // Reset Timer0 low byte for the next timeout
	mov	_TL0,#0x00
;	main.c:57: TR0 = 1;                    // Start Timer0
;	assignBit
	setb	_TR0
;	main.c:60: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'EXT0_IRQHandler'
;------------------------------------------------------------
;data                      Allocated with name '_EXT0_IRQHandler_data_65536_41'
;------------------------------------------------------------
;	main.c:62: void EXT0_IRQHandler(void) __interrupt(0){
;	-----------------------------------------
;	 function EXT0_IRQHandler
;	-----------------------------------------
_EXT0_IRQHandler:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	main.c:63: uint8_t data = read_expander();
	lcall	_read_expander
	mov	r7,dpl
;	main.c:64: count++;
	mov	dptr,#_count
	movx	a,@dptr
	inc	a
	movx	@dptr,a
;	main.c:65: if (2 >= count){
	movx	a,@dptr
	mov  r6,a
	add	a,#0xff - 0x02
	jnc	00167$
	ljmp	00124$
00167$:
;	main.c:66: count = 0;
	mov	dptr,#_count
	clr	a
	movx	@dptr,a
;	main.c:67: if(getGameState() == ONGOING){
	push	ar7
	lcall	_getGameState
	mov	a,dpl
	pop	ar7
	jnz	00113$
;	main.c:68: if (data == W_KEY){
	cjne	r7,#0xef,00110$
;	main.c:69: move_p1controller_up();
	push	ar7
	lcall	_move_p1controller_up
	pop	ar7
;	main.c:70: w_pressed = 1;
	mov	dptr,#_w_pressed
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00113$
00110$:
;	main.c:72: else if(data == S_KEY){
	cjne	r7,#0xeb,00107$
;	main.c:73: move_p1controller_down();
	push	ar7
	lcall	_move_p1controller_down
	pop	ar7
;	main.c:74: s_pressed = 1;
	mov	dptr,#_s_pressed
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00113$
00107$:
;	main.c:76: else if (data == UP_KEY){
	cjne	r7,#0xf7,00104$
;	main.c:77: move_p2controller_up();
	push	ar7
	lcall	_move_p2controller_up
	pop	ar7
;	main.c:78: up_pressed = 1;
	mov	dptr,#_up_pressed
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00113$
00104$:
;	main.c:81: else if(data == DOWN_KEY){
	cjne	r7,#0xf3,00113$
;	main.c:82: move_p2controller_down();
	push	ar7
	lcall	_move_p2controller_down
	pop	ar7
;	main.c:83: down_pressed = 1;
	mov	dptr,#_down_pressed
	mov	a,#0x01
	movx	@dptr,a
00113$:
;	main.c:86: if(data == ENTER_KEY){
	cjne	r7,#0xe9,00121$
;	main.c:87: if(getGameState() == STOP) setGameState(ONGOING);
	lcall	_getGameState
	mov	r6,dpl
	cjne	r6,#0x01,00115$
	mov	dpl,#0x00
	lcall	_setGameState
00115$:
;	main.c:88: add_to_timer = 0;
	mov	dptr,#_add_to_timer
	clr	a
	movx	@dptr,a
	sjmp	00124$
00121$:
;	main.c:90: else if(data == ESC_KEY){
	cjne	r7,#0xf5,00124$
;	main.c:91: clear_display();
	lcall	_clear_display
;	main.c:92: initialize_controller();
	lcall	_initialize_controller
;	main.c:93: if(getGameState() == OVER) setGameState(STOP);
	lcall	_getGameState
	mov	r7,dpl
	cjne	r7,#0x02,00117$
	mov	dpl,#0x01
	lcall	_setGameState
00117$:
;	main.c:94: add_to_timer = 0;
	mov	dptr,#_add_to_timer
	clr	a
	movx	@dptr,a
00124$:
;	main.c:98: printf("current state: %d \n\r", getGameState());
	lcall	_getGameState
	mov	r7,dpl
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	main.c:100: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:102: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:107: init_uart();
	lcall	_init_uart
;	main.c:108: init_ext_interrupt();
	lcall	_init_ext_interrupt
;	main.c:109: initialize_controller();
	lcall	_initialize_controller
;	main.c:110: timer_init();
	lcall	_timer_init
;	main.c:112: printf("code is starting !");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:115: while(1){
00102$:
;	main.c:116: send_score();
	lcall	_send_score
;	main.c:123: }
	sjmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "current state: %d "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "code is starting !"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__count:
	.db #0x00	; 0
__xinit__w_pressed:
	.db #0x00	; 0
__xinit__s_pressed:
	.db #0x00	; 0
__xinit__up_pressed:
	.db #0x00	; 0
__xinit__down_pressed:
	.db #0x00	; 0
__xinit__timeroverflow:
	.db #0x00	; 0
__xinit__add_to_timer:
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
