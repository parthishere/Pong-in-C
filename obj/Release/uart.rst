                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module uart
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _CY
                                     12 	.globl _AC
                                     13 	.globl _F0
                                     14 	.globl _RS1
                                     15 	.globl _RS0
                                     16 	.globl _OV
                                     17 	.globl _F1
                                     18 	.globl _P
                                     19 	.globl _PS
                                     20 	.globl _PT1
                                     21 	.globl _PX1
                                     22 	.globl _PT0
                                     23 	.globl _PX0
                                     24 	.globl _RD
                                     25 	.globl _WR
                                     26 	.globl _T1
                                     27 	.globl _T0
                                     28 	.globl _INT1
                                     29 	.globl _INT0
                                     30 	.globl _TXD
                                     31 	.globl _RXD
                                     32 	.globl _P3_7
                                     33 	.globl _P3_6
                                     34 	.globl _P3_5
                                     35 	.globl _P3_4
                                     36 	.globl _P3_3
                                     37 	.globl _P3_2
                                     38 	.globl _P3_1
                                     39 	.globl _P3_0
                                     40 	.globl _EA
                                     41 	.globl _ES
                                     42 	.globl _ET1
                                     43 	.globl _EX1
                                     44 	.globl _ET0
                                     45 	.globl _EX0
                                     46 	.globl _P2_7
                                     47 	.globl _P2_6
                                     48 	.globl _P2_5
                                     49 	.globl _P2_4
                                     50 	.globl _P2_3
                                     51 	.globl _P2_2
                                     52 	.globl _P2_1
                                     53 	.globl _P2_0
                                     54 	.globl _SM0
                                     55 	.globl _SM1
                                     56 	.globl _SM2
                                     57 	.globl _REN
                                     58 	.globl _TB8
                                     59 	.globl _RB8
                                     60 	.globl _TI
                                     61 	.globl _RI
                                     62 	.globl _P1_7
                                     63 	.globl _P1_6
                                     64 	.globl _P1_5
                                     65 	.globl _P1_4
                                     66 	.globl _P1_3
                                     67 	.globl _P1_2
                                     68 	.globl _P1_1
                                     69 	.globl _P1_0
                                     70 	.globl _TF1
                                     71 	.globl _TR1
                                     72 	.globl _TF0
                                     73 	.globl _TR0
                                     74 	.globl _IE1
                                     75 	.globl _IT1
                                     76 	.globl _IE0
                                     77 	.globl _IT0
                                     78 	.globl _P0_7
                                     79 	.globl _P0_6
                                     80 	.globl _P0_5
                                     81 	.globl _P0_4
                                     82 	.globl _P0_3
                                     83 	.globl _P0_2
                                     84 	.globl _P0_1
                                     85 	.globl _P0_0
                                     86 	.globl _B
                                     87 	.globl _ACC
                                     88 	.globl _PSW
                                     89 	.globl _IP
                                     90 	.globl _P3
                                     91 	.globl _IE
                                     92 	.globl _P2
                                     93 	.globl _SBUF
                                     94 	.globl _SCON
                                     95 	.globl _P1
                                     96 	.globl _TH1
                                     97 	.globl _TH0
                                     98 	.globl _TL1
                                     99 	.globl _TL0
                                    100 	.globl _TMOD
                                    101 	.globl _TCON
                                    102 	.globl _PCON
                                    103 	.globl _DPH
                                    104 	.globl _DPL
                                    105 	.globl _SP
                                    106 	.globl _P0
                                    107 	.globl _init_uart
                                    108 	.globl _putchar
                                    109 	.globl _getchar
                                    110 ;--------------------------------------------------------
                                    111 ; special function registers
                                    112 ;--------------------------------------------------------
                                    113 	.area RSEG    (ABS,DATA)
      000000                        114 	.org 0x0000
                           000080   115 _P0	=	0x0080
                           000081   116 _SP	=	0x0081
                           000082   117 _DPL	=	0x0082
                           000083   118 _DPH	=	0x0083
                           000087   119 _PCON	=	0x0087
                           000088   120 _TCON	=	0x0088
                           000089   121 _TMOD	=	0x0089
                           00008A   122 _TL0	=	0x008a
                           00008B   123 _TL1	=	0x008b
                           00008C   124 _TH0	=	0x008c
                           00008D   125 _TH1	=	0x008d
                           000090   126 _P1	=	0x0090
                           000098   127 _SCON	=	0x0098
                           000099   128 _SBUF	=	0x0099
                           0000A0   129 _P2	=	0x00a0
                           0000A8   130 _IE	=	0x00a8
                           0000B0   131 _P3	=	0x00b0
                           0000B8   132 _IP	=	0x00b8
                           0000D0   133 _PSW	=	0x00d0
                           0000E0   134 _ACC	=	0x00e0
                           0000F0   135 _B	=	0x00f0
                                    136 ;--------------------------------------------------------
                                    137 ; special function bits
                                    138 ;--------------------------------------------------------
                                    139 	.area RSEG    (ABS,DATA)
      000000                        140 	.org 0x0000
                           000080   141 _P0_0	=	0x0080
                           000081   142 _P0_1	=	0x0081
                           000082   143 _P0_2	=	0x0082
                           000083   144 _P0_3	=	0x0083
                           000084   145 _P0_4	=	0x0084
                           000085   146 _P0_5	=	0x0085
                           000086   147 _P0_6	=	0x0086
                           000087   148 _P0_7	=	0x0087
                           000088   149 _IT0	=	0x0088
                           000089   150 _IE0	=	0x0089
                           00008A   151 _IT1	=	0x008a
                           00008B   152 _IE1	=	0x008b
                           00008C   153 _TR0	=	0x008c
                           00008D   154 _TF0	=	0x008d
                           00008E   155 _TR1	=	0x008e
                           00008F   156 _TF1	=	0x008f
                           000090   157 _P1_0	=	0x0090
                           000091   158 _P1_1	=	0x0091
                           000092   159 _P1_2	=	0x0092
                           000093   160 _P1_3	=	0x0093
                           000094   161 _P1_4	=	0x0094
                           000095   162 _P1_5	=	0x0095
                           000096   163 _P1_6	=	0x0096
                           000097   164 _P1_7	=	0x0097
                           000098   165 _RI	=	0x0098
                           000099   166 _TI	=	0x0099
                           00009A   167 _RB8	=	0x009a
                           00009B   168 _TB8	=	0x009b
                           00009C   169 _REN	=	0x009c
                           00009D   170 _SM2	=	0x009d
                           00009E   171 _SM1	=	0x009e
                           00009F   172 _SM0	=	0x009f
                           0000A0   173 _P2_0	=	0x00a0
                           0000A1   174 _P2_1	=	0x00a1
                           0000A2   175 _P2_2	=	0x00a2
                           0000A3   176 _P2_3	=	0x00a3
                           0000A4   177 _P2_4	=	0x00a4
                           0000A5   178 _P2_5	=	0x00a5
                           0000A6   179 _P2_6	=	0x00a6
                           0000A7   180 _P2_7	=	0x00a7
                           0000A8   181 _EX0	=	0x00a8
                           0000A9   182 _ET0	=	0x00a9
                           0000AA   183 _EX1	=	0x00aa
                           0000AB   184 _ET1	=	0x00ab
                           0000AC   185 _ES	=	0x00ac
                           0000AF   186 _EA	=	0x00af
                           0000B0   187 _P3_0	=	0x00b0
                           0000B1   188 _P3_1	=	0x00b1
                           0000B2   189 _P3_2	=	0x00b2
                           0000B3   190 _P3_3	=	0x00b3
                           0000B4   191 _P3_4	=	0x00b4
                           0000B5   192 _P3_5	=	0x00b5
                           0000B6   193 _P3_6	=	0x00b6
                           0000B7   194 _P3_7	=	0x00b7
                           0000B0   195 _RXD	=	0x00b0
                           0000B1   196 _TXD	=	0x00b1
                           0000B2   197 _INT0	=	0x00b2
                           0000B3   198 _INT1	=	0x00b3
                           0000B4   199 _T0	=	0x00b4
                           0000B5   200 _T1	=	0x00b5
                           0000B6   201 _WR	=	0x00b6
                           0000B7   202 _RD	=	0x00b7
                           0000B8   203 _PX0	=	0x00b8
                           0000B9   204 _PT0	=	0x00b9
                           0000BA   205 _PX1	=	0x00ba
                           0000BB   206 _PT1	=	0x00bb
                           0000BC   207 _PS	=	0x00bc
                           0000D0   208 _P	=	0x00d0
                           0000D1   209 _F1	=	0x00d1
                           0000D2   210 _OV	=	0x00d2
                           0000D3   211 _RS0	=	0x00d3
                           0000D4   212 _RS1	=	0x00d4
                           0000D5   213 _F0	=	0x00d5
                           0000D6   214 _AC	=	0x00d6
                           0000D7   215 _CY	=	0x00d7
                                    216 ;--------------------------------------------------------
                                    217 ; overlayable register banks
                                    218 ;--------------------------------------------------------
                                    219 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        220 	.ds 8
                                    221 ;--------------------------------------------------------
                                    222 ; internal ram data
                                    223 ;--------------------------------------------------------
                                    224 	.area DSEG    (DATA)
                                    225 ;--------------------------------------------------------
                                    226 ; overlayable items in internal ram 
                                    227 ;--------------------------------------------------------
                                    228 ;--------------------------------------------------------
                                    229 ; indirectly addressable internal ram data
                                    230 ;--------------------------------------------------------
                                    231 	.area ISEG    (DATA)
                                    232 ;--------------------------------------------------------
                                    233 ; absolute internal ram data
                                    234 ;--------------------------------------------------------
                                    235 	.area IABS    (ABS,DATA)
                                    236 	.area IABS    (ABS,DATA)
                                    237 ;--------------------------------------------------------
                                    238 ; bit data
                                    239 ;--------------------------------------------------------
                                    240 	.area BSEG    (BIT)
                                    241 ;--------------------------------------------------------
                                    242 ; paged external ram data
                                    243 ;--------------------------------------------------------
                                    244 	.area PSEG    (PAG,XDATA)
                                    245 ;--------------------------------------------------------
                                    246 ; external ram data
                                    247 ;--------------------------------------------------------
                                    248 	.area XSEG    (XDATA)
      000026                        249 _putchar_chr_65536_3:
      000026                        250 	.ds 2
                                    251 ;--------------------------------------------------------
                                    252 ; absolute external ram data
                                    253 ;--------------------------------------------------------
                                    254 	.area XABS    (ABS,XDATA)
                                    255 ;--------------------------------------------------------
                                    256 ; external initialized ram data
                                    257 ;--------------------------------------------------------
                                    258 	.area XISEG   (XDATA)
                                    259 	.area HOME    (CODE)
                                    260 	.area GSINIT0 (CODE)
                                    261 	.area GSINIT1 (CODE)
                                    262 	.area GSINIT2 (CODE)
                                    263 	.area GSINIT3 (CODE)
                                    264 	.area GSINIT4 (CODE)
                                    265 	.area GSINIT5 (CODE)
                                    266 	.area GSINIT  (CODE)
                                    267 	.area GSFINAL (CODE)
                                    268 	.area CSEG    (CODE)
                                    269 ;--------------------------------------------------------
                                    270 ; global & static initialisations
                                    271 ;--------------------------------------------------------
                                    272 	.area HOME    (CODE)
                                    273 	.area GSINIT  (CODE)
                                    274 	.area GSFINAL (CODE)
                                    275 	.area GSINIT  (CODE)
                                    276 ;--------------------------------------------------------
                                    277 ; Home
                                    278 ;--------------------------------------------------------
                                    279 	.area HOME    (CODE)
                                    280 	.area HOME    (CODE)
                                    281 ;--------------------------------------------------------
                                    282 ; code
                                    283 ;--------------------------------------------------------
                                    284 	.area CSEG    (CODE)
                                    285 ;------------------------------------------------------------
                                    286 ;Allocation info for local variables in function 'init_uart'
                                    287 ;------------------------------------------------------------
                                    288 ;	uart.c:3: void init_uart(){
                                    289 ;	-----------------------------------------
                                    290 ;	 function init_uart
                                    291 ;	-----------------------------------------
      00198A                        292 _init_uart:
                           000007   293 	ar7 = 0x07
                           000006   294 	ar6 = 0x06
                           000005   295 	ar5 = 0x05
                           000004   296 	ar4 = 0x04
                           000003   297 	ar3 = 0x03
                           000002   298 	ar2 = 0x02
                           000001   299 	ar1 = 0x01
                           000000   300 	ar0 = 0x00
                                    301 ;	uart.c:5: SCON = 0x50;  // Set serial mode and 8-bit data
      00198A 75 98 50         [24]  302 	mov	_SCON,#0x50
                                    303 ;	uart.c:6: TMOD = 0x20;  // Set timer mode for baud rate generation
      00198D 75 89 20         [24]  304 	mov	_TMOD,#0x20
                                    305 ;	uart.c:7: TH1 = 0xFD;    // Set the high byte of the timer for a specific baud rate
      001990 75 8D FD         [24]  306 	mov	_TH1,#0xfd
                                    307 ;	uart.c:8: TR1 = 1;       // Start timer 1 for UART communication
                                    308 ;	assignBit
      001993 D2 8E            [12]  309 	setb	_TR1
                                    310 ;	uart.c:9: }
      001995 22               [24]  311 	ret
                                    312 ;------------------------------------------------------------
                                    313 ;Allocation info for local variables in function 'putchar'
                                    314 ;------------------------------------------------------------
                                    315 ;chr                       Allocated with name '_putchar_chr_65536_3'
                                    316 ;------------------------------------------------------------
                                    317 ;	uart.c:12: int putchar(int chr){
                                    318 ;	-----------------------------------------
                                    319 ;	 function putchar
                                    320 ;	-----------------------------------------
      001996                        321 _putchar:
      001996 AF 83            [24]  322 	mov	r7,dph
      001998 E5 82            [12]  323 	mov	a,dpl
      00199A 90 00 26         [24]  324 	mov	dptr,#_putchar_chr_65536_3
      00199D F0               [24]  325 	movx	@dptr,a
      00199E EF               [12]  326 	mov	a,r7
      00199F A3               [24]  327 	inc	dptr
      0019A0 F0               [24]  328 	movx	@dptr,a
                                    329 ;	uart.c:13: SBUF = chr;      // Put the character in the UART buffer
      0019A1 90 00 26         [24]  330 	mov	dptr,#_putchar_chr_65536_3
      0019A4 E0               [24]  331 	movx	a,@dptr
      0019A5 FE               [12]  332 	mov	r6,a
      0019A6 A3               [24]  333 	inc	dptr
      0019A7 E0               [24]  334 	movx	a,@dptr
      0019A8 FF               [12]  335 	mov	r7,a
      0019A9 8E 99            [24]  336 	mov	_SBUF,r6
                                    337 ;	uart.c:14: while (!TI);     // Wait until transmission is complete
      0019AB                        338 00101$:
                                    339 ;	uart.c:15: TI = 0;          // Clear the transmit interrupt flag
                                    340 ;	assignBit
      0019AB 10 99 02         [24]  341 	jbc	_TI,00114$
      0019AE 80 FB            [24]  342 	sjmp	00101$
      0019B0                        343 00114$:
                                    344 ;	uart.c:16: return chr;         // Return 1 to indicate successful transmission
      0019B0 8E 82            [24]  345 	mov	dpl,r6
      0019B2 8F 83            [24]  346 	mov	dph,r7
                                    347 ;	uart.c:17: }
      0019B4 22               [24]  348 	ret
                                    349 ;------------------------------------------------------------
                                    350 ;Allocation info for local variables in function 'getchar'
                                    351 ;------------------------------------------------------------
                                    352 ;a                         Allocated with name '_getchar_a_65537_6'
                                    353 ;------------------------------------------------------------
                                    354 ;	uart.c:20: int getchar(){
                                    355 ;	-----------------------------------------
                                    356 ;	 function getchar
                                    357 ;	-----------------------------------------
      0019B5                        358 _getchar:
                                    359 ;	uart.c:21: while (!RI);     // Wait until a character is received
      0019B5                        360 00101$:
      0019B5 30 98 FD         [24]  361 	jnb	_RI,00101$
                                    362 ;	uart.c:22: int a = SBUF;    // Read the received character
      0019B8 AE 99            [24]  363 	mov	r6,_SBUF
      0019BA 7F 00            [12]  364 	mov	r7,#0x00
                                    365 ;	uart.c:23: RI = 0;          // Clear the receive interrupt flag
                                    366 ;	assignBit
      0019BC C2 98            [12]  367 	clr	_RI
                                    368 ;	uart.c:24: return a;         // Return the received character
      0019BE 8E 82            [24]  369 	mov	dpl,r6
      0019C0 8F 83            [24]  370 	mov	dph,r7
                                    371 ;	uart.c:25: }
      0019C2 22               [24]  372 	ret
                                    373 	.area CSEG    (CODE)
                                    374 	.area CONST   (CODE)
                                    375 	.area XINIT   (CODE)
                                    376 	.area CABS    (ABS,CODE)
