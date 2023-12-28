                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module dotmatrix
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _display_explosion_pattern
                                     12 	.globl _spi_init
                                     13 	.globl _get_display
                                     14 	.globl _get_unit
                                     15 	.globl _CY
                                     16 	.globl _AC
                                     17 	.globl _F0
                                     18 	.globl _RS1
                                     19 	.globl _RS0
                                     20 	.globl _OV
                                     21 	.globl _F1
                                     22 	.globl _P
                                     23 	.globl _PS
                                     24 	.globl _PT1
                                     25 	.globl _PX1
                                     26 	.globl _PT0
                                     27 	.globl _PX0
                                     28 	.globl _RD
                                     29 	.globl _WR
                                     30 	.globl _T1
                                     31 	.globl _T0
                                     32 	.globl _INT1
                                     33 	.globl _INT0
                                     34 	.globl _TXD
                                     35 	.globl _RXD
                                     36 	.globl _P3_7
                                     37 	.globl _P3_6
                                     38 	.globl _P3_5
                                     39 	.globl _P3_4
                                     40 	.globl _P3_3
                                     41 	.globl _P3_2
                                     42 	.globl _P3_1
                                     43 	.globl _P3_0
                                     44 	.globl _EA
                                     45 	.globl _ES
                                     46 	.globl _ET1
                                     47 	.globl _EX1
                                     48 	.globl _ET0
                                     49 	.globl _EX0
                                     50 	.globl _P2_7
                                     51 	.globl _P2_6
                                     52 	.globl _P2_5
                                     53 	.globl _P2_4
                                     54 	.globl _P2_3
                                     55 	.globl _P2_2
                                     56 	.globl _P2_1
                                     57 	.globl _P2_0
                                     58 	.globl _SM0
                                     59 	.globl _SM1
                                     60 	.globl _SM2
                                     61 	.globl _REN
                                     62 	.globl _TB8
                                     63 	.globl _RB8
                                     64 	.globl _TI
                                     65 	.globl _RI
                                     66 	.globl _P1_7
                                     67 	.globl _P1_6
                                     68 	.globl _P1_5
                                     69 	.globl _P1_4
                                     70 	.globl _P1_3
                                     71 	.globl _P1_2
                                     72 	.globl _P1_1
                                     73 	.globl _P1_0
                                     74 	.globl _TF1
                                     75 	.globl _TR1
                                     76 	.globl _TF0
                                     77 	.globl _TR0
                                     78 	.globl _IE1
                                     79 	.globl _IT1
                                     80 	.globl _IE0
                                     81 	.globl _IT0
                                     82 	.globl _P0_7
                                     83 	.globl _P0_6
                                     84 	.globl _P0_5
                                     85 	.globl _P0_4
                                     86 	.globl _P0_3
                                     87 	.globl _P0_2
                                     88 	.globl _P0_1
                                     89 	.globl _P0_0
                                     90 	.globl _P5_7
                                     91 	.globl _P5_6
                                     92 	.globl _P5_5
                                     93 	.globl _P5_4
                                     94 	.globl _P5_3
                                     95 	.globl _P5_2
                                     96 	.globl _P5_1
                                     97 	.globl _P5_0
                                     98 	.globl _P4_7
                                     99 	.globl _P4_6
                                    100 	.globl _P4_5
                                    101 	.globl _P4_4
                                    102 	.globl _P4_3
                                    103 	.globl _P4_2
                                    104 	.globl _P4_1
                                    105 	.globl _P4_0
                                    106 	.globl _PX0L
                                    107 	.globl _PT0L
                                    108 	.globl _PX1L
                                    109 	.globl _PT1L
                                    110 	.globl _PSL
                                    111 	.globl _PT2L
                                    112 	.globl _PPCL
                                    113 	.globl _EC
                                    114 	.globl _CCF0
                                    115 	.globl _CCF1
                                    116 	.globl _CCF2
                                    117 	.globl _CCF3
                                    118 	.globl _CCF4
                                    119 	.globl _CR
                                    120 	.globl _CF
                                    121 	.globl _TF2
                                    122 	.globl _EXF2
                                    123 	.globl _RCLK
                                    124 	.globl _TCLK
                                    125 	.globl _EXEN2
                                    126 	.globl _TR2
                                    127 	.globl _C_T2
                                    128 	.globl _CP_RL2
                                    129 	.globl _T2CON_7
                                    130 	.globl _T2CON_6
                                    131 	.globl _T2CON_5
                                    132 	.globl _T2CON_4
                                    133 	.globl _T2CON_3
                                    134 	.globl _T2CON_2
                                    135 	.globl _T2CON_1
                                    136 	.globl _T2CON_0
                                    137 	.globl _PT2
                                    138 	.globl _ET2
                                    139 	.globl _B
                                    140 	.globl _ACC
                                    141 	.globl _PSW
                                    142 	.globl _IP
                                    143 	.globl _P3
                                    144 	.globl _IE
                                    145 	.globl _P2
                                    146 	.globl _SBUF
                                    147 	.globl _SCON
                                    148 	.globl _P1
                                    149 	.globl _TH1
                                    150 	.globl _TH0
                                    151 	.globl _TL1
                                    152 	.globl _TL0
                                    153 	.globl _TMOD
                                    154 	.globl _TCON
                                    155 	.globl _PCON
                                    156 	.globl _DPH
                                    157 	.globl _DPL
                                    158 	.globl _SP
                                    159 	.globl _P0
                                    160 	.globl _EECON
                                    161 	.globl _KBF
                                    162 	.globl _KBE
                                    163 	.globl _KBLS
                                    164 	.globl _BRL
                                    165 	.globl _BDRCON
                                    166 	.globl _T2MOD
                                    167 	.globl _SPDAT
                                    168 	.globl _SPSTA
                                    169 	.globl _SPCON
                                    170 	.globl _SADEN
                                    171 	.globl _SADDR
                                    172 	.globl _WDTPRG
                                    173 	.globl _WDTRST
                                    174 	.globl _P5
                                    175 	.globl _P4
                                    176 	.globl _IPH1
                                    177 	.globl _IPL1
                                    178 	.globl _IPH0
                                    179 	.globl _IPL0
                                    180 	.globl _IEN1
                                    181 	.globl _IEN0
                                    182 	.globl _CMOD
                                    183 	.globl _CL
                                    184 	.globl _CH
                                    185 	.globl _CCON
                                    186 	.globl _CCAPM4
                                    187 	.globl _CCAPM3
                                    188 	.globl _CCAPM2
                                    189 	.globl _CCAPM1
                                    190 	.globl _CCAPM0
                                    191 	.globl _CCAP4L
                                    192 	.globl _CCAP3L
                                    193 	.globl _CCAP2L
                                    194 	.globl _CCAP1L
                                    195 	.globl _CCAP0L
                                    196 	.globl _CCAP4H
                                    197 	.globl _CCAP3H
                                    198 	.globl _CCAP2H
                                    199 	.globl _CCAP1H
                                    200 	.globl _CCAP0H
                                    201 	.globl _CKCON1
                                    202 	.globl _CKCON0
                                    203 	.globl _CKRL
                                    204 	.globl _AUXR1
                                    205 	.globl _AUXR
                                    206 	.globl _TH2
                                    207 	.globl _TL2
                                    208 	.globl _RCAP2H
                                    209 	.globl _RCAP2L
                                    210 	.globl _T2CON
                                    211 	.globl _player_points
                                    212 	.globl _current_row_location_of_player2
                                    213 	.globl _current_row_location_of_player1
                                    214 	.globl _explosion_large
                                    215 	.globl _explosion_small
                                    216 	.globl _letter_N
                                    217 	.globl _letter_W
                                    218 	.globl _number_2
                                    219 	.globl _number_1
                                    220 	.globl _letter_P
                                    221 	.globl _letter_R
                                    222 	.globl _letter_V
                                    223 	.globl _letter_O
                                    224 	.globl _letter_E
                                    225 	.globl _letter_M
                                    226 	.globl _letter_A
                                    227 	.globl _letter_G
                                    228 	.globl _display_character_PARM_3
                                    229 	.globl _display_character_PARM_2
                                    230 	.globl _change_ball_PARM_2
                                    231 	.globl _dotmatrix_send_PARM_4
                                    232 	.globl _dotmatrix_send_PARM_3
                                    233 	.globl _dotmatrix_send_PARM_2
                                    234 	.globl _getGameState
                                    235 	.globl _setGameState
                                    236 	.globl _dotmatrix_send
                                    237 	.globl _move_p1controller_up
                                    238 	.globl _move_p1controller_down
                                    239 	.globl _move_p2controller_down
                                    240 	.globl _move_p2controller_up
                                    241 	.globl _initialize_controller
                                    242 	.globl _erase_ball
                                    243 	.globl _draw_ball
                                    244 	.globl _ball_y
                                    245 	.globl _ball_x
                                    246 	.globl _change_ball
                                    247 	.globl _increment
                                    248 	.globl _display_character
                                    249 	.globl _clear_display
                                    250 	.globl _display_explosion
                                    251 	.globl _score_to_binary
                                    252 	.globl _send_score
                                    253 	.globl _shift_data
                                    254 ;--------------------------------------------------------
                                    255 ; special function registers
                                    256 ;--------------------------------------------------------
                                    257 	.area RSEG    (ABS,DATA)
      000000                        258 	.org 0x0000
                           0000C8   259 _T2CON	=	0x00c8
                           0000CA   260 _RCAP2L	=	0x00ca
                           0000CB   261 _RCAP2H	=	0x00cb
                           0000CC   262 _TL2	=	0x00cc
                           0000CD   263 _TH2	=	0x00cd
                           00008E   264 _AUXR	=	0x008e
                           0000A2   265 _AUXR1	=	0x00a2
                           000097   266 _CKRL	=	0x0097
                           00008F   267 _CKCON0	=	0x008f
                           0000AF   268 _CKCON1	=	0x00af
                           0000FA   269 _CCAP0H	=	0x00fa
                           0000FB   270 _CCAP1H	=	0x00fb
                           0000FC   271 _CCAP2H	=	0x00fc
                           0000FD   272 _CCAP3H	=	0x00fd
                           0000FE   273 _CCAP4H	=	0x00fe
                           0000EA   274 _CCAP0L	=	0x00ea
                           0000EB   275 _CCAP1L	=	0x00eb
                           0000EC   276 _CCAP2L	=	0x00ec
                           0000ED   277 _CCAP3L	=	0x00ed
                           0000EE   278 _CCAP4L	=	0x00ee
                           0000DA   279 _CCAPM0	=	0x00da
                           0000DB   280 _CCAPM1	=	0x00db
                           0000DC   281 _CCAPM2	=	0x00dc
                           0000DD   282 _CCAPM3	=	0x00dd
                           0000DE   283 _CCAPM4	=	0x00de
                           0000D8   284 _CCON	=	0x00d8
                           0000F9   285 _CH	=	0x00f9
                           0000E9   286 _CL	=	0x00e9
                           0000D9   287 _CMOD	=	0x00d9
                           0000A8   288 _IEN0	=	0x00a8
                           0000B1   289 _IEN1	=	0x00b1
                           0000B8   290 _IPL0	=	0x00b8
                           0000B7   291 _IPH0	=	0x00b7
                           0000B2   292 _IPL1	=	0x00b2
                           0000B3   293 _IPH1	=	0x00b3
                           0000C0   294 _P4	=	0x00c0
                           0000E8   295 _P5	=	0x00e8
                           0000A6   296 _WDTRST	=	0x00a6
                           0000A7   297 _WDTPRG	=	0x00a7
                           0000A9   298 _SADDR	=	0x00a9
                           0000B9   299 _SADEN	=	0x00b9
                           0000C3   300 _SPCON	=	0x00c3
                           0000C4   301 _SPSTA	=	0x00c4
                           0000C5   302 _SPDAT	=	0x00c5
                           0000C9   303 _T2MOD	=	0x00c9
                           00009B   304 _BDRCON	=	0x009b
                           00009A   305 _BRL	=	0x009a
                           00009C   306 _KBLS	=	0x009c
                           00009D   307 _KBE	=	0x009d
                           00009E   308 _KBF	=	0x009e
                           0000D2   309 _EECON	=	0x00d2
                           000080   310 _P0	=	0x0080
                           000081   311 _SP	=	0x0081
                           000082   312 _DPL	=	0x0082
                           000083   313 _DPH	=	0x0083
                           000087   314 _PCON	=	0x0087
                           000088   315 _TCON	=	0x0088
                           000089   316 _TMOD	=	0x0089
                           00008A   317 _TL0	=	0x008a
                           00008B   318 _TL1	=	0x008b
                           00008C   319 _TH0	=	0x008c
                           00008D   320 _TH1	=	0x008d
                           000090   321 _P1	=	0x0090
                           000098   322 _SCON	=	0x0098
                           000099   323 _SBUF	=	0x0099
                           0000A0   324 _P2	=	0x00a0
                           0000A8   325 _IE	=	0x00a8
                           0000B0   326 _P3	=	0x00b0
                           0000B8   327 _IP	=	0x00b8
                           0000D0   328 _PSW	=	0x00d0
                           0000E0   329 _ACC	=	0x00e0
                           0000F0   330 _B	=	0x00f0
                                    331 ;--------------------------------------------------------
                                    332 ; special function bits
                                    333 ;--------------------------------------------------------
                                    334 	.area RSEG    (ABS,DATA)
      000000                        335 	.org 0x0000
                           0000AD   336 _ET2	=	0x00ad
                           0000BD   337 _PT2	=	0x00bd
                           0000C8   338 _T2CON_0	=	0x00c8
                           0000C9   339 _T2CON_1	=	0x00c9
                           0000CA   340 _T2CON_2	=	0x00ca
                           0000CB   341 _T2CON_3	=	0x00cb
                           0000CC   342 _T2CON_4	=	0x00cc
                           0000CD   343 _T2CON_5	=	0x00cd
                           0000CE   344 _T2CON_6	=	0x00ce
                           0000CF   345 _T2CON_7	=	0x00cf
                           0000C8   346 _CP_RL2	=	0x00c8
                           0000C9   347 _C_T2	=	0x00c9
                           0000CA   348 _TR2	=	0x00ca
                           0000CB   349 _EXEN2	=	0x00cb
                           0000CC   350 _TCLK	=	0x00cc
                           0000CD   351 _RCLK	=	0x00cd
                           0000CE   352 _EXF2	=	0x00ce
                           0000CF   353 _TF2	=	0x00cf
                           0000DF   354 _CF	=	0x00df
                           0000DE   355 _CR	=	0x00de
                           0000DC   356 _CCF4	=	0x00dc
                           0000DB   357 _CCF3	=	0x00db
                           0000DA   358 _CCF2	=	0x00da
                           0000D9   359 _CCF1	=	0x00d9
                           0000D8   360 _CCF0	=	0x00d8
                           0000AE   361 _EC	=	0x00ae
                           0000BE   362 _PPCL	=	0x00be
                           0000BD   363 _PT2L	=	0x00bd
                           0000BC   364 _PSL	=	0x00bc
                           0000BB   365 _PT1L	=	0x00bb
                           0000BA   366 _PX1L	=	0x00ba
                           0000B9   367 _PT0L	=	0x00b9
                           0000B8   368 _PX0L	=	0x00b8
                           0000C0   369 _P4_0	=	0x00c0
                           0000C1   370 _P4_1	=	0x00c1
                           0000C2   371 _P4_2	=	0x00c2
                           0000C3   372 _P4_3	=	0x00c3
                           0000C4   373 _P4_4	=	0x00c4
                           0000C5   374 _P4_5	=	0x00c5
                           0000C6   375 _P4_6	=	0x00c6
                           0000C7   376 _P4_7	=	0x00c7
                           0000E8   377 _P5_0	=	0x00e8
                           0000E9   378 _P5_1	=	0x00e9
                           0000EA   379 _P5_2	=	0x00ea
                           0000EB   380 _P5_3	=	0x00eb
                           0000EC   381 _P5_4	=	0x00ec
                           0000ED   382 _P5_5	=	0x00ed
                           0000EE   383 _P5_6	=	0x00ee
                           0000EF   384 _P5_7	=	0x00ef
                           000080   385 _P0_0	=	0x0080
                           000081   386 _P0_1	=	0x0081
                           000082   387 _P0_2	=	0x0082
                           000083   388 _P0_3	=	0x0083
                           000084   389 _P0_4	=	0x0084
                           000085   390 _P0_5	=	0x0085
                           000086   391 _P0_6	=	0x0086
                           000087   392 _P0_7	=	0x0087
                           000088   393 _IT0	=	0x0088
                           000089   394 _IE0	=	0x0089
                           00008A   395 _IT1	=	0x008a
                           00008B   396 _IE1	=	0x008b
                           00008C   397 _TR0	=	0x008c
                           00008D   398 _TF0	=	0x008d
                           00008E   399 _TR1	=	0x008e
                           00008F   400 _TF1	=	0x008f
                           000090   401 _P1_0	=	0x0090
                           000091   402 _P1_1	=	0x0091
                           000092   403 _P1_2	=	0x0092
                           000093   404 _P1_3	=	0x0093
                           000094   405 _P1_4	=	0x0094
                           000095   406 _P1_5	=	0x0095
                           000096   407 _P1_6	=	0x0096
                           000097   408 _P1_7	=	0x0097
                           000098   409 _RI	=	0x0098
                           000099   410 _TI	=	0x0099
                           00009A   411 _RB8	=	0x009a
                           00009B   412 _TB8	=	0x009b
                           00009C   413 _REN	=	0x009c
                           00009D   414 _SM2	=	0x009d
                           00009E   415 _SM1	=	0x009e
                           00009F   416 _SM0	=	0x009f
                           0000A0   417 _P2_0	=	0x00a0
                           0000A1   418 _P2_1	=	0x00a1
                           0000A2   419 _P2_2	=	0x00a2
                           0000A3   420 _P2_3	=	0x00a3
                           0000A4   421 _P2_4	=	0x00a4
                           0000A5   422 _P2_5	=	0x00a5
                           0000A6   423 _P2_6	=	0x00a6
                           0000A7   424 _P2_7	=	0x00a7
                           0000A8   425 _EX0	=	0x00a8
                           0000A9   426 _ET0	=	0x00a9
                           0000AA   427 _EX1	=	0x00aa
                           0000AB   428 _ET1	=	0x00ab
                           0000AC   429 _ES	=	0x00ac
                           0000AF   430 _EA	=	0x00af
                           0000B0   431 _P3_0	=	0x00b0
                           0000B1   432 _P3_1	=	0x00b1
                           0000B2   433 _P3_2	=	0x00b2
                           0000B3   434 _P3_3	=	0x00b3
                           0000B4   435 _P3_4	=	0x00b4
                           0000B5   436 _P3_5	=	0x00b5
                           0000B6   437 _P3_6	=	0x00b6
                           0000B7   438 _P3_7	=	0x00b7
                           0000B0   439 _RXD	=	0x00b0
                           0000B1   440 _TXD	=	0x00b1
                           0000B2   441 _INT0	=	0x00b2
                           0000B3   442 _INT1	=	0x00b3
                           0000B4   443 _T0	=	0x00b4
                           0000B5   444 _T1	=	0x00b5
                           0000B6   445 _WR	=	0x00b6
                           0000B7   446 _RD	=	0x00b7
                           0000B8   447 _PX0	=	0x00b8
                           0000B9   448 _PT0	=	0x00b9
                           0000BA   449 _PX1	=	0x00ba
                           0000BB   450 _PT1	=	0x00bb
                           0000BC   451 _PS	=	0x00bc
                           0000D0   452 _P	=	0x00d0
                           0000D1   453 _F1	=	0x00d1
                           0000D2   454 _OV	=	0x00d2
                           0000D3   455 _RS0	=	0x00d3
                           0000D4   456 _RS1	=	0x00d4
                           0000D5   457 _F0	=	0x00d5
                           0000D6   458 _AC	=	0x00d6
                           0000D7   459 _CY	=	0x00d7
                                    460 ;--------------------------------------------------------
                                    461 ; overlayable register banks
                                    462 ;--------------------------------------------------------
                                    463 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        464 	.ds 8
                                    465 ;--------------------------------------------------------
                                    466 ; internal ram data
                                    467 ;--------------------------------------------------------
                                    468 	.area DSEG    (DATA)
      000008                        469 _dotmatrix_send_sloc0_1_0:
      000008                        470 	.ds 2
      00000A                        471 _display_explosion_pattern_sloc0_1_0:
      00000A                        472 	.ds 2
      00000C                        473 _display_explosion_pattern_sloc1_1_0:
      00000C                        474 	.ds 2
      00000E                        475 _display_explosion_pattern_sloc2_1_0:
      00000E                        476 	.ds 3
      000011                        477 _display_character_sloc0_1_0:
      000011                        478 	.ds 1
      000012                        479 _display_character_sloc1_1_0:
      000012                        480 	.ds 1
      000013                        481 _display_character_sloc2_1_0:
      000013                        482 	.ds 1
                                    483 ;--------------------------------------------------------
                                    484 ; overlayable items in internal ram 
                                    485 ;--------------------------------------------------------
                                    486 ;--------------------------------------------------------
                                    487 ; indirectly addressable internal ram data
                                    488 ;--------------------------------------------------------
                                    489 	.area ISEG    (DATA)
                                    490 ;--------------------------------------------------------
                                    491 ; absolute internal ram data
                                    492 ;--------------------------------------------------------
                                    493 	.area IABS    (ABS,DATA)
                                    494 	.area IABS    (ABS,DATA)
                                    495 ;--------------------------------------------------------
                                    496 ; bit data
                                    497 ;--------------------------------------------------------
                                    498 	.area BSEG    (BIT)
                                    499 ;--------------------------------------------------------
                                    500 ; paged external ram data
                                    501 ;--------------------------------------------------------
                                    502 	.area PSEG    (PAG,XDATA)
                                    503 ;--------------------------------------------------------
                                    504 ; external ram data
                                    505 ;--------------------------------------------------------
                                    506 	.area XSEG    (XDATA)
      000005                        507 _setGameState_state_65536_25:
      000005                        508 	.ds 1
      000006                        509 _get_unit_y_65536_27:
      000006                        510 	.ds 1
      000007                        511 _get_display_x_65536_29:
      000007                        512 	.ds 1
      000008                        513 _dotmatrix_send_PARM_2:
      000008                        514 	.ds 1
      000009                        515 _dotmatrix_send_PARM_3:
      000009                        516 	.ds 1
      00000A                        517 _dotmatrix_send_PARM_4:
      00000A                        518 	.ds 1
      00000B                        519 _dotmatrix_send_address_65536_33:
      00000B                        520 	.ds 1
      00000C                        521 _dotmatrix_send_whole_data_262144_39:
      00000C                        522 	.ds 2
      00000E                        523 _move_p1controller_down_start_pos_d1_65536_53:
      00000E                        524 	.ds 1
      00000F                        525 _move_p1controller_down_start_pos_d2_65536_53:
      00000F                        526 	.ds 1
      000010                        527 _move_p2controller_down_start_pos_d1_65536_62:
      000010                        528 	.ds 1
      000011                        529 _move_p2controller_down_start_pos_d2_65536_62:
      000011                        530 	.ds 1
      000012                        531 _erase_ball_data_to_send_65537_89:
      000012                        532 	.ds 1
      000013                        533 _draw_ball_data_to_send_65538_94:
      000013                        534 	.ds 1
      000014                        535 _change_ball_PARM_2:
      000014                        536 	.ds 1
      000015                        537 _change_ball_x_65536_101:
      000015                        538 	.ds 1
      000016                        539 _display_explosion_pattern_pattern_65536_115:
      000016                        540 	.ds 3
      000019                        541 _display_character_PARM_2:
      000019                        542 	.ds 1
      00001A                        543 _display_character_PARM_3:
      00001A                        544 	.ds 1
      00001B                        545 _display_character_character_65536_121:
      00001B                        546 	.ds 3
      00001E                        547 _display_explosion_player_65536_134:
      00001E                        548 	.ds 1
      00001F                        549 _score_to_binary_score_65536_145:
      00001F                        550 	.ds 1
      000020                        551 _score_to_binary_binary_representation_65536_146:
      000020                        552 	.ds 1
      000021                        553 _shift_data_data_65536_150:
      000021                        554 	.ds 1
      000022                        555 _shift_data_whole_data_65537_152:
      000022                        556 	.ds 1
                                    557 ;--------------------------------------------------------
                                    558 ; absolute external ram data
                                    559 ;--------------------------------------------------------
                                    560 	.area XABS    (ABS,XDATA)
                                    561 ;--------------------------------------------------------
                                    562 ; external initialized ram data
                                    563 ;--------------------------------------------------------
                                    564 	.area XISEG   (XDATA)
      00006A                        565 _game_status:
      00006A                        566 	.ds 1
      00006B                        567 _letter_G::
      00006B                        568 	.ds 8
      000073                        569 _letter_A::
      000073                        570 	.ds 8
      00007B                        571 _letter_M::
      00007B                        572 	.ds 8
      000083                        573 _letter_E::
      000083                        574 	.ds 8
      00008B                        575 _letter_O::
      00008B                        576 	.ds 8
      000093                        577 _letter_V::
      000093                        578 	.ds 8
      00009B                        579 _letter_R::
      00009B                        580 	.ds 8
      0000A3                        581 _letter_P::
      0000A3                        582 	.ds 8
      0000AB                        583 _number_1::
      0000AB                        584 	.ds 8
      0000B3                        585 _number_2::
      0000B3                        586 	.ds 8
      0000BB                        587 _letter_W::
      0000BB                        588 	.ds 8
      0000C3                        589 _letter_N::
      0000C3                        590 	.ds 8
      0000CB                        591 _explosion_small::
      0000CB                        592 	.ds 16
      0000DB                        593 _explosion_large::
      0000DB                        594 	.ds 16
      0000EB                        595 _current_row_location_of_player1::
      0000EB                        596 	.ds 1
      0000EC                        597 _current_row_location_of_player2::
      0000EC                        598 	.ds 1
      0000ED                        599 _b_y:
      0000ED                        600 	.ds 1
      0000EE                        601 _b_x:
      0000EE                        602 	.ds 1
      0000EF                        603 _direction_x:
      0000EF                        604 	.ds 1
      0000F0                        605 _direction_y:
      0000F0                        606 	.ds 1
      0000F1                        607 _player_points::
      0000F1                        608 	.ds 2
                                    609 	.area HOME    (CODE)
                                    610 	.area GSINIT0 (CODE)
                                    611 	.area GSINIT1 (CODE)
                                    612 	.area GSINIT2 (CODE)
                                    613 	.area GSINIT3 (CODE)
                                    614 	.area GSINIT4 (CODE)
                                    615 	.area GSINIT5 (CODE)
                                    616 	.area GSINIT  (CODE)
                                    617 	.area GSFINAL (CODE)
                                    618 	.area CSEG    (CODE)
                                    619 ;--------------------------------------------------------
                                    620 ; global & static initialisations
                                    621 ;--------------------------------------------------------
                                    622 	.area HOME    (CODE)
                                    623 	.area GSINIT  (CODE)
                                    624 	.area GSFINAL (CODE)
                                    625 	.area GSINIT  (CODE)
                                    626 ;--------------------------------------------------------
                                    627 ; Home
                                    628 ;--------------------------------------------------------
                                    629 	.area HOME    (CODE)
                                    630 	.area HOME    (CODE)
                                    631 ;--------------------------------------------------------
                                    632 ; code
                                    633 ;--------------------------------------------------------
                                    634 	.area CSEG    (CODE)
                                    635 ;------------------------------------------------------------
                                    636 ;Allocation info for local variables in function 'getGameState'
                                    637 ;------------------------------------------------------------
                                    638 ;	dotmatrix.c:26: game_state_t getGameState()
                                    639 ;	-----------------------------------------
                                    640 ;	 function getGameState
                                    641 ;	-----------------------------------------
      00006D                        642 _getGameState:
                           000007   643 	ar7 = 0x07
                           000006   644 	ar6 = 0x06
                           000005   645 	ar5 = 0x05
                           000004   646 	ar4 = 0x04
                           000003   647 	ar3 = 0x03
                           000002   648 	ar2 = 0x02
                           000001   649 	ar1 = 0x01
                           000000   650 	ar0 = 0x00
                                    651 ;	dotmatrix.c:28: return game_status;
      00006D 90 00 6A         [24]  652 	mov	dptr,#_game_status
      000070 E0               [24]  653 	movx	a,@dptr
                                    654 ;	dotmatrix.c:29: }
      000071 F5 82            [12]  655 	mov	dpl,a
      000073 22               [24]  656 	ret
                                    657 ;------------------------------------------------------------
                                    658 ;Allocation info for local variables in function 'setGameState'
                                    659 ;------------------------------------------------------------
                                    660 ;state                     Allocated with name '_setGameState_state_65536_25'
                                    661 ;------------------------------------------------------------
                                    662 ;	dotmatrix.c:31: void setGameState(game_state_t state)
                                    663 ;	-----------------------------------------
                                    664 ;	 function setGameState
                                    665 ;	-----------------------------------------
      000074                        666 _setGameState:
      000074 E5 82            [12]  667 	mov	a,dpl
      000076 90 00 05         [24]  668 	mov	dptr,#_setGameState_state_65536_25
      000079 F0               [24]  669 	movx	@dptr,a
                                    670 ;	dotmatrix.c:33: game_status = state;
      00007A E0               [24]  671 	movx	a,@dptr
      00007B 90 00 6A         [24]  672 	mov	dptr,#_game_status
      00007E F0               [24]  673 	movx	@dptr,a
                                    674 ;	dotmatrix.c:34: }
      00007F 22               [24]  675 	ret
                                    676 ;------------------------------------------------------------
                                    677 ;Allocation info for local variables in function 'get_unit'
                                    678 ;------------------------------------------------------------
                                    679 ;y                         Allocated with name '_get_unit_y_65536_27'
                                    680 ;------------------------------------------------------------
                                    681 ;	dotmatrix.c:71: uint8_t get_unit(uint8_t y)
                                    682 ;	-----------------------------------------
                                    683 ;	 function get_unit
                                    684 ;	-----------------------------------------
      000080                        685 _get_unit:
      000080 E5 82            [12]  686 	mov	a,dpl
      000082 90 00 06         [24]  687 	mov	dptr,#_get_unit_y_65536_27
      000085 F0               [24]  688 	movx	@dptr,a
                                    689 ;	dotmatrix.c:73: return ((y - 1) >> 3) + 1;
      000086 E0               [24]  690 	movx	a,@dptr
      000087 FF               [12]  691 	mov	r7,a
      000088 7E 00            [12]  692 	mov	r6,#0x00
      00008A 1F               [12]  693 	dec	r7
      00008B BF FF 01         [24]  694 	cjne	r7,#0xff,00103$
      00008E 1E               [12]  695 	dec	r6
      00008F                        696 00103$:
      00008F EE               [12]  697 	mov	a,r6
      000090 C4               [12]  698 	swap	a
      000091 23               [12]  699 	rl	a
      000092 CF               [12]  700 	xch	a,r7
      000093 C4               [12]  701 	swap	a
      000094 23               [12]  702 	rl	a
      000095 54 1F            [12]  703 	anl	a,#0x1f
      000097 6F               [12]  704 	xrl	a,r7
      000098 CF               [12]  705 	xch	a,r7
      000099 54 1F            [12]  706 	anl	a,#0x1f
      00009B CF               [12]  707 	xch	a,r7
      00009C 6F               [12]  708 	xrl	a,r7
      00009D CF               [12]  709 	xch	a,r7
      00009E 30 E4 02         [24]  710 	jnb	acc.4,00104$
      0000A1 44 E0            [12]  711 	orl	a,#0xe0
      0000A3                        712 00104$:
      0000A3 0F               [12]  713 	inc	r7
      0000A4 8F 82            [24]  714 	mov	dpl,r7
                                    715 ;	dotmatrix.c:74: }
      0000A6 22               [24]  716 	ret
                                    717 ;------------------------------------------------------------
                                    718 ;Allocation info for local variables in function 'get_display'
                                    719 ;------------------------------------------------------------
                                    720 ;x                         Allocated with name '_get_display_x_65536_29'
                                    721 ;------------------------------------------------------------
                                    722 ;	dotmatrix.c:76: display_t get_display(uint8_t x)
                                    723 ;	-----------------------------------------
                                    724 ;	 function get_display
                                    725 ;	-----------------------------------------
      0000A7                        726 _get_display:
      0000A7 E5 82            [12]  727 	mov	a,dpl
      0000A9 90 00 07         [24]  728 	mov	dptr,#_get_display_x_65536_29
      0000AC F0               [24]  729 	movx	@dptr,a
                                    730 ;	dotmatrix.c:78: return (x > EIGHT) ? DISPLAY2 : DISPLAY1;
      0000AD E0               [24]  731 	movx	a,@dptr
      0000AE 24 F7            [12]  732 	add	a,#0xff - 0x08
      0000B0 50 06            [24]  733 	jnc	00103$
      0000B2 7E 01            [12]  734 	mov	r6,#0x01
      0000B4 7F 00            [12]  735 	mov	r7,#0x00
      0000B6 80 04            [24]  736 	sjmp	00104$
      0000B8                        737 00103$:
      0000B8 7E 00            [12]  738 	mov	r6,#0x00
      0000BA 7F 00            [12]  739 	mov	r7,#0x00
      0000BC                        740 00104$:
      0000BC 8E 82            [24]  741 	mov	dpl,r6
                                    742 ;	dotmatrix.c:79: }
      0000BE 22               [24]  743 	ret
                                    744 ;------------------------------------------------------------
                                    745 ;Allocation info for local variables in function 'spi_init'
                                    746 ;------------------------------------------------------------
                                    747 ;	dotmatrix.c:81: void spi_init(void)
                                    748 ;	-----------------------------------------
                                    749 ;	 function spi_init
                                    750 ;	-----------------------------------------
      0000BF                        751 _spi_init:
                                    752 ;	dotmatrix.c:84: SS_HIGH;
                                    753 ;	assignBit
      0000BF D2 91            [12]  754 	setb	_P1_1
                                    755 ;	dotmatrix.c:85: SS2_HIGH;
                                    756 ;	assignBit
      0000C1 D2 90            [12]  757 	setb	_P1_0
                                    758 ;	dotmatrix.c:86: LATCH_LOW;
                                    759 ;	assignBit
      0000C3 C2 80            [12]  760 	clr	_P0_0
                                    761 ;	dotmatrix.c:88: SPI_SCL_LOW;
                                    762 ;	assignBit
      0000C5 C2 96            [12]  763 	clr	_P1_6
                                    764 ;	dotmatrix.c:89: MOSI_LOW;
                                    765 ;	assignBit
      0000C7 C2 97            [12]  766 	clr	_P1_7
                                    767 ;	dotmatrix.c:90: }
      0000C9 22               [24]  768 	ret
                                    769 ;------------------------------------------------------------
                                    770 ;Allocation info for local variables in function 'dotmatrix_send'
                                    771 ;------------------------------------------------------------
                                    772 ;sloc0                     Allocated with name '_dotmatrix_send_sloc0_1_0'
                                    773 ;data                      Allocated with name '_dotmatrix_send_PARM_2'
                                    774 ;slave                     Allocated with name '_dotmatrix_send_PARM_3'
                                    775 ;display_unit              Allocated with name '_dotmatrix_send_PARM_4'
                                    776 ;address                   Allocated with name '_dotmatrix_send_address_65536_33'
                                    777 ;j                         Allocated with name '_dotmatrix_send_j_131072_37'
                                    778 ;whole_data                Allocated with name '_dotmatrix_send_whole_data_262144_39'
                                    779 ;i                         Allocated with name '_dotmatrix_send_i_327680_40'
                                    780 ;i                         Allocated with name '_dotmatrix_send_i_327680_43'
                                    781 ;------------------------------------------------------------
                                    782 ;	dotmatrix.c:92: void dotmatrix_send(uint8_t address, uint8_t data, display_t slave, uint8_t display_unit)
                                    783 ;	-----------------------------------------
                                    784 ;	 function dotmatrix_send
                                    785 ;	-----------------------------------------
      0000CA                        786 _dotmatrix_send:
      0000CA E5 82            [12]  787 	mov	a,dpl
      0000CC 90 00 0B         [24]  788 	mov	dptr,#_dotmatrix_send_address_65536_33
      0000CF F0               [24]  789 	movx	@dptr,a
                                    790 ;	dotmatrix.c:94: spi_init();
      0000D0 12 00 BF         [24]  791 	lcall	_spi_init
                                    792 ;	dotmatrix.c:96: if (slave == DISPLAY1)
      0000D3 90 00 09         [24]  793 	mov	dptr,#_dotmatrix_send_PARM_3
      0000D6 E0               [24]  794 	movx	a,@dptr
      0000D7 FF               [12]  795 	mov	r7,a
      0000D8 E0               [24]  796 	movx	a,@dptr
      0000D9 70 04            [24]  797 	jnz	00104$
                                    798 ;	dotmatrix.c:98: SS_LOW; // selecting Display1
                                    799 ;	assignBit
      0000DB C2 91            [12]  800 	clr	_P1_1
      0000DD 80 05            [24]  801 	sjmp	00135$
      0000DF                        802 00104$:
                                    803 ;	dotmatrix.c:100: else if (slave == DISPLAY2)
      0000DF BF 01 02         [24]  804 	cjne	r7,#0x01,00135$
                                    805 ;	dotmatrix.c:102: SS2_LOW; // selecting Display2
                                    806 ;	assignBit
      0000E2 C2 90            [12]  807 	clr	_P1_0
                                    808 ;	dotmatrix.c:105: for (int j = 1; j <= 4; j++)
      0000E4                        809 00135$:
      0000E4 90 00 0B         [24]  810 	mov	dptr,#_dotmatrix_send_address_65536_33
      0000E7 E0               [24]  811 	movx	a,@dptr
      0000E8 FF               [12]  812 	mov	r7,a
      0000E9 90 00 08         [24]  813 	mov	dptr,#_dotmatrix_send_PARM_2
      0000EC E0               [24]  814 	movx	a,@dptr
      0000ED FE               [12]  815 	mov	r6,a
      0000EE 90 00 0A         [24]  816 	mov	dptr,#_dotmatrix_send_PARM_4
      0000F1 E0               [24]  817 	movx	a,@dptr
      0000F2 FD               [12]  818 	mov	r5,a
      0000F3 7B 01            [12]  819 	mov	r3,#0x01
      0000F5 7C 00            [12]  820 	mov	r4,#0x00
      0000F7                        821 00122$:
      0000F7 C3               [12]  822 	clr	c
      0000F8 74 04            [12]  823 	mov	a,#0x04
      0000FA 9B               [12]  824 	subb	a,r3
      0000FB 74 80            [12]  825 	mov	a,#(0x00 ^ 0x80)
      0000FD 8C F0            [24]  826 	mov	b,r4
      0000FF 63 F0 80         [24]  827 	xrl	b,#0x80
      000102 95 F0            [12]  828 	subb	a,b
      000104 50 03            [24]  829 	jnc	00172$
      000106 02 01 96         [24]  830 	ljmp	00114$
      000109                        831 00172$:
                                    832 ;	dotmatrix.c:107: if (j == display_unit)
      000109 8D 01            [24]  833 	mov	ar1,r5
      00010B 7A 00            [12]  834 	mov	r2,#0x00
      00010D EB               [12]  835 	mov	a,r3
      00010E B5 01 61         [24]  836 	cjne	a,ar1,00134$
      000111 EC               [12]  837 	mov	a,r4
      000112 B5 02 5D         [24]  838 	cjne	a,ar2,00134$
                                    839 ;	dotmatrix.c:109: uint16_t whole_data = (uint16_t)(((uint16_t)(address << EIGHT)) | data);
      000115 C0 05            [24]  840 	push	ar5
      000117 8F 01            [24]  841 	mov	ar1,r7
      000119 89 02            [24]  842 	mov	ar2,r1
      00011B 79 00            [12]  843 	mov	r1,#0x00
      00011D 8E 00            [24]  844 	mov	ar0,r6
      00011F 7D 00            [12]  845 	mov	r5,#0x00
      000121 90 00 0C         [24]  846 	mov	dptr,#_dotmatrix_send_whole_data_262144_39
      000124 E8               [12]  847 	mov	a,r0
      000125 49               [12]  848 	orl	a,r1
      000126 F0               [24]  849 	movx	@dptr,a
      000127 ED               [12]  850 	mov	a,r5
      000128 4A               [12]  851 	orl	a,r2
      000129 A3               [24]  852 	inc	dptr
      00012A F0               [24]  853 	movx	@dptr,a
                                    854 ;	dotmatrix.c:111: for (int i = 0; i < SIXTEEN; i++)
      00012B E4               [12]  855 	clr	a
      00012C F5 08            [12]  856 	mov	_dotmatrix_send_sloc0_1_0,a
      00012E F5 09            [12]  857 	mov	(_dotmatrix_send_sloc0_1_0 + 1),a
                                    858 ;	dotmatrix.c:139: SS2_HIGH;
      000130 D0 05            [24]  859 	pop	ar5
                                    860 ;	dotmatrix.c:111: for (int i = 0; i < SIXTEEN; i++)
      000132                        861 00116$:
      000132 C3               [12]  862 	clr	c
      000133 E5 08            [12]  863 	mov	a,_dotmatrix_send_sloc0_1_0
      000135 94 10            [12]  864 	subb	a,#0x10
      000137 E5 09            [12]  865 	mov	a,(_dotmatrix_send_sloc0_1_0 + 1)
      000139 64 80            [12]  866 	xrl	a,#0x80
      00013B 94 80            [12]  867 	subb	a,#0x80
      00013D 50 4F            [24]  868 	jnc	00123$
                                    869 ;	dotmatrix.c:113: if (whole_data & 0x8000)
      00013F 90 00 0C         [24]  870 	mov	dptr,#_dotmatrix_send_whole_data_262144_39
      000142 E0               [24]  871 	movx	a,@dptr
      000143 A3               [24]  872 	inc	dptr
      000144 E0               [24]  873 	movx	a,@dptr
      000145 30 E7 04         [24]  874 	jnb	acc.7,00107$
                                    875 ;	dotmatrix.c:114: MOSI_HIGH;
                                    876 ;	assignBit
      000148 D2 97            [12]  877 	setb	_P1_7
      00014A 80 02            [24]  878 	sjmp	00108$
      00014C                        879 00107$:
                                    880 ;	dotmatrix.c:116: MOSI_LOW;
                                    881 ;	assignBit
      00014C C2 97            [12]  882 	clr	_P1_7
      00014E                        883 00108$:
                                    884 ;	dotmatrix.c:118: SPI_SCL_HIGH;
                                    885 ;	assignBit
      00014E D2 96            [12]  886 	setb	_P1_6
                                    887 ;	dotmatrix.c:119: SPI_SCL_LOW;
                                    888 ;	assignBit
      000150 C2 96            [12]  889 	clr	_P1_6
                                    890 ;	dotmatrix.c:121: whole_data <<= 1; // shifting one bit
      000152 90 00 0C         [24]  891 	mov	dptr,#_dotmatrix_send_whole_data_262144_39
      000155 E0               [24]  892 	movx	a,@dptr
      000156 F9               [12]  893 	mov	r1,a
      000157 A3               [24]  894 	inc	dptr
      000158 E0               [24]  895 	movx	a,@dptr
      000159 FA               [12]  896 	mov	r2,a
      00015A E9               [12]  897 	mov	a,r1
      00015B 29               [12]  898 	add	a,r1
      00015C F9               [12]  899 	mov	r1,a
      00015D EA               [12]  900 	mov	a,r2
      00015E 33               [12]  901 	rlc	a
      00015F FA               [12]  902 	mov	r2,a
      000160 90 00 0C         [24]  903 	mov	dptr,#_dotmatrix_send_whole_data_262144_39
      000163 E9               [12]  904 	mov	a,r1
      000164 F0               [24]  905 	movx	@dptr,a
      000165 EA               [12]  906 	mov	a,r2
      000166 A3               [24]  907 	inc	dptr
      000167 F0               [24]  908 	movx	@dptr,a
                                    909 ;	dotmatrix.c:111: for (int i = 0; i < SIXTEEN; i++)
      000168 05 08            [12]  910 	inc	_dotmatrix_send_sloc0_1_0
      00016A E4               [12]  911 	clr	a
                                    912 ;	dotmatrix.c:127: for (int i = 0; i < SIXTEEN; i++)
      00016B B5 08 C4         [24]  913 	cjne	a,_dotmatrix_send_sloc0_1_0,00116$
      00016E 05 09            [12]  914 	inc	(_dotmatrix_send_sloc0_1_0 + 1)
      000170 80 C0            [24]  915 	sjmp	00116$
      000172                        916 00134$:
      000172 79 00            [12]  917 	mov	r1,#0x00
      000174 7A 00            [12]  918 	mov	r2,#0x00
      000176                        919 00119$:
      000176 C3               [12]  920 	clr	c
      000177 E9               [12]  921 	mov	a,r1
      000178 94 10            [12]  922 	subb	a,#0x10
      00017A EA               [12]  923 	mov	a,r2
      00017B 64 80            [12]  924 	xrl	a,#0x80
      00017D 94 80            [12]  925 	subb	a,#0x80
      00017F 50 0D            [24]  926 	jnc	00123$
                                    927 ;	dotmatrix.c:130: MOSI_LOW;
                                    928 ;	assignBit
      000181 C2 97            [12]  929 	clr	_P1_7
                                    930 ;	dotmatrix.c:132: SPI_SCL_HIGH;
                                    931 ;	assignBit
      000183 D2 96            [12]  932 	setb	_P1_6
                                    933 ;	dotmatrix.c:133: SPI_SCL_LOW;
                                    934 ;	assignBit
      000185 C2 96            [12]  935 	clr	_P1_6
                                    936 ;	dotmatrix.c:127: for (int i = 0; i < SIXTEEN; i++)
      000187 09               [12]  937 	inc	r1
      000188 B9 00 EB         [24]  938 	cjne	r1,#0x00,00119$
      00018B 0A               [12]  939 	inc	r2
      00018C 80 E8            [24]  940 	sjmp	00119$
      00018E                        941 00123$:
                                    942 ;	dotmatrix.c:105: for (int j = 1; j <= 4; j++)
      00018E 0B               [12]  943 	inc	r3
      00018F BB 00 01         [24]  944 	cjne	r3,#0x00,00180$
      000192 0C               [12]  945 	inc	r4
      000193                        946 00180$:
      000193 02 00 F7         [24]  947 	ljmp	00122$
      000196                        948 00114$:
                                    949 ;	dotmatrix.c:138: SS_HIGH;
                                    950 ;	assignBit
      000196 D2 91            [12]  951 	setb	_P1_1
                                    952 ;	dotmatrix.c:139: SS2_HIGH;
                                    953 ;	assignBit
      000198 D2 90            [12]  954 	setb	_P1_0
                                    955 ;	dotmatrix.c:140: }
      00019A 22               [24]  956 	ret
                                    957 ;------------------------------------------------------------
                                    958 ;Allocation info for local variables in function 'move_p1controller_up'
                                    959 ;------------------------------------------------------------
                                    960 ;how_much_pixel_in_d2      Allocated with name '_move_p1controller_up_how_much_pixel_in_d2_65536_45'
                                    961 ;how_much_pixel_in_d1      Allocated with name '_move_p1controller_up_how_much_pixel_in_d1_65536_45'
                                    962 ;start_pos_d1              Allocated with name '_move_p1controller_up_start_pos_d1_65536_45'
                                    963 ;temp_location_d2          Allocated with name '_move_p1controller_up_temp_location_d2_65536_45'
                                    964 ;i                         Allocated with name '_move_p1controller_up_i_196608_48'
                                    965 ;i                         Allocated with name '_move_p1controller_up_i_196608_50'
                                    966 ;------------------------------------------------------------
                                    967 ;	dotmatrix.c:142: void move_p1controller_up()
                                    968 ;	-----------------------------------------
                                    969 ;	 function move_p1controller_up
                                    970 ;	-----------------------------------------
      00019B                        971 _move_p1controller_up:
                                    972 ;	dotmatrix.c:146: if (current_row_location_of_player1 == 1)
      00019B 90 00 EB         [24]  973 	mov	dptr,#_current_row_location_of_player1
      00019E E0               [24]  974 	movx	a,@dptr
      00019F FF               [12]  975 	mov	r7,a
      0001A0 BF 01 01         [24]  976 	cjne	r7,#0x01,00102$
                                    977 ;	dotmatrix.c:147: return;
      0001A3 22               [24]  978 	ret
      0001A4                        979 00102$:
                                    980 ;	dotmatrix.c:149: if (current_row_location_of_player1 >= 10)
      0001A4 90 00 EB         [24]  981 	mov	dptr,#_current_row_location_of_player1
      0001A7 E0               [24]  982 	movx	a,@dptr
      0001A8 FF               [12]  983 	mov	r7,a
      0001A9 BF 0A 00         [24]  984 	cjne	r7,#0x0a,00162$
      0001AC                        985 00162$:
      0001AC 40 3F            [24]  986 	jc	00112$
                                    987 ;	dotmatrix.c:151: temp_location_d2 = current_row_location_of_player1 % MAX_LENGTH;
      0001AE 90 00 EB         [24]  988 	mov	dptr,#_current_row_location_of_player1
      0001B1 E0               [24]  989 	movx	a,@dptr
      0001B2 FF               [12]  990 	mov	r7,a
      0001B3 53 07 07         [24]  991 	anl	ar7,#0x07
                                    992 ;	dotmatrix.c:152: dotmatrix_send(temp_location_d2 + 3, ZERO, DISPLAY2, PLAYER1_UNIT);
      0001B6 8F 06            [24]  993 	mov	ar6,r7
      0001B8 0E               [12]  994 	inc	r6
      0001B9 0E               [12]  995 	inc	r6
      0001BA 0E               [12]  996 	inc	r6
      0001BB 90 00 08         [24]  997 	mov	dptr,#_dotmatrix_send_PARM_2
      0001BE E4               [12]  998 	clr	a
      0001BF F0               [24]  999 	movx	@dptr,a
      0001C0 90 00 09         [24] 1000 	mov	dptr,#_dotmatrix_send_PARM_3
      0001C3 04               [12] 1001 	inc	a
      0001C4 F0               [24] 1002 	movx	@dptr,a
      0001C5 90 00 0A         [24] 1003 	mov	dptr,#_dotmatrix_send_PARM_4
      0001C8 F0               [24] 1004 	movx	@dptr,a
      0001C9 8E 82            [24] 1005 	mov	dpl,r6
      0001CB C0 07            [24] 1006 	push	ar7
      0001CD 12 00 CA         [24] 1007 	lcall	_dotmatrix_send
      0001D0 D0 07            [24] 1008 	pop	ar7
                                   1009 ;	dotmatrix.c:154: temp_location_d2--;
      0001D2 1F               [12] 1010 	dec	r7
                                   1011 ;	dotmatrix.c:155: (current_row_location_of_player1) = (current_row_location_of_player1)-1;
      0001D3 90 00 EB         [24] 1012 	mov	dptr,#_current_row_location_of_player1
      0001D6 E0               [24] 1013 	movx	a,@dptr
      0001D7 14               [12] 1014 	dec	a
      0001D8 F0               [24] 1015 	movx	@dptr,a
                                   1016 ;	dotmatrix.c:157: dotmatrix_send(temp_location_d2, PLAYER1_ROW, DISPLAY2, PLAYER1_UNIT);
      0001D9 90 00 08         [24] 1017 	mov	dptr,#_dotmatrix_send_PARM_2
      0001DC 74 80            [12] 1018 	mov	a,#0x80
      0001DE F0               [24] 1019 	movx	@dptr,a
      0001DF 90 00 09         [24] 1020 	mov	dptr,#_dotmatrix_send_PARM_3
      0001E2 23               [12] 1021 	rl	a
      0001E3 F0               [24] 1022 	movx	@dptr,a
      0001E4 90 00 0A         [24] 1023 	mov	dptr,#_dotmatrix_send_PARM_4
      0001E7 F0               [24] 1024 	movx	@dptr,a
      0001E8 8F 82            [24] 1025 	mov	dpl,r7
                                   1026 ;	dotmatrix.c:158: return;
      0001EA 02 00 CA         [24] 1027 	ljmp	_dotmatrix_send
      0001ED                       1028 00112$:
                                   1029 ;	dotmatrix.c:160: else if (current_row_location_of_player1 <= 9 && current_row_location_of_player1 >= 6)
      0001ED 90 00 EB         [24] 1030 	mov	dptr,#_current_row_location_of_player1
      0001F0 E0               [24] 1031 	movx	a,@dptr
      0001F1 FF               [12] 1032 	mov  r7,a
      0001F2 24 F6            [12] 1033 	add	a,#0xff - 0x09
      0001F4 50 03            [24] 1034 	jnc	00164$
      0001F6 02 02 E7         [24] 1035 	ljmp	00108$
      0001F9                       1036 00164$:
      0001F9 90 00 EB         [24] 1037 	mov	dptr,#_current_row_location_of_player1
      0001FC E0               [24] 1038 	movx	a,@dptr
      0001FD FF               [12] 1039 	mov	r7,a
      0001FE BF 06 00         [24] 1040 	cjne	r7,#0x06,00165$
      000201                       1041 00165$:
      000201 50 03            [24] 1042 	jnc	00166$
      000203 02 02 E7         [24] 1043 	ljmp	00108$
      000206                       1044 00166$:
                                   1045 ;	dotmatrix.c:162: how_much_pixel_in_d2 = (current_row_location_of_player1 + (PLAYER_LENGTH - 2)) - MAX_LENGTH;
      000206 90 00 EB         [24] 1046 	mov	dptr,#_current_row_location_of_player1
      000209 E0               [24] 1047 	movx	a,@dptr
                                   1048 ;	dotmatrix.c:163: how_much_pixel_in_d1 = PLAYER_LENGTH - how_much_pixel_in_d2;
      00020A 24 FA            [12] 1049 	add	a,#0xfa
      00020C FF               [12] 1050 	mov	r7,a
      00020D FE               [12] 1051 	mov	r6,a
      00020E 74 04            [12] 1052 	mov	a,#0x04
      000210 C3               [12] 1053 	clr	c
      000211 9E               [12] 1054 	subb	a,r6
      000212 FE               [12] 1055 	mov	r6,a
                                   1056 ;	dotmatrix.c:165: start_pos_d1 = current_row_location_of_player1 - 1;
      000213 E0               [24] 1057 	movx	a,@dptr
      000214 FD               [12] 1058 	mov	r5,a
      000215 1D               [12] 1059 	dec	r5
                                   1060 ;	dotmatrix.c:167: dotmatrix_send(((current_row_location_of_player1 + 3) % EIGHT), ZERO, DISPLAY2, PLAYER1_UNIT);
      000216 E0               [24] 1061 	movx	a,@dptr
      000217 FC               [12] 1062 	mov	r4,a
      000218 7B 00            [12] 1063 	mov	r3,#0x00
      00021A 74 03            [12] 1064 	mov	a,#0x03
      00021C 2C               [12] 1065 	add	a,r4
      00021D FC               [12] 1066 	mov	r4,a
      00021E E4               [12] 1067 	clr	a
      00021F 3B               [12] 1068 	addc	a,r3
      000220 FB               [12] 1069 	mov	r3,a
      000221 90 00 28         [24] 1070 	mov	dptr,#__modsint_PARM_2
      000224 74 08            [12] 1071 	mov	a,#0x08
      000226 F0               [24] 1072 	movx	@dptr,a
      000227 E4               [12] 1073 	clr	a
      000228 A3               [24] 1074 	inc	dptr
      000229 F0               [24] 1075 	movx	@dptr,a
      00022A 8C 82            [24] 1076 	mov	dpl,r4
      00022C 8B 83            [24] 1077 	mov	dph,r3
      00022E C0 07            [24] 1078 	push	ar7
      000230 C0 06            [24] 1079 	push	ar6
      000232 C0 05            [24] 1080 	push	ar5
      000234 12 19 C3         [24] 1081 	lcall	__modsint
      000237 AB 82            [24] 1082 	mov	r3,dpl
      000239 90 00 08         [24] 1083 	mov	dptr,#_dotmatrix_send_PARM_2
      00023C E4               [12] 1084 	clr	a
      00023D F0               [24] 1085 	movx	@dptr,a
      00023E 90 00 09         [24] 1086 	mov	dptr,#_dotmatrix_send_PARM_3
      000241 04               [12] 1087 	inc	a
      000242 F0               [24] 1088 	movx	@dptr,a
      000243 90 00 0A         [24] 1089 	mov	dptr,#_dotmatrix_send_PARM_4
      000246 F0               [24] 1090 	movx	@dptr,a
      000247 8B 82            [24] 1091 	mov	dpl,r3
      000249 12 00 CA         [24] 1092 	lcall	_dotmatrix_send
      00024C D0 05            [24] 1093 	pop	ar5
      00024E D0 06            [24] 1094 	pop	ar6
      000250 D0 07            [24] 1095 	pop	ar7
                                   1096 ;	dotmatrix.c:168: current_row_location_of_player1--;
      000252 90 00 EB         [24] 1097 	mov	dptr,#_current_row_location_of_player1
      000255 E0               [24] 1098 	movx	a,@dptr
      000256 14               [12] 1099 	dec	a
      000257 F0               [24] 1100 	movx	@dptr,a
                                   1101 ;	dotmatrix.c:170: for (int i = 0; i < how_much_pixel_in_d1; i++)
      000258 7B 00            [12] 1102 	mov	r3,#0x00
      00025A 7C 00            [12] 1103 	mov	r4,#0x00
      00025C                       1104 00115$:
      00025C 8E 01            [24] 1105 	mov	ar1,r6
      00025E 7A 00            [12] 1106 	mov	r2,#0x00
      000260 C3               [12] 1107 	clr	c
      000261 EB               [12] 1108 	mov	a,r3
      000262 99               [12] 1109 	subb	a,r1
      000263 EC               [12] 1110 	mov	a,r4
      000264 64 80            [12] 1111 	xrl	a,#0x80
      000266 8A F0            [24] 1112 	mov	b,r2
      000268 63 F0 80         [24] 1113 	xrl	b,#0x80
      00026B 95 F0            [12] 1114 	subb	a,b
      00026D 50 37            [24] 1115 	jnc	00103$
                                   1116 ;	dotmatrix.c:172: dotmatrix_send(start_pos_d1 + i, PLAYER1_ROW, DISPLAY1, PLAYER1_UNIT);
      00026F 8B 02            [24] 1117 	mov	ar2,r3
      000271 8D 01            [24] 1118 	mov	ar1,r5
      000273 EA               [12] 1119 	mov	a,r2
      000274 29               [12] 1120 	add	a,r1
      000275 FA               [12] 1121 	mov	r2,a
      000276 90 00 08         [24] 1122 	mov	dptr,#_dotmatrix_send_PARM_2
      000279 74 80            [12] 1123 	mov	a,#0x80
      00027B F0               [24] 1124 	movx	@dptr,a
      00027C 90 00 09         [24] 1125 	mov	dptr,#_dotmatrix_send_PARM_3
      00027F E4               [12] 1126 	clr	a
      000280 F0               [24] 1127 	movx	@dptr,a
      000281 90 00 0A         [24] 1128 	mov	dptr,#_dotmatrix_send_PARM_4
      000284 04               [12] 1129 	inc	a
      000285 F0               [24] 1130 	movx	@dptr,a
      000286 8A 82            [24] 1131 	mov	dpl,r2
      000288 C0 07            [24] 1132 	push	ar7
      00028A C0 06            [24] 1133 	push	ar6
      00028C C0 05            [24] 1134 	push	ar5
      00028E C0 04            [24] 1135 	push	ar4
      000290 C0 03            [24] 1136 	push	ar3
      000292 12 00 CA         [24] 1137 	lcall	_dotmatrix_send
      000295 D0 03            [24] 1138 	pop	ar3
      000297 D0 04            [24] 1139 	pop	ar4
      000299 D0 05            [24] 1140 	pop	ar5
      00029B D0 06            [24] 1141 	pop	ar6
      00029D D0 07            [24] 1142 	pop	ar7
                                   1143 ;	dotmatrix.c:170: for (int i = 0; i < how_much_pixel_in_d1; i++)
      00029F 0B               [12] 1144 	inc	r3
      0002A0 BB 00 B9         [24] 1145 	cjne	r3,#0x00,00115$
      0002A3 0C               [12] 1146 	inc	r4
      0002A4 80 B6            [24] 1147 	sjmp	00115$
      0002A6                       1148 00103$:
                                   1149 ;	dotmatrix.c:175: for (int i = 0; i < (how_much_pixel_in_d2); i++)
      0002A6 7D 00            [12] 1150 	mov	r5,#0x00
      0002A8 7E 00            [12] 1151 	mov	r6,#0x00
      0002AA                       1152 00118$:
      0002AA 8F 03            [24] 1153 	mov	ar3,r7
      0002AC 7C 00            [12] 1154 	mov	r4,#0x00
      0002AE C3               [12] 1155 	clr	c
      0002AF ED               [12] 1156 	mov	a,r5
      0002B0 9B               [12] 1157 	subb	a,r3
      0002B1 EE               [12] 1158 	mov	a,r6
      0002B2 64 80            [12] 1159 	xrl	a,#0x80
      0002B4 8C F0            [24] 1160 	mov	b,r4
      0002B6 63 F0 80         [24] 1161 	xrl	b,#0x80
      0002B9 95 F0            [12] 1162 	subb	a,b
      0002BB 50 6B            [24] 1163 	jnc	00120$
                                   1164 ;	dotmatrix.c:177: dotmatrix_send(1 + i, PLAYER1_ROW, DISPLAY2, PLAYER1_UNIT);
      0002BD 8D 04            [24] 1165 	mov	ar4,r5
      0002BF 0C               [12] 1166 	inc	r4
      0002C0 90 00 08         [24] 1167 	mov	dptr,#_dotmatrix_send_PARM_2
      0002C3 74 80            [12] 1168 	mov	a,#0x80
      0002C5 F0               [24] 1169 	movx	@dptr,a
      0002C6 90 00 09         [24] 1170 	mov	dptr,#_dotmatrix_send_PARM_3
      0002C9 23               [12] 1171 	rl	a
      0002CA F0               [24] 1172 	movx	@dptr,a
      0002CB 90 00 0A         [24] 1173 	mov	dptr,#_dotmatrix_send_PARM_4
      0002CE F0               [24] 1174 	movx	@dptr,a
      0002CF 8C 82            [24] 1175 	mov	dpl,r4
      0002D1 C0 07            [24] 1176 	push	ar7
      0002D3 C0 06            [24] 1177 	push	ar6
      0002D5 C0 05            [24] 1178 	push	ar5
      0002D7 12 00 CA         [24] 1179 	lcall	_dotmatrix_send
      0002DA D0 05            [24] 1180 	pop	ar5
      0002DC D0 06            [24] 1181 	pop	ar6
      0002DE D0 07            [24] 1182 	pop	ar7
                                   1183 ;	dotmatrix.c:175: for (int i = 0; i < (how_much_pixel_in_d2); i++)
      0002E0 0D               [12] 1184 	inc	r5
      0002E1 BD 00 C6         [24] 1185 	cjne	r5,#0x00,00118$
      0002E4 0E               [12] 1186 	inc	r6
      0002E5 80 C3            [24] 1187 	sjmp	00118$
      0002E7                       1188 00108$:
                                   1189 ;	dotmatrix.c:180: else if (current_row_location_of_player1 <= 5)
      0002E7 90 00 EB         [24] 1190 	mov	dptr,#_current_row_location_of_player1
      0002EA E0               [24] 1191 	movx	a,@dptr
      0002EB FF               [12] 1192 	mov  r7,a
      0002EC 24 FA            [12] 1193 	add	a,#0xff - 0x05
      0002EE 40 38            [24] 1194 	jc	00120$
                                   1195 ;	dotmatrix.c:182: dotmatrix_send(current_row_location_of_player1 + 3, ZERO, DISPLAY1, PLAYER1_UNIT);
      0002F0 90 00 EB         [24] 1196 	mov	dptr,#_current_row_location_of_player1
      0002F3 E0               [24] 1197 	movx	a,@dptr
      0002F4 FF               [12] 1198 	mov	r7,a
      0002F5 0F               [12] 1199 	inc	r7
      0002F6 0F               [12] 1200 	inc	r7
      0002F7 0F               [12] 1201 	inc	r7
      0002F8 90 00 08         [24] 1202 	mov	dptr,#_dotmatrix_send_PARM_2
      0002FB E4               [12] 1203 	clr	a
      0002FC F0               [24] 1204 	movx	@dptr,a
      0002FD 90 00 09         [24] 1205 	mov	dptr,#_dotmatrix_send_PARM_3
      000300 F0               [24] 1206 	movx	@dptr,a
      000301 90 00 0A         [24] 1207 	mov	dptr,#_dotmatrix_send_PARM_4
      000304 04               [12] 1208 	inc	a
      000305 F0               [24] 1209 	movx	@dptr,a
      000306 8F 82            [24] 1210 	mov	dpl,r7
      000308 12 00 CA         [24] 1211 	lcall	_dotmatrix_send
                                   1212 ;	dotmatrix.c:183: (current_row_location_of_player1) = (current_row_location_of_player1)-1;
      00030B 90 00 EB         [24] 1213 	mov	dptr,#_current_row_location_of_player1
      00030E E0               [24] 1214 	movx	a,@dptr
      00030F 14               [12] 1215 	dec	a
      000310 F0               [24] 1216 	movx	@dptr,a
                                   1217 ;	dotmatrix.c:184: dotmatrix_send(current_row_location_of_player1, PLAYER1_ROW, DISPLAY1, PLAYER1_UNIT);
      000311 E0               [24] 1218 	movx	a,@dptr
      000312 FF               [12] 1219 	mov	r7,a
      000313 90 00 08         [24] 1220 	mov	dptr,#_dotmatrix_send_PARM_2
      000316 74 80            [12] 1221 	mov	a,#0x80
      000318 F0               [24] 1222 	movx	@dptr,a
      000319 90 00 09         [24] 1223 	mov	dptr,#_dotmatrix_send_PARM_3
      00031C E4               [12] 1224 	clr	a
      00031D F0               [24] 1225 	movx	@dptr,a
      00031E 90 00 0A         [24] 1226 	mov	dptr,#_dotmatrix_send_PARM_4
      000321 04               [12] 1227 	inc	a
      000322 F0               [24] 1228 	movx	@dptr,a
      000323 8F 82            [24] 1229 	mov	dpl,r7
                                   1230 ;	dotmatrix.c:186: }
      000325 02 00 CA         [24] 1231 	ljmp	_dotmatrix_send
      000328                       1232 00120$:
      000328 22               [24] 1233 	ret
                                   1234 ;------------------------------------------------------------
                                   1235 ;Allocation info for local variables in function 'move_p1controller_down'
                                   1236 ;------------------------------------------------------------
                                   1237 ;how_much_pixel_in_d2      Allocated with name '_move_p1controller_down_how_much_pixel_in_d2_65536_53'
                                   1238 ;how_much_pixel_in_d1      Allocated with name '_move_p1controller_down_how_much_pixel_in_d1_65536_53'
                                   1239 ;start_pos_d1              Allocated with name '_move_p1controller_down_start_pos_d1_65536_53'
                                   1240 ;start_pos_d2              Allocated with name '_move_p1controller_down_start_pos_d2_65536_53'
                                   1241 ;i                         Allocated with name '_move_p1controller_down_i_196608_57'
                                   1242 ;i                         Allocated with name '_move_p1controller_down_i_196608_59'
                                   1243 ;------------------------------------------------------------
                                   1244 ;	dotmatrix.c:188: void move_p1controller_down()
                                   1245 ;	-----------------------------------------
                                   1246 ;	 function move_p1controller_down
                                   1247 ;	-----------------------------------------
      000329                       1248 _move_p1controller_down:
                                   1249 ;	dotmatrix.c:193: if (current_row_location_of_player1 >= 5)
      000329 90 00 EB         [24] 1250 	mov	dptr,#_current_row_location_of_player1
      00032C E0               [24] 1251 	movx	a,@dptr
      00032D FF               [12] 1252 	mov	r7,a
      00032E BF 05 00         [24] 1253 	cjne	r7,#0x05,00173$
      000331                       1254 00173$:
      000331 50 03            [24] 1255 	jnc	00174$
      000333 02 04 95         [24] 1256 	ljmp	00111$
      000336                       1257 00174$:
                                   1258 ;	dotmatrix.c:195: if (current_row_location_of_player1 == 13)
      000336 90 00 EB         [24] 1259 	mov	dptr,#_current_row_location_of_player1
      000339 E0               [24] 1260 	movx	a,@dptr
      00033A FF               [12] 1261 	mov	r7,a
      00033B BF 0D 01         [24] 1262 	cjne	r7,#0x0d,00102$
                                   1263 ;	dotmatrix.c:196: return;
      00033E 22               [24] 1264 	ret
      00033F                       1265 00102$:
                                   1266 ;	dotmatrix.c:198: how_much_pixel_in_d2 = (current_row_location_of_player1 < 9) ? (current_row_location_of_player1 + (PLAYER_LENGTH)) - MAX_LENGTH : PLAYER_LENGTH;
      00033F 90 00 EB         [24] 1267 	mov	dptr,#_current_row_location_of_player1
      000342 E0               [24] 1268 	movx	a,@dptr
      000343 FF               [12] 1269 	mov	r7,a
      000344 BF 09 00         [24] 1270 	cjne	r7,#0x09,00177$
      000347                       1271 00177$:
      000347 50 0D            [24] 1272 	jnc	00121$
      000349 90 00 EB         [24] 1273 	mov	dptr,#_current_row_location_of_player1
      00034C E0               [24] 1274 	movx	a,@dptr
      00034D 24 FC            [12] 1275 	add	a,#0xfc
      00034F FE               [12] 1276 	mov	r6,a
      000350 33               [12] 1277 	rlc	a
      000351 95 E0            [12] 1278 	subb	a,acc
      000353 FF               [12] 1279 	mov	r7,a
      000354 80 04            [24] 1280 	sjmp	00122$
      000356                       1281 00121$:
      000356 7E 04            [12] 1282 	mov	r6,#0x04
      000358 7F 00            [12] 1283 	mov	r7,#0x00
      00035A                       1284 00122$:
                                   1285 ;	dotmatrix.c:200: how_much_pixel_in_d1 = PLAYER_LENGTH - how_much_pixel_in_d2;
      00035A 8E 07            [24] 1286 	mov	ar7,r6
      00035C 74 04            [12] 1287 	mov	a,#0x04
      00035E C3               [12] 1288 	clr	c
      00035F 9F               [12] 1289 	subb	a,r7
      000360 FF               [12] 1290 	mov	r7,a
                                   1291 ;	dotmatrix.c:202: start_pos_d1 = (current_row_location_of_player1 <= EIGHT) ? current_row_location_of_player1 : EIGHT;
      000361 90 00 EB         [24] 1292 	mov	dptr,#_current_row_location_of_player1
      000364 E0               [24] 1293 	movx	a,@dptr
      000365 24 F7            [12] 1294 	add	a,#0xff - 0x08
      000367 40 09            [24] 1295 	jc	00123$
      000369 90 00 EB         [24] 1296 	mov	dptr,#_current_row_location_of_player1
      00036C E0               [24] 1297 	movx	a,@dptr
      00036D FC               [12] 1298 	mov	r4,a
      00036E 7D 00            [12] 1299 	mov	r5,#0x00
      000370 80 04            [24] 1300 	sjmp	00124$
      000372                       1301 00123$:
      000372 7C 08            [12] 1302 	mov	r4,#0x08
      000374 7D 00            [12] 1303 	mov	r5,#0x00
      000376                       1304 00124$:
      000376 90 00 0E         [24] 1305 	mov	dptr,#_move_p1controller_down_start_pos_d1_65536_53
      000379 EC               [12] 1306 	mov	a,r4
      00037A F0               [24] 1307 	movx	@dptr,a
                                   1308 ;	dotmatrix.c:203: start_pos_d2 = (current_row_location_of_player1 > EIGHT) ? (current_row_location_of_player1 - MAX_LENGTH) : 1;
      00037B 90 00 EB         [24] 1309 	mov	dptr,#_current_row_location_of_player1
      00037E E0               [24] 1310 	movx	a,@dptr
      00037F 24 F7            [12] 1311 	add	a,#0xff - 0x08
      000381 50 0D            [24] 1312 	jnc	00125$
      000383 90 00 EB         [24] 1313 	mov	dptr,#_current_row_location_of_player1
      000386 E0               [24] 1314 	movx	a,@dptr
      000387 24 F8            [12] 1315 	add	a,#0xf8
      000389 FB               [12] 1316 	mov	r3,a
      00038A 33               [12] 1317 	rlc	a
      00038B 95 E0            [12] 1318 	subb	a,acc
      00038D FD               [12] 1319 	mov	r5,a
      00038E 80 04            [24] 1320 	sjmp	00126$
      000390                       1321 00125$:
      000390 7B 01            [12] 1322 	mov	r3,#0x01
      000392 7D 00            [12] 1323 	mov	r5,#0x00
      000394                       1324 00126$:
      000394 90 00 0F         [24] 1325 	mov	dptr,#_move_p1controller_down_start_pos_d2_65536_53
      000397 EB               [12] 1326 	mov	a,r3
      000398 F0               [24] 1327 	movx	@dptr,a
                                   1328 ;	dotmatrix.c:205: if (current_row_location_of_player1 <= EIGHT)
      000399 90 00 EB         [24] 1329 	mov	dptr,#_current_row_location_of_player1
      00039C E0               [24] 1330 	movx	a,@dptr
      00039D 24 F7            [12] 1331 	add	a,#0xff - 0x08
      00039F 40 27            [24] 1332 	jc	00104$
                                   1333 ;	dotmatrix.c:207: dotmatrix_send(start_pos_d1, ZERO, DISPLAY1, PLAYER1_UNIT);
      0003A1 90 00 08         [24] 1334 	mov	dptr,#_dotmatrix_send_PARM_2
      0003A4 E4               [12] 1335 	clr	a
      0003A5 F0               [24] 1336 	movx	@dptr,a
      0003A6 90 00 09         [24] 1337 	mov	dptr,#_dotmatrix_send_PARM_3
      0003A9 F0               [24] 1338 	movx	@dptr,a
      0003AA 90 00 0A         [24] 1339 	mov	dptr,#_dotmatrix_send_PARM_4
      0003AD 04               [12] 1340 	inc	a
      0003AE F0               [24] 1341 	movx	@dptr,a
      0003AF 8C 82            [24] 1342 	mov	dpl,r4
      0003B1 C0 07            [24] 1343 	push	ar7
      0003B3 C0 06            [24] 1344 	push	ar6
      0003B5 C0 04            [24] 1345 	push	ar4
      0003B7 12 00 CA         [24] 1346 	lcall	_dotmatrix_send
      0003BA D0 04            [24] 1347 	pop	ar4
      0003BC D0 06            [24] 1348 	pop	ar6
      0003BE D0 07            [24] 1349 	pop	ar7
                                   1350 ;	dotmatrix.c:208: start_pos_d1++;
      0003C0 90 00 0E         [24] 1351 	mov	dptr,#_move_p1controller_down_start_pos_d1_65536_53
      0003C3 EC               [12] 1352 	mov	a,r4
      0003C4 04               [12] 1353 	inc	a
      0003C5 F0               [24] 1354 	movx	@dptr,a
      0003C6 80 25            [24] 1355 	sjmp	00105$
      0003C8                       1356 00104$:
                                   1357 ;	dotmatrix.c:212: dotmatrix_send(start_pos_d2, ZERO, DISPLAY2, PLAYER1_UNIT);
      0003C8 90 00 08         [24] 1358 	mov	dptr,#_dotmatrix_send_PARM_2
      0003CB E4               [12] 1359 	clr	a
      0003CC F0               [24] 1360 	movx	@dptr,a
      0003CD 90 00 09         [24] 1361 	mov	dptr,#_dotmatrix_send_PARM_3
      0003D0 04               [12] 1362 	inc	a
      0003D1 F0               [24] 1363 	movx	@dptr,a
      0003D2 90 00 0A         [24] 1364 	mov	dptr,#_dotmatrix_send_PARM_4
      0003D5 F0               [24] 1365 	movx	@dptr,a
      0003D6 8B 82            [24] 1366 	mov	dpl,r3
      0003D8 C0 07            [24] 1367 	push	ar7
      0003DA C0 06            [24] 1368 	push	ar6
      0003DC C0 03            [24] 1369 	push	ar3
      0003DE 12 00 CA         [24] 1370 	lcall	_dotmatrix_send
      0003E1 D0 03            [24] 1371 	pop	ar3
      0003E3 D0 06            [24] 1372 	pop	ar6
      0003E5 D0 07            [24] 1373 	pop	ar7
                                   1374 ;	dotmatrix.c:213: start_pos_d2++;
      0003E7 90 00 0F         [24] 1375 	mov	dptr,#_move_p1controller_down_start_pos_d2_65536_53
      0003EA EB               [12] 1376 	mov	a,r3
      0003EB 04               [12] 1377 	inc	a
      0003EC F0               [24] 1378 	movx	@dptr,a
      0003ED                       1379 00105$:
                                   1380 ;	dotmatrix.c:216: current_row_location_of_player1 = current_row_location_of_player1 + 1;
      0003ED 90 00 EB         [24] 1381 	mov	dptr,#_current_row_location_of_player1
      0003F0 E0               [24] 1382 	movx	a,@dptr
      0003F1 04               [12] 1383 	inc	a
      0003F2 F0               [24] 1384 	movx	@dptr,a
                                   1385 ;	dotmatrix.c:218: for (int i = 0; i < how_much_pixel_in_d1; i++)
      0003F3 90 00 0E         [24] 1386 	mov	dptr,#_move_p1controller_down_start_pos_d1_65536_53
      0003F6 E0               [24] 1387 	movx	a,@dptr
      0003F7 FD               [12] 1388 	mov	r5,a
      0003F8 7B 00            [12] 1389 	mov	r3,#0x00
      0003FA 7C 00            [12] 1390 	mov	r4,#0x00
      0003FC                       1391 00114$:
      0003FC 8F 01            [24] 1392 	mov	ar1,r7
      0003FE 7A 00            [12] 1393 	mov	r2,#0x00
      000400 C3               [12] 1394 	clr	c
      000401 EB               [12] 1395 	mov	a,r3
      000402 99               [12] 1396 	subb	a,r1
      000403 EC               [12] 1397 	mov	a,r4
      000404 64 80            [12] 1398 	xrl	a,#0x80
      000406 8A F0            [24] 1399 	mov	b,r2
      000408 63 F0 80         [24] 1400 	xrl	b,#0x80
      00040B 95 F0            [12] 1401 	subb	a,b
      00040D 50 37            [24] 1402 	jnc	00106$
                                   1403 ;	dotmatrix.c:220: dotmatrix_send(start_pos_d1 + i, PLAYER1_ROW, DISPLAY1, PLAYER1_UNIT);
      00040F 8B 02            [24] 1404 	mov	ar2,r3
      000411 8D 01            [24] 1405 	mov	ar1,r5
      000413 EA               [12] 1406 	mov	a,r2
      000414 29               [12] 1407 	add	a,r1
      000415 FA               [12] 1408 	mov	r2,a
      000416 90 00 08         [24] 1409 	mov	dptr,#_dotmatrix_send_PARM_2
      000419 74 80            [12] 1410 	mov	a,#0x80
      00041B F0               [24] 1411 	movx	@dptr,a
      00041C 90 00 09         [24] 1412 	mov	dptr,#_dotmatrix_send_PARM_3
      00041F E4               [12] 1413 	clr	a
      000420 F0               [24] 1414 	movx	@dptr,a
      000421 90 00 0A         [24] 1415 	mov	dptr,#_dotmatrix_send_PARM_4
      000424 04               [12] 1416 	inc	a
      000425 F0               [24] 1417 	movx	@dptr,a
      000426 8A 82            [24] 1418 	mov	dpl,r2
      000428 C0 07            [24] 1419 	push	ar7
      00042A C0 06            [24] 1420 	push	ar6
      00042C C0 05            [24] 1421 	push	ar5
      00042E C0 04            [24] 1422 	push	ar4
      000430 C0 03            [24] 1423 	push	ar3
      000432 12 00 CA         [24] 1424 	lcall	_dotmatrix_send
      000435 D0 03            [24] 1425 	pop	ar3
      000437 D0 04            [24] 1426 	pop	ar4
      000439 D0 05            [24] 1427 	pop	ar5
      00043B D0 06            [24] 1428 	pop	ar6
      00043D D0 07            [24] 1429 	pop	ar7
                                   1430 ;	dotmatrix.c:218: for (int i = 0; i < how_much_pixel_in_d1; i++)
      00043F 0B               [12] 1431 	inc	r3
      000440 BB 00 B9         [24] 1432 	cjne	r3,#0x00,00114$
      000443 0C               [12] 1433 	inc	r4
      000444 80 B6            [24] 1434 	sjmp	00114$
      000446                       1435 00106$:
                                   1436 ;	dotmatrix.c:223: for (int i = 0; i < how_much_pixel_in_d2; i++)
      000446 90 00 0F         [24] 1437 	mov	dptr,#_move_p1controller_down_start_pos_d2_65536_53
      000449 E0               [24] 1438 	movx	a,@dptr
      00044A FF               [12] 1439 	mov	r7,a
      00044B 7C 00            [12] 1440 	mov	r4,#0x00
      00044D 7D 00            [12] 1441 	mov	r5,#0x00
      00044F                       1442 00117$:
      00044F 8E 02            [24] 1443 	mov	ar2,r6
      000451 7B 00            [12] 1444 	mov	r3,#0x00
      000453 C3               [12] 1445 	clr	c
      000454 EC               [12] 1446 	mov	a,r4
      000455 9A               [12] 1447 	subb	a,r2
      000456 ED               [12] 1448 	mov	a,r5
      000457 64 80            [12] 1449 	xrl	a,#0x80
      000459 8B F0            [24] 1450 	mov	b,r3
      00045B 63 F0 80         [24] 1451 	xrl	b,#0x80
      00045E 95 F0            [12] 1452 	subb	a,b
      000460 40 01            [24] 1453 	jc	00184$
      000462 22               [24] 1454 	ret
      000463                       1455 00184$:
                                   1456 ;	dotmatrix.c:225: dotmatrix_send(start_pos_d2 + i, PLAYER1_ROW, DISPLAY2, PLAYER1_UNIT);
      000463 8C 03            [24] 1457 	mov	ar3,r4
      000465 8F 02            [24] 1458 	mov	ar2,r7
      000467 EB               [12] 1459 	mov	a,r3
      000468 2A               [12] 1460 	add	a,r2
      000469 FB               [12] 1461 	mov	r3,a
      00046A 90 00 08         [24] 1462 	mov	dptr,#_dotmatrix_send_PARM_2
      00046D 74 80            [12] 1463 	mov	a,#0x80
      00046F F0               [24] 1464 	movx	@dptr,a
      000470 90 00 09         [24] 1465 	mov	dptr,#_dotmatrix_send_PARM_3
      000473 23               [12] 1466 	rl	a
      000474 F0               [24] 1467 	movx	@dptr,a
      000475 90 00 0A         [24] 1468 	mov	dptr,#_dotmatrix_send_PARM_4
      000478 F0               [24] 1469 	movx	@dptr,a
      000479 8B 82            [24] 1470 	mov	dpl,r3
      00047B C0 07            [24] 1471 	push	ar7
      00047D C0 06            [24] 1472 	push	ar6
      00047F C0 05            [24] 1473 	push	ar5
      000481 C0 04            [24] 1474 	push	ar4
      000483 12 00 CA         [24] 1475 	lcall	_dotmatrix_send
      000486 D0 04            [24] 1476 	pop	ar4
      000488 D0 05            [24] 1477 	pop	ar5
      00048A D0 06            [24] 1478 	pop	ar6
      00048C D0 07            [24] 1479 	pop	ar7
                                   1480 ;	dotmatrix.c:223: for (int i = 0; i < how_much_pixel_in_d2; i++)
      00048E 0C               [12] 1481 	inc	r4
      00048F BC 00 BD         [24] 1482 	cjne	r4,#0x00,00117$
      000492 0D               [12] 1483 	inc	r5
      000493 80 BA            [24] 1484 	sjmp	00117$
      000495                       1485 00111$:
                                   1486 ;	dotmatrix.c:230: if (current_row_location_of_player1 == 5)
      000495 90 00 EB         [24] 1487 	mov	dptr,#_current_row_location_of_player1
      000498 E0               [24] 1488 	movx	a,@dptr
      000499 FF               [12] 1489 	mov	r7,a
      00049A BF 05 01         [24] 1490 	cjne	r7,#0x05,00109$
                                   1491 ;	dotmatrix.c:231: return;
      00049D 22               [24] 1492 	ret
      00049E                       1493 00109$:
                                   1494 ;	dotmatrix.c:232: dotmatrix_send(current_row_location_of_player1, ZERO, DISPLAY1, PLAYER1_UNIT);
      00049E 90 00 EB         [24] 1495 	mov	dptr,#_current_row_location_of_player1
      0004A1 E0               [24] 1496 	movx	a,@dptr
      0004A2 FF               [12] 1497 	mov	r7,a
      0004A3 90 00 08         [24] 1498 	mov	dptr,#_dotmatrix_send_PARM_2
      0004A6 E4               [12] 1499 	clr	a
      0004A7 F0               [24] 1500 	movx	@dptr,a
      0004A8 90 00 09         [24] 1501 	mov	dptr,#_dotmatrix_send_PARM_3
      0004AB F0               [24] 1502 	movx	@dptr,a
      0004AC 90 00 0A         [24] 1503 	mov	dptr,#_dotmatrix_send_PARM_4
      0004AF 04               [12] 1504 	inc	a
      0004B0 F0               [24] 1505 	movx	@dptr,a
      0004B1 8F 82            [24] 1506 	mov	dpl,r7
      0004B3 12 00 CA         [24] 1507 	lcall	_dotmatrix_send
                                   1508 ;	dotmatrix.c:233: (current_row_location_of_player1) = (current_row_location_of_player1) + 1;
      0004B6 90 00 EB         [24] 1509 	mov	dptr,#_current_row_location_of_player1
      0004B9 E0               [24] 1510 	movx	a,@dptr
      0004BA 04               [12] 1511 	inc	a
      0004BB F0               [24] 1512 	movx	@dptr,a
                                   1513 ;	dotmatrix.c:234: dotmatrix_send(current_row_location_of_player1 + 3, PLAYER1_ROW, DISPLAY1, PLAYER1_UNIT);
      0004BC E0               [24] 1514 	movx	a,@dptr
      0004BD FF               [12] 1515 	mov	r7,a
      0004BE 0F               [12] 1516 	inc	r7
      0004BF 0F               [12] 1517 	inc	r7
      0004C0 0F               [12] 1518 	inc	r7
      0004C1 90 00 08         [24] 1519 	mov	dptr,#_dotmatrix_send_PARM_2
      0004C4 74 80            [12] 1520 	mov	a,#0x80
      0004C6 F0               [24] 1521 	movx	@dptr,a
      0004C7 90 00 09         [24] 1522 	mov	dptr,#_dotmatrix_send_PARM_3
      0004CA E4               [12] 1523 	clr	a
      0004CB F0               [24] 1524 	movx	@dptr,a
      0004CC 90 00 0A         [24] 1525 	mov	dptr,#_dotmatrix_send_PARM_4
      0004CF 04               [12] 1526 	inc	a
      0004D0 F0               [24] 1527 	movx	@dptr,a
      0004D1 8F 82            [24] 1528 	mov	dpl,r7
                                   1529 ;	dotmatrix.c:236: }
      0004D3 02 00 CA         [24] 1530 	ljmp	_dotmatrix_send
                                   1531 ;------------------------------------------------------------
                                   1532 ;Allocation info for local variables in function 'move_p2controller_down'
                                   1533 ;------------------------------------------------------------
                                   1534 ;how_much_pixel_in_d2      Allocated with name '_move_p2controller_down_how_much_pixel_in_d2_65536_62'
                                   1535 ;how_much_pixel_in_d1      Allocated with name '_move_p2controller_down_how_much_pixel_in_d1_65536_62'
                                   1536 ;start_pos_d1              Allocated with name '_move_p2controller_down_start_pos_d1_65536_62'
                                   1537 ;start_pos_d2              Allocated with name '_move_p2controller_down_start_pos_d2_65536_62'
                                   1538 ;i                         Allocated with name '_move_p2controller_down_i_196608_66'
                                   1539 ;i                         Allocated with name '_move_p2controller_down_i_196608_68'
                                   1540 ;------------------------------------------------------------
                                   1541 ;	dotmatrix.c:238: void move_p2controller_down()
                                   1542 ;	-----------------------------------------
                                   1543 ;	 function move_p2controller_down
                                   1544 ;	-----------------------------------------
      0004D6                       1545 _move_p2controller_down:
                                   1546 ;	dotmatrix.c:242: if (current_row_location_of_player2 >= 5)
      0004D6 90 00 EC         [24] 1547 	mov	dptr,#_current_row_location_of_player2
      0004D9 E0               [24] 1548 	movx	a,@dptr
      0004DA FF               [12] 1549 	mov	r7,a
      0004DB BF 05 00         [24] 1550 	cjne	r7,#0x05,00173$
      0004DE                       1551 00173$:
      0004DE 50 03            [24] 1552 	jnc	00174$
      0004E0 02 06 47         [24] 1553 	ljmp	00111$
      0004E3                       1554 00174$:
                                   1555 ;	dotmatrix.c:244: if (current_row_location_of_player2 == 13)
      0004E3 90 00 EC         [24] 1556 	mov	dptr,#_current_row_location_of_player2
      0004E6 E0               [24] 1557 	movx	a,@dptr
      0004E7 FF               [12] 1558 	mov	r7,a
      0004E8 BF 0D 01         [24] 1559 	cjne	r7,#0x0d,00102$
                                   1560 ;	dotmatrix.c:245: return;
      0004EB 22               [24] 1561 	ret
      0004EC                       1562 00102$:
                                   1563 ;	dotmatrix.c:247: how_much_pixel_in_d2 = (current_row_location_of_player2 < 9) ? (current_row_location_of_player2 + (PLAYER_LENGTH)) - MAX_LENGTH : PLAYER_LENGTH;
      0004EC 90 00 EC         [24] 1564 	mov	dptr,#_current_row_location_of_player2
      0004EF E0               [24] 1565 	movx	a,@dptr
      0004F0 FF               [12] 1566 	mov	r7,a
      0004F1 BF 09 00         [24] 1567 	cjne	r7,#0x09,00177$
      0004F4                       1568 00177$:
      0004F4 50 0D            [24] 1569 	jnc	00121$
      0004F6 90 00 EC         [24] 1570 	mov	dptr,#_current_row_location_of_player2
      0004F9 E0               [24] 1571 	movx	a,@dptr
      0004FA 24 FC            [12] 1572 	add	a,#0xfc
      0004FC FE               [12] 1573 	mov	r6,a
      0004FD 33               [12] 1574 	rlc	a
      0004FE 95 E0            [12] 1575 	subb	a,acc
      000500 FF               [12] 1576 	mov	r7,a
      000501 80 04            [24] 1577 	sjmp	00122$
      000503                       1578 00121$:
      000503 7E 04            [12] 1579 	mov	r6,#0x04
      000505 7F 00            [12] 1580 	mov	r7,#0x00
      000507                       1581 00122$:
                                   1582 ;	dotmatrix.c:249: how_much_pixel_in_d1 = PLAYER_LENGTH - how_much_pixel_in_d2;
      000507 8E 07            [24] 1583 	mov	ar7,r6
      000509 74 04            [12] 1584 	mov	a,#0x04
      00050B C3               [12] 1585 	clr	c
      00050C 9F               [12] 1586 	subb	a,r7
      00050D FF               [12] 1587 	mov	r7,a
                                   1588 ;	dotmatrix.c:251: start_pos_d1 = (current_row_location_of_player2 <= EIGHT) ? current_row_location_of_player2 : EIGHT;
      00050E 90 00 EC         [24] 1589 	mov	dptr,#_current_row_location_of_player2
      000511 E0               [24] 1590 	movx	a,@dptr
      000512 24 F7            [12] 1591 	add	a,#0xff - 0x08
      000514 40 09            [24] 1592 	jc	00123$
      000516 90 00 EC         [24] 1593 	mov	dptr,#_current_row_location_of_player2
      000519 E0               [24] 1594 	movx	a,@dptr
      00051A FC               [12] 1595 	mov	r4,a
      00051B 7D 00            [12] 1596 	mov	r5,#0x00
      00051D 80 04            [24] 1597 	sjmp	00124$
      00051F                       1598 00123$:
      00051F 7C 08            [12] 1599 	mov	r4,#0x08
      000521 7D 00            [12] 1600 	mov	r5,#0x00
      000523                       1601 00124$:
      000523 90 00 10         [24] 1602 	mov	dptr,#_move_p2controller_down_start_pos_d1_65536_62
      000526 EC               [12] 1603 	mov	a,r4
      000527 F0               [24] 1604 	movx	@dptr,a
                                   1605 ;	dotmatrix.c:252: start_pos_d2 = (current_row_location_of_player2 > EIGHT) ? (current_row_location_of_player2 - MAX_LENGTH) : 1;
      000528 90 00 EC         [24] 1606 	mov	dptr,#_current_row_location_of_player2
      00052B E0               [24] 1607 	movx	a,@dptr
      00052C 24 F7            [12] 1608 	add	a,#0xff - 0x08
      00052E 50 0D            [24] 1609 	jnc	00125$
      000530 90 00 EC         [24] 1610 	mov	dptr,#_current_row_location_of_player2
      000533 E0               [24] 1611 	movx	a,@dptr
      000534 24 F8            [12] 1612 	add	a,#0xf8
      000536 FB               [12] 1613 	mov	r3,a
      000537 33               [12] 1614 	rlc	a
      000538 95 E0            [12] 1615 	subb	a,acc
      00053A FD               [12] 1616 	mov	r5,a
      00053B 80 04            [24] 1617 	sjmp	00126$
      00053D                       1618 00125$:
      00053D 7B 01            [12] 1619 	mov	r3,#0x01
      00053F 7D 00            [12] 1620 	mov	r5,#0x00
      000541                       1621 00126$:
      000541 90 00 11         [24] 1622 	mov	dptr,#_move_p2controller_down_start_pos_d2_65536_62
      000544 EB               [12] 1623 	mov	a,r3
      000545 F0               [24] 1624 	movx	@dptr,a
                                   1625 ;	dotmatrix.c:254: if (current_row_location_of_player2 <= EIGHT)
      000546 90 00 EC         [24] 1626 	mov	dptr,#_current_row_location_of_player2
      000549 E0               [24] 1627 	movx	a,@dptr
      00054A 24 F7            [12] 1628 	add	a,#0xff - 0x08
      00054C 40 28            [24] 1629 	jc	00104$
                                   1630 ;	dotmatrix.c:256: dotmatrix_send(start_pos_d1, ZERO, DISPLAY1, PLAYER2_UNIT);
      00054E 90 00 08         [24] 1631 	mov	dptr,#_dotmatrix_send_PARM_2
      000551 E4               [12] 1632 	clr	a
      000552 F0               [24] 1633 	movx	@dptr,a
      000553 90 00 09         [24] 1634 	mov	dptr,#_dotmatrix_send_PARM_3
      000556 F0               [24] 1635 	movx	@dptr,a
      000557 90 00 0A         [24] 1636 	mov	dptr,#_dotmatrix_send_PARM_4
      00055A 74 04            [12] 1637 	mov	a,#0x04
      00055C F0               [24] 1638 	movx	@dptr,a
      00055D 8C 82            [24] 1639 	mov	dpl,r4
      00055F C0 07            [24] 1640 	push	ar7
      000561 C0 06            [24] 1641 	push	ar6
      000563 C0 04            [24] 1642 	push	ar4
      000565 12 00 CA         [24] 1643 	lcall	_dotmatrix_send
      000568 D0 04            [24] 1644 	pop	ar4
      00056A D0 06            [24] 1645 	pop	ar6
      00056C D0 07            [24] 1646 	pop	ar7
                                   1647 ;	dotmatrix.c:257: start_pos_d1++;
      00056E 90 00 10         [24] 1648 	mov	dptr,#_move_p2controller_down_start_pos_d1_65536_62
      000571 EC               [12] 1649 	mov	a,r4
      000572 04               [12] 1650 	inc	a
      000573 F0               [24] 1651 	movx	@dptr,a
      000574 80 27            [24] 1652 	sjmp	00105$
      000576                       1653 00104$:
                                   1654 ;	dotmatrix.c:261: dotmatrix_send(start_pos_d2, ZERO, DISPLAY2, PLAYER2_UNIT);
      000576 90 00 08         [24] 1655 	mov	dptr,#_dotmatrix_send_PARM_2
      000579 E4               [12] 1656 	clr	a
      00057A F0               [24] 1657 	movx	@dptr,a
      00057B 90 00 09         [24] 1658 	mov	dptr,#_dotmatrix_send_PARM_3
      00057E 04               [12] 1659 	inc	a
      00057F F0               [24] 1660 	movx	@dptr,a
      000580 90 00 0A         [24] 1661 	mov	dptr,#_dotmatrix_send_PARM_4
      000583 74 04            [12] 1662 	mov	a,#0x04
      000585 F0               [24] 1663 	movx	@dptr,a
      000586 8B 82            [24] 1664 	mov	dpl,r3
      000588 C0 07            [24] 1665 	push	ar7
      00058A C0 06            [24] 1666 	push	ar6
      00058C C0 03            [24] 1667 	push	ar3
      00058E 12 00 CA         [24] 1668 	lcall	_dotmatrix_send
      000591 D0 03            [24] 1669 	pop	ar3
      000593 D0 06            [24] 1670 	pop	ar6
      000595 D0 07            [24] 1671 	pop	ar7
                                   1672 ;	dotmatrix.c:262: start_pos_d2++;
      000597 90 00 11         [24] 1673 	mov	dptr,#_move_p2controller_down_start_pos_d2_65536_62
      00059A EB               [12] 1674 	mov	a,r3
      00059B 04               [12] 1675 	inc	a
      00059C F0               [24] 1676 	movx	@dptr,a
      00059D                       1677 00105$:
                                   1678 ;	dotmatrix.c:265: current_row_location_of_player2 = current_row_location_of_player2 + 1;
      00059D 90 00 EC         [24] 1679 	mov	dptr,#_current_row_location_of_player2
      0005A0 E0               [24] 1680 	movx	a,@dptr
      0005A1 04               [12] 1681 	inc	a
      0005A2 F0               [24] 1682 	movx	@dptr,a
                                   1683 ;	dotmatrix.c:267: for (int i = 0; i < how_much_pixel_in_d1; i++)
      0005A3 90 00 10         [24] 1684 	mov	dptr,#_move_p2controller_down_start_pos_d1_65536_62
      0005A6 E0               [24] 1685 	movx	a,@dptr
      0005A7 FD               [12] 1686 	mov	r5,a
      0005A8 7B 00            [12] 1687 	mov	r3,#0x00
      0005AA 7C 00            [12] 1688 	mov	r4,#0x00
      0005AC                       1689 00114$:
      0005AC 8F 01            [24] 1690 	mov	ar1,r7
      0005AE 7A 00            [12] 1691 	mov	r2,#0x00
      0005B0 C3               [12] 1692 	clr	c
      0005B1 EB               [12] 1693 	mov	a,r3
      0005B2 99               [12] 1694 	subb	a,r1
      0005B3 EC               [12] 1695 	mov	a,r4
      0005B4 64 80            [12] 1696 	xrl	a,#0x80
      0005B6 8A F0            [24] 1697 	mov	b,r2
      0005B8 63 F0 80         [24] 1698 	xrl	b,#0x80
      0005BB 95 F0            [12] 1699 	subb	a,b
      0005BD 50 38            [24] 1700 	jnc	00106$
                                   1701 ;	dotmatrix.c:269: dotmatrix_send(start_pos_d1 + i, PLAYER2_ROW, DISPLAY1, PLAYER2_UNIT);
      0005BF 8B 02            [24] 1702 	mov	ar2,r3
      0005C1 8D 01            [24] 1703 	mov	ar1,r5
      0005C3 EA               [12] 1704 	mov	a,r2
      0005C4 29               [12] 1705 	add	a,r1
      0005C5 FA               [12] 1706 	mov	r2,a
      0005C6 90 00 08         [24] 1707 	mov	dptr,#_dotmatrix_send_PARM_2
      0005C9 74 01            [12] 1708 	mov	a,#0x01
      0005CB F0               [24] 1709 	movx	@dptr,a
      0005CC 90 00 09         [24] 1710 	mov	dptr,#_dotmatrix_send_PARM_3
      0005CF E4               [12] 1711 	clr	a
      0005D0 F0               [24] 1712 	movx	@dptr,a
      0005D1 90 00 0A         [24] 1713 	mov	dptr,#_dotmatrix_send_PARM_4
      0005D4 74 04            [12] 1714 	mov	a,#0x04
      0005D6 F0               [24] 1715 	movx	@dptr,a
      0005D7 8A 82            [24] 1716 	mov	dpl,r2
      0005D9 C0 07            [24] 1717 	push	ar7
      0005DB C0 06            [24] 1718 	push	ar6
      0005DD C0 05            [24] 1719 	push	ar5
      0005DF C0 04            [24] 1720 	push	ar4
      0005E1 C0 03            [24] 1721 	push	ar3
      0005E3 12 00 CA         [24] 1722 	lcall	_dotmatrix_send
      0005E6 D0 03            [24] 1723 	pop	ar3
      0005E8 D0 04            [24] 1724 	pop	ar4
      0005EA D0 05            [24] 1725 	pop	ar5
      0005EC D0 06            [24] 1726 	pop	ar6
      0005EE D0 07            [24] 1727 	pop	ar7
                                   1728 ;	dotmatrix.c:267: for (int i = 0; i < how_much_pixel_in_d1; i++)
      0005F0 0B               [12] 1729 	inc	r3
      0005F1 BB 00 B8         [24] 1730 	cjne	r3,#0x00,00114$
      0005F4 0C               [12] 1731 	inc	r4
      0005F5 80 B5            [24] 1732 	sjmp	00114$
      0005F7                       1733 00106$:
                                   1734 ;	dotmatrix.c:272: for (int i = 0; i < how_much_pixel_in_d2; i++)
      0005F7 90 00 11         [24] 1735 	mov	dptr,#_move_p2controller_down_start_pos_d2_65536_62
      0005FA E0               [24] 1736 	movx	a,@dptr
      0005FB FF               [12] 1737 	mov	r7,a
      0005FC 7C 00            [12] 1738 	mov	r4,#0x00
      0005FE 7D 00            [12] 1739 	mov	r5,#0x00
      000600                       1740 00117$:
      000600 8E 02            [24] 1741 	mov	ar2,r6
      000602 7B 00            [12] 1742 	mov	r3,#0x00
      000604 C3               [12] 1743 	clr	c
      000605 EC               [12] 1744 	mov	a,r4
      000606 9A               [12] 1745 	subb	a,r2
      000607 ED               [12] 1746 	mov	a,r5
      000608 64 80            [12] 1747 	xrl	a,#0x80
      00060A 8B F0            [24] 1748 	mov	b,r3
      00060C 63 F0 80         [24] 1749 	xrl	b,#0x80
      00060F 95 F0            [12] 1750 	subb	a,b
      000611 40 01            [24] 1751 	jc	00184$
      000613 22               [24] 1752 	ret
      000614                       1753 00184$:
                                   1754 ;	dotmatrix.c:274: dotmatrix_send(start_pos_d2 + i, PLAYER2_ROW, DISPLAY2, PLAYER2_UNIT);
      000614 8C 03            [24] 1755 	mov	ar3,r4
      000616 8F 02            [24] 1756 	mov	ar2,r7
      000618 EB               [12] 1757 	mov	a,r3
      000619 2A               [12] 1758 	add	a,r2
      00061A FB               [12] 1759 	mov	r3,a
      00061B 90 00 08         [24] 1760 	mov	dptr,#_dotmatrix_send_PARM_2
      00061E 74 01            [12] 1761 	mov	a,#0x01
      000620 F0               [24] 1762 	movx	@dptr,a
      000621 90 00 09         [24] 1763 	mov	dptr,#_dotmatrix_send_PARM_3
      000624 F0               [24] 1764 	movx	@dptr,a
      000625 90 00 0A         [24] 1765 	mov	dptr,#_dotmatrix_send_PARM_4
      000628 74 04            [12] 1766 	mov	a,#0x04
      00062A F0               [24] 1767 	movx	@dptr,a
      00062B 8B 82            [24] 1768 	mov	dpl,r3
      00062D C0 07            [24] 1769 	push	ar7
      00062F C0 06            [24] 1770 	push	ar6
      000631 C0 05            [24] 1771 	push	ar5
      000633 C0 04            [24] 1772 	push	ar4
      000635 12 00 CA         [24] 1773 	lcall	_dotmatrix_send
      000638 D0 04            [24] 1774 	pop	ar4
      00063A D0 05            [24] 1775 	pop	ar5
      00063C D0 06            [24] 1776 	pop	ar6
      00063E D0 07            [24] 1777 	pop	ar7
                                   1778 ;	dotmatrix.c:272: for (int i = 0; i < how_much_pixel_in_d2; i++)
      000640 0C               [12] 1779 	inc	r4
      000641 BC 00 BC         [24] 1780 	cjne	r4,#0x00,00117$
      000644 0D               [12] 1781 	inc	r5
      000645 80 B9            [24] 1782 	sjmp	00117$
      000647                       1783 00111$:
                                   1784 ;	dotmatrix.c:279: if (current_row_location_of_player2 == 5)
      000647 90 00 EC         [24] 1785 	mov	dptr,#_current_row_location_of_player2
      00064A E0               [24] 1786 	movx	a,@dptr
      00064B FF               [12] 1787 	mov	r7,a
      00064C BF 05 01         [24] 1788 	cjne	r7,#0x05,00109$
                                   1789 ;	dotmatrix.c:280: return;
      00064F 22               [24] 1790 	ret
      000650                       1791 00109$:
                                   1792 ;	dotmatrix.c:281: dotmatrix_send(current_row_location_of_player2, ZERO, DISPLAY1, PLAYER2_UNIT);
      000650 90 00 EC         [24] 1793 	mov	dptr,#_current_row_location_of_player2
      000653 E0               [24] 1794 	movx	a,@dptr
      000654 FF               [12] 1795 	mov	r7,a
      000655 90 00 08         [24] 1796 	mov	dptr,#_dotmatrix_send_PARM_2
      000658 E4               [12] 1797 	clr	a
      000659 F0               [24] 1798 	movx	@dptr,a
      00065A 90 00 09         [24] 1799 	mov	dptr,#_dotmatrix_send_PARM_3
      00065D F0               [24] 1800 	movx	@dptr,a
      00065E 90 00 0A         [24] 1801 	mov	dptr,#_dotmatrix_send_PARM_4
      000661 74 04            [12] 1802 	mov	a,#0x04
      000663 F0               [24] 1803 	movx	@dptr,a
      000664 8F 82            [24] 1804 	mov	dpl,r7
      000666 12 00 CA         [24] 1805 	lcall	_dotmatrix_send
                                   1806 ;	dotmatrix.c:282: (current_row_location_of_player2) = (current_row_location_of_player2) + 1;
      000669 90 00 EC         [24] 1807 	mov	dptr,#_current_row_location_of_player2
      00066C E0               [24] 1808 	movx	a,@dptr
      00066D 04               [12] 1809 	inc	a
      00066E F0               [24] 1810 	movx	@dptr,a
                                   1811 ;	dotmatrix.c:283: dotmatrix_send(current_row_location_of_player2 + 3, PLAYER2_ROW, DISPLAY1, PLAYER2_UNIT);
      00066F E0               [24] 1812 	movx	a,@dptr
      000670 FF               [12] 1813 	mov	r7,a
      000671 0F               [12] 1814 	inc	r7
      000672 0F               [12] 1815 	inc	r7
      000673 0F               [12] 1816 	inc	r7
      000674 90 00 08         [24] 1817 	mov	dptr,#_dotmatrix_send_PARM_2
      000677 74 01            [12] 1818 	mov	a,#0x01
      000679 F0               [24] 1819 	movx	@dptr,a
      00067A 90 00 09         [24] 1820 	mov	dptr,#_dotmatrix_send_PARM_3
      00067D E4               [12] 1821 	clr	a
      00067E F0               [24] 1822 	movx	@dptr,a
      00067F 90 00 0A         [24] 1823 	mov	dptr,#_dotmatrix_send_PARM_4
      000682 74 04            [12] 1824 	mov	a,#0x04
      000684 F0               [24] 1825 	movx	@dptr,a
      000685 8F 82            [24] 1826 	mov	dpl,r7
                                   1827 ;	dotmatrix.c:285: }
      000687 02 00 CA         [24] 1828 	ljmp	_dotmatrix_send
                                   1829 ;------------------------------------------------------------
                                   1830 ;Allocation info for local variables in function 'move_p2controller_up'
                                   1831 ;------------------------------------------------------------
                                   1832 ;how_much_pixel_in_d2      Allocated with name '_move_p2controller_up_how_much_pixel_in_d2_65536_71'
                                   1833 ;how_much_pixel_in_d1      Allocated with name '_move_p2controller_up_how_much_pixel_in_d1_65536_71'
                                   1834 ;start_pos_d1              Allocated with name '_move_p2controller_up_start_pos_d1_65536_71'
                                   1835 ;temp_location_d2          Allocated with name '_move_p2controller_up_temp_location_d2_65536_71'
                                   1836 ;i                         Allocated with name '_move_p2controller_up_i_196608_74'
                                   1837 ;i                         Allocated with name '_move_p2controller_up_i_196608_76'
                                   1838 ;------------------------------------------------------------
                                   1839 ;	dotmatrix.c:287: void move_p2controller_up()
                                   1840 ;	-----------------------------------------
                                   1841 ;	 function move_p2controller_up
                                   1842 ;	-----------------------------------------
      00068A                       1843 _move_p2controller_up:
                                   1844 ;	dotmatrix.c:291: if (current_row_location_of_player2 == 1)
      00068A 90 00 EC         [24] 1845 	mov	dptr,#_current_row_location_of_player2
      00068D E0               [24] 1846 	movx	a,@dptr
      00068E FF               [12] 1847 	mov	r7,a
      00068F BF 01 01         [24] 1848 	cjne	r7,#0x01,00102$
                                   1849 ;	dotmatrix.c:292: return;
      000692 22               [24] 1850 	ret
      000693                       1851 00102$:
                                   1852 ;	dotmatrix.c:294: if (current_row_location_of_player2 >= 10)
      000693 90 00 EC         [24] 1853 	mov	dptr,#_current_row_location_of_player2
      000696 E0               [24] 1854 	movx	a,@dptr
      000697 FF               [12] 1855 	mov	r7,a
      000698 BF 0A 00         [24] 1856 	cjne	r7,#0x0a,00162$
      00069B                       1857 00162$:
      00069B 40 42            [24] 1858 	jc	00112$
                                   1859 ;	dotmatrix.c:296: temp_location_d2 = current_row_location_of_player2 % MAX_LENGTH;
      00069D 90 00 EC         [24] 1860 	mov	dptr,#_current_row_location_of_player2
      0006A0 E0               [24] 1861 	movx	a,@dptr
      0006A1 FF               [12] 1862 	mov	r7,a
      0006A2 53 07 07         [24] 1863 	anl	ar7,#0x07
                                   1864 ;	dotmatrix.c:297: dotmatrix_send(temp_location_d2 + 3, ZERO, DISPLAY2, PLAYER2_UNIT);
      0006A5 8F 06            [24] 1865 	mov	ar6,r7
      0006A7 0E               [12] 1866 	inc	r6
      0006A8 0E               [12] 1867 	inc	r6
      0006A9 0E               [12] 1868 	inc	r6
      0006AA 90 00 08         [24] 1869 	mov	dptr,#_dotmatrix_send_PARM_2
      0006AD E4               [12] 1870 	clr	a
      0006AE F0               [24] 1871 	movx	@dptr,a
      0006AF 90 00 09         [24] 1872 	mov	dptr,#_dotmatrix_send_PARM_3
      0006B2 04               [12] 1873 	inc	a
      0006B3 F0               [24] 1874 	movx	@dptr,a
      0006B4 90 00 0A         [24] 1875 	mov	dptr,#_dotmatrix_send_PARM_4
      0006B7 74 04            [12] 1876 	mov	a,#0x04
      0006B9 F0               [24] 1877 	movx	@dptr,a
      0006BA 8E 82            [24] 1878 	mov	dpl,r6
      0006BC C0 07            [24] 1879 	push	ar7
      0006BE 12 00 CA         [24] 1880 	lcall	_dotmatrix_send
      0006C1 D0 07            [24] 1881 	pop	ar7
                                   1882 ;	dotmatrix.c:299: temp_location_d2--;
      0006C3 1F               [12] 1883 	dec	r7
                                   1884 ;	dotmatrix.c:300: (current_row_location_of_player2) = (current_row_location_of_player2)-1;
      0006C4 90 00 EC         [24] 1885 	mov	dptr,#_current_row_location_of_player2
      0006C7 E0               [24] 1886 	movx	a,@dptr
      0006C8 14               [12] 1887 	dec	a
      0006C9 F0               [24] 1888 	movx	@dptr,a
                                   1889 ;	dotmatrix.c:302: dotmatrix_send(temp_location_d2, PLAYER2_ROW, DISPLAY2, PLAYER2_UNIT);
      0006CA 90 00 08         [24] 1890 	mov	dptr,#_dotmatrix_send_PARM_2
      0006CD 74 01            [12] 1891 	mov	a,#0x01
      0006CF F0               [24] 1892 	movx	@dptr,a
      0006D0 90 00 09         [24] 1893 	mov	dptr,#_dotmatrix_send_PARM_3
      0006D3 F0               [24] 1894 	movx	@dptr,a
      0006D4 90 00 0A         [24] 1895 	mov	dptr,#_dotmatrix_send_PARM_4
      0006D7 74 04            [12] 1896 	mov	a,#0x04
      0006D9 F0               [24] 1897 	movx	@dptr,a
      0006DA 8F 82            [24] 1898 	mov	dpl,r7
                                   1899 ;	dotmatrix.c:303: return;
      0006DC 02 00 CA         [24] 1900 	ljmp	_dotmatrix_send
      0006DF                       1901 00112$:
                                   1902 ;	dotmatrix.c:305: else if (current_row_location_of_player2 <= 9 && current_row_location_of_player2 >= 6)
      0006DF 90 00 EC         [24] 1903 	mov	dptr,#_current_row_location_of_player2
      0006E2 E0               [24] 1904 	movx	a,@dptr
      0006E3 FF               [12] 1905 	mov  r7,a
      0006E4 24 F6            [12] 1906 	add	a,#0xff - 0x09
      0006E6 50 03            [24] 1907 	jnc	00164$
      0006E8 02 07 DD         [24] 1908 	ljmp	00108$
      0006EB                       1909 00164$:
      0006EB 90 00 EC         [24] 1910 	mov	dptr,#_current_row_location_of_player2
      0006EE E0               [24] 1911 	movx	a,@dptr
      0006EF FF               [12] 1912 	mov	r7,a
      0006F0 BF 06 00         [24] 1913 	cjne	r7,#0x06,00165$
      0006F3                       1914 00165$:
      0006F3 50 03            [24] 1915 	jnc	00166$
      0006F5 02 07 DD         [24] 1916 	ljmp	00108$
      0006F8                       1917 00166$:
                                   1918 ;	dotmatrix.c:307: how_much_pixel_in_d2 = (current_row_location_of_player2 + (PLAYER_LENGTH - 2)) - MAX_LENGTH;
      0006F8 90 00 EC         [24] 1919 	mov	dptr,#_current_row_location_of_player2
      0006FB E0               [24] 1920 	movx	a,@dptr
                                   1921 ;	dotmatrix.c:308: how_much_pixel_in_d1 = PLAYER_LENGTH - how_much_pixel_in_d2;
      0006FC 24 FA            [12] 1922 	add	a,#0xfa
      0006FE FF               [12] 1923 	mov	r7,a
      0006FF FE               [12] 1924 	mov	r6,a
      000700 74 04            [12] 1925 	mov	a,#0x04
      000702 C3               [12] 1926 	clr	c
      000703 9E               [12] 1927 	subb	a,r6
      000704 FE               [12] 1928 	mov	r6,a
                                   1929 ;	dotmatrix.c:310: start_pos_d1 = current_row_location_of_player2 - 1;
      000705 E0               [24] 1930 	movx	a,@dptr
      000706 FD               [12] 1931 	mov	r5,a
      000707 1D               [12] 1932 	dec	r5
                                   1933 ;	dotmatrix.c:312: dotmatrix_send(((current_row_location_of_player2 + 3) % EIGHT), ZERO, DISPLAY2, PLAYER2_UNIT);
      000708 E0               [24] 1934 	movx	a,@dptr
      000709 FC               [12] 1935 	mov	r4,a
      00070A 7B 00            [12] 1936 	mov	r3,#0x00
      00070C 74 03            [12] 1937 	mov	a,#0x03
      00070E 2C               [12] 1938 	add	a,r4
      00070F FC               [12] 1939 	mov	r4,a
      000710 E4               [12] 1940 	clr	a
      000711 3B               [12] 1941 	addc	a,r3
      000712 FB               [12] 1942 	mov	r3,a
      000713 90 00 28         [24] 1943 	mov	dptr,#__modsint_PARM_2
      000716 74 08            [12] 1944 	mov	a,#0x08
      000718 F0               [24] 1945 	movx	@dptr,a
      000719 E4               [12] 1946 	clr	a
      00071A A3               [24] 1947 	inc	dptr
      00071B F0               [24] 1948 	movx	@dptr,a
      00071C 8C 82            [24] 1949 	mov	dpl,r4
      00071E 8B 83            [24] 1950 	mov	dph,r3
      000720 C0 07            [24] 1951 	push	ar7
      000722 C0 06            [24] 1952 	push	ar6
      000724 C0 05            [24] 1953 	push	ar5
      000726 12 19 C3         [24] 1954 	lcall	__modsint
      000729 AB 82            [24] 1955 	mov	r3,dpl
      00072B 90 00 08         [24] 1956 	mov	dptr,#_dotmatrix_send_PARM_2
      00072E E4               [12] 1957 	clr	a
      00072F F0               [24] 1958 	movx	@dptr,a
      000730 90 00 09         [24] 1959 	mov	dptr,#_dotmatrix_send_PARM_3
      000733 04               [12] 1960 	inc	a
      000734 F0               [24] 1961 	movx	@dptr,a
      000735 90 00 0A         [24] 1962 	mov	dptr,#_dotmatrix_send_PARM_4
      000738 74 04            [12] 1963 	mov	a,#0x04
      00073A F0               [24] 1964 	movx	@dptr,a
      00073B 8B 82            [24] 1965 	mov	dpl,r3
      00073D 12 00 CA         [24] 1966 	lcall	_dotmatrix_send
      000740 D0 05            [24] 1967 	pop	ar5
      000742 D0 06            [24] 1968 	pop	ar6
      000744 D0 07            [24] 1969 	pop	ar7
                                   1970 ;	dotmatrix.c:313: current_row_location_of_player2--;
      000746 90 00 EC         [24] 1971 	mov	dptr,#_current_row_location_of_player2
      000749 E0               [24] 1972 	movx	a,@dptr
      00074A 14               [12] 1973 	dec	a
      00074B F0               [24] 1974 	movx	@dptr,a
                                   1975 ;	dotmatrix.c:315: for (int i = 0; i < how_much_pixel_in_d1; i++)
      00074C 7B 00            [12] 1976 	mov	r3,#0x00
      00074E 7C 00            [12] 1977 	mov	r4,#0x00
      000750                       1978 00115$:
      000750 8E 01            [24] 1979 	mov	ar1,r6
      000752 7A 00            [12] 1980 	mov	r2,#0x00
      000754 C3               [12] 1981 	clr	c
      000755 EB               [12] 1982 	mov	a,r3
      000756 99               [12] 1983 	subb	a,r1
      000757 EC               [12] 1984 	mov	a,r4
      000758 64 80            [12] 1985 	xrl	a,#0x80
      00075A 8A F0            [24] 1986 	mov	b,r2
      00075C 63 F0 80         [24] 1987 	xrl	b,#0x80
      00075F 95 F0            [12] 1988 	subb	a,b
      000761 50 38            [24] 1989 	jnc	00103$
                                   1990 ;	dotmatrix.c:317: dotmatrix_send(start_pos_d1 + i, PLAYER2_ROW, DISPLAY1, PLAYER2_UNIT);
      000763 8B 02            [24] 1991 	mov	ar2,r3
      000765 8D 01            [24] 1992 	mov	ar1,r5
      000767 EA               [12] 1993 	mov	a,r2
      000768 29               [12] 1994 	add	a,r1
      000769 FA               [12] 1995 	mov	r2,a
      00076A 90 00 08         [24] 1996 	mov	dptr,#_dotmatrix_send_PARM_2
      00076D 74 01            [12] 1997 	mov	a,#0x01
      00076F F0               [24] 1998 	movx	@dptr,a
      000770 90 00 09         [24] 1999 	mov	dptr,#_dotmatrix_send_PARM_3
      000773 E4               [12] 2000 	clr	a
      000774 F0               [24] 2001 	movx	@dptr,a
      000775 90 00 0A         [24] 2002 	mov	dptr,#_dotmatrix_send_PARM_4
      000778 74 04            [12] 2003 	mov	a,#0x04
      00077A F0               [24] 2004 	movx	@dptr,a
      00077B 8A 82            [24] 2005 	mov	dpl,r2
      00077D C0 07            [24] 2006 	push	ar7
      00077F C0 06            [24] 2007 	push	ar6
      000781 C0 05            [24] 2008 	push	ar5
      000783 C0 04            [24] 2009 	push	ar4
      000785 C0 03            [24] 2010 	push	ar3
      000787 12 00 CA         [24] 2011 	lcall	_dotmatrix_send
      00078A D0 03            [24] 2012 	pop	ar3
      00078C D0 04            [24] 2013 	pop	ar4
      00078E D0 05            [24] 2014 	pop	ar5
      000790 D0 06            [24] 2015 	pop	ar6
      000792 D0 07            [24] 2016 	pop	ar7
                                   2017 ;	dotmatrix.c:315: for (int i = 0; i < how_much_pixel_in_d1; i++)
      000794 0B               [12] 2018 	inc	r3
      000795 BB 00 B8         [24] 2019 	cjne	r3,#0x00,00115$
      000798 0C               [12] 2020 	inc	r4
      000799 80 B5            [24] 2021 	sjmp	00115$
      00079B                       2022 00103$:
                                   2023 ;	dotmatrix.c:320: for (int i = 0; i < (how_much_pixel_in_d2); i++)
      00079B 7D 00            [12] 2024 	mov	r5,#0x00
      00079D 7E 00            [12] 2025 	mov	r6,#0x00
      00079F                       2026 00118$:
      00079F 8F 03            [24] 2027 	mov	ar3,r7
      0007A1 7C 00            [12] 2028 	mov	r4,#0x00
      0007A3 C3               [12] 2029 	clr	c
      0007A4 ED               [12] 2030 	mov	a,r5
      0007A5 9B               [12] 2031 	subb	a,r3
      0007A6 EE               [12] 2032 	mov	a,r6
      0007A7 64 80            [12] 2033 	xrl	a,#0x80
      0007A9 8C F0            [24] 2034 	mov	b,r4
      0007AB 63 F0 80         [24] 2035 	xrl	b,#0x80
      0007AE 95 F0            [12] 2036 	subb	a,b
      0007B0 50 6E            [24] 2037 	jnc	00120$
                                   2038 ;	dotmatrix.c:322: dotmatrix_send(1 + i, PLAYER2_ROW, DISPLAY2, PLAYER2_UNIT);
      0007B2 8D 04            [24] 2039 	mov	ar4,r5
      0007B4 0C               [12] 2040 	inc	r4
      0007B5 90 00 08         [24] 2041 	mov	dptr,#_dotmatrix_send_PARM_2
      0007B8 74 01            [12] 2042 	mov	a,#0x01
      0007BA F0               [24] 2043 	movx	@dptr,a
      0007BB 90 00 09         [24] 2044 	mov	dptr,#_dotmatrix_send_PARM_3
      0007BE F0               [24] 2045 	movx	@dptr,a
      0007BF 90 00 0A         [24] 2046 	mov	dptr,#_dotmatrix_send_PARM_4
      0007C2 74 04            [12] 2047 	mov	a,#0x04
      0007C4 F0               [24] 2048 	movx	@dptr,a
      0007C5 8C 82            [24] 2049 	mov	dpl,r4
      0007C7 C0 07            [24] 2050 	push	ar7
      0007C9 C0 06            [24] 2051 	push	ar6
      0007CB C0 05            [24] 2052 	push	ar5
      0007CD 12 00 CA         [24] 2053 	lcall	_dotmatrix_send
      0007D0 D0 05            [24] 2054 	pop	ar5
      0007D2 D0 06            [24] 2055 	pop	ar6
      0007D4 D0 07            [24] 2056 	pop	ar7
                                   2057 ;	dotmatrix.c:320: for (int i = 0; i < (how_much_pixel_in_d2); i++)
      0007D6 0D               [12] 2058 	inc	r5
      0007D7 BD 00 C5         [24] 2059 	cjne	r5,#0x00,00118$
      0007DA 0E               [12] 2060 	inc	r6
      0007DB 80 C2            [24] 2061 	sjmp	00118$
      0007DD                       2062 00108$:
                                   2063 ;	dotmatrix.c:325: else if (current_row_location_of_player2 <= 5)
      0007DD 90 00 EC         [24] 2064 	mov	dptr,#_current_row_location_of_player2
      0007E0 E0               [24] 2065 	movx	a,@dptr
      0007E1 FF               [12] 2066 	mov  r7,a
      0007E2 24 FA            [12] 2067 	add	a,#0xff - 0x05
      0007E4 40 3A            [24] 2068 	jc	00120$
                                   2069 ;	dotmatrix.c:327: dotmatrix_send(current_row_location_of_player2 + 3, ZERO, DISPLAY1, PLAYER2_UNIT);
      0007E6 90 00 EC         [24] 2070 	mov	dptr,#_current_row_location_of_player2
      0007E9 E0               [24] 2071 	movx	a,@dptr
      0007EA FF               [12] 2072 	mov	r7,a
      0007EB 0F               [12] 2073 	inc	r7
      0007EC 0F               [12] 2074 	inc	r7
      0007ED 0F               [12] 2075 	inc	r7
      0007EE 90 00 08         [24] 2076 	mov	dptr,#_dotmatrix_send_PARM_2
      0007F1 E4               [12] 2077 	clr	a
      0007F2 F0               [24] 2078 	movx	@dptr,a
      0007F3 90 00 09         [24] 2079 	mov	dptr,#_dotmatrix_send_PARM_3
      0007F6 F0               [24] 2080 	movx	@dptr,a
      0007F7 90 00 0A         [24] 2081 	mov	dptr,#_dotmatrix_send_PARM_4
      0007FA 74 04            [12] 2082 	mov	a,#0x04
      0007FC F0               [24] 2083 	movx	@dptr,a
      0007FD 8F 82            [24] 2084 	mov	dpl,r7
      0007FF 12 00 CA         [24] 2085 	lcall	_dotmatrix_send
                                   2086 ;	dotmatrix.c:328: (current_row_location_of_player2) = (current_row_location_of_player2)-1;
      000802 90 00 EC         [24] 2087 	mov	dptr,#_current_row_location_of_player2
      000805 E0               [24] 2088 	movx	a,@dptr
      000806 14               [12] 2089 	dec	a
      000807 F0               [24] 2090 	movx	@dptr,a
                                   2091 ;	dotmatrix.c:329: dotmatrix_send(current_row_location_of_player2, PLAYER2_ROW, DISPLAY1, PLAYER2_UNIT);
      000808 E0               [24] 2092 	movx	a,@dptr
      000809 FF               [12] 2093 	mov	r7,a
      00080A 90 00 08         [24] 2094 	mov	dptr,#_dotmatrix_send_PARM_2
      00080D 74 01            [12] 2095 	mov	a,#0x01
      00080F F0               [24] 2096 	movx	@dptr,a
      000810 90 00 09         [24] 2097 	mov	dptr,#_dotmatrix_send_PARM_3
      000813 E4               [12] 2098 	clr	a
      000814 F0               [24] 2099 	movx	@dptr,a
      000815 90 00 0A         [24] 2100 	mov	dptr,#_dotmatrix_send_PARM_4
      000818 74 04            [12] 2101 	mov	a,#0x04
      00081A F0               [24] 2102 	movx	@dptr,a
      00081B 8F 82            [24] 2103 	mov	dpl,r7
                                   2104 ;	dotmatrix.c:331: }
      00081D 02 00 CA         [24] 2105 	ljmp	_dotmatrix_send
      000820                       2106 00120$:
      000820 22               [24] 2107 	ret
                                   2108 ;------------------------------------------------------------
                                   2109 ;Allocation info for local variables in function 'initialize_controller'
                                   2110 ;------------------------------------------------------------
                                   2111 ;unit                      Allocated with name '_initialize_controller_unit_131072_80'
                                   2112 ;row                       Allocated with name '_initialize_controller_row_262144_82'
                                   2113 ;unit                      Allocated with name '_initialize_controller_unit_131072_84'
                                   2114 ;row                       Allocated with name '_initialize_controller_row_262144_86'
                                   2115 ;------------------------------------------------------------
                                   2116 ;	dotmatrix.c:333: void initialize_controller()
                                   2117 ;	-----------------------------------------
                                   2118 ;	 function initialize_controller
                                   2119 ;	-----------------------------------------
      000821                       2120 _initialize_controller:
                                   2121 ;	dotmatrix.c:337: current_row_location_of_player1 = 7;
      000821 90 00 EB         [24] 2122 	mov	dptr,#_current_row_location_of_player1
      000824 74 07            [12] 2123 	mov	a,#0x07
      000826 F0               [24] 2124 	movx	@dptr,a
                                   2125 ;	dotmatrix.c:338: current_row_location_of_player2 = 7;
      000827 90 00 EC         [24] 2126 	mov	dptr,#_current_row_location_of_player2
      00082A F0               [24] 2127 	movx	@dptr,a
                                   2128 ;	dotmatrix.c:340: b_y = SIXTEEN;
      00082B 90 00 ED         [24] 2129 	mov	dptr,#_b_y
      00082E 74 10            [12] 2130 	mov	a,#0x10
      000830 F0               [24] 2131 	movx	@dptr,a
                                   2132 ;	dotmatrix.c:341: b_x = EIGHT;
      000831 90 00 EE         [24] 2133 	mov	dptr,#_b_x
      000834 03               [12] 2134 	rr	a
      000835 F0               [24] 2135 	movx	@dptr,a
                                   2136 ;	dotmatrix.c:343: direction_x = 1;
      000836 90 00 EF         [24] 2137 	mov	dptr,#_direction_x
      000839 74 01            [12] 2138 	mov	a,#0x01
      00083B F0               [24] 2139 	movx	@dptr,a
                                   2140 ;	dotmatrix.c:344: direction_y = 1;
      00083C 90 00 F0         [24] 2141 	mov	dptr,#_direction_y
      00083F F0               [24] 2142 	movx	@dptr,a
                                   2143 ;	dotmatrix.c:346: dotmatrix_send(DISPLAY_TEST_REG, DISPLAY_TEST_NORMAL_MODE_VAL, DISPLAY1, PLAYER1_UNIT);
      000840 90 00 08         [24] 2144 	mov	dptr,#_dotmatrix_send_PARM_2
      000843 E4               [12] 2145 	clr	a
      000844 F0               [24] 2146 	movx	@dptr,a
      000845 90 00 09         [24] 2147 	mov	dptr,#_dotmatrix_send_PARM_3
      000848 F0               [24] 2148 	movx	@dptr,a
      000849 90 00 0A         [24] 2149 	mov	dptr,#_dotmatrix_send_PARM_4
      00084C 04               [12] 2150 	inc	a
      00084D F0               [24] 2151 	movx	@dptr,a
      00084E 75 82 0F         [24] 2152 	mov	dpl,#0x0f
      000851 12 00 CA         [24] 2153 	lcall	_dotmatrix_send
                                   2154 ;	dotmatrix.c:347: dotmatrix_send(DISPLAY_TEST_REG, DISPLAY_TEST_NORMAL_MODE_VAL, DISPLAY1, 2);
      000854 90 00 08         [24] 2155 	mov	dptr,#_dotmatrix_send_PARM_2
      000857 E4               [12] 2156 	clr	a
      000858 F0               [24] 2157 	movx	@dptr,a
      000859 90 00 09         [24] 2158 	mov	dptr,#_dotmatrix_send_PARM_3
      00085C F0               [24] 2159 	movx	@dptr,a
      00085D 90 00 0A         [24] 2160 	mov	dptr,#_dotmatrix_send_PARM_4
      000860 74 02            [12] 2161 	mov	a,#0x02
      000862 F0               [24] 2162 	movx	@dptr,a
      000863 75 82 0F         [24] 2163 	mov	dpl,#0x0f
      000866 12 00 CA         [24] 2164 	lcall	_dotmatrix_send
                                   2165 ;	dotmatrix.c:348: dotmatrix_send(DISPLAY_TEST_REG, DISPLAY_TEST_NORMAL_MODE_VAL, DISPLAY1, 3);
      000869 90 00 08         [24] 2166 	mov	dptr,#_dotmatrix_send_PARM_2
      00086C E4               [12] 2167 	clr	a
      00086D F0               [24] 2168 	movx	@dptr,a
      00086E 90 00 09         [24] 2169 	mov	dptr,#_dotmatrix_send_PARM_3
      000871 F0               [24] 2170 	movx	@dptr,a
      000872 90 00 0A         [24] 2171 	mov	dptr,#_dotmatrix_send_PARM_4
      000875 74 03            [12] 2172 	mov	a,#0x03
      000877 F0               [24] 2173 	movx	@dptr,a
      000878 75 82 0F         [24] 2174 	mov	dpl,#0x0f
      00087B 12 00 CA         [24] 2175 	lcall	_dotmatrix_send
                                   2176 ;	dotmatrix.c:349: dotmatrix_send(DISPLAY_TEST_REG, DISPLAY_TEST_NORMAL_MODE_VAL, DISPLAY1, PLAYER2_UNIT);
      00087E 90 00 08         [24] 2177 	mov	dptr,#_dotmatrix_send_PARM_2
      000881 E4               [12] 2178 	clr	a
      000882 F0               [24] 2179 	movx	@dptr,a
      000883 90 00 09         [24] 2180 	mov	dptr,#_dotmatrix_send_PARM_3
      000886 F0               [24] 2181 	movx	@dptr,a
      000887 90 00 0A         [24] 2182 	mov	dptr,#_dotmatrix_send_PARM_4
      00088A 74 04            [12] 2183 	mov	a,#0x04
      00088C F0               [24] 2184 	movx	@dptr,a
      00088D 75 82 0F         [24] 2185 	mov	dpl,#0x0f
      000890 12 00 CA         [24] 2186 	lcall	_dotmatrix_send
                                   2187 ;	dotmatrix.c:351: dotmatrix_send(DISPLAY_TEST_REG, DISPLAY_TEST_NORMAL_MODE_VAL, DISPLAY2, PLAYER1_UNIT);
      000893 90 00 08         [24] 2188 	mov	dptr,#_dotmatrix_send_PARM_2
      000896 E4               [12] 2189 	clr	a
      000897 F0               [24] 2190 	movx	@dptr,a
      000898 90 00 09         [24] 2191 	mov	dptr,#_dotmatrix_send_PARM_3
      00089B 04               [12] 2192 	inc	a
      00089C F0               [24] 2193 	movx	@dptr,a
      00089D 90 00 0A         [24] 2194 	mov	dptr,#_dotmatrix_send_PARM_4
      0008A0 F0               [24] 2195 	movx	@dptr,a
      0008A1 75 82 0F         [24] 2196 	mov	dpl,#0x0f
      0008A4 12 00 CA         [24] 2197 	lcall	_dotmatrix_send
                                   2198 ;	dotmatrix.c:352: dotmatrix_send(DISPLAY_TEST_REG, DISPLAY_TEST_NORMAL_MODE_VAL, DISPLAY2, 2);
      0008A7 90 00 08         [24] 2199 	mov	dptr,#_dotmatrix_send_PARM_2
      0008AA E4               [12] 2200 	clr	a
      0008AB F0               [24] 2201 	movx	@dptr,a
      0008AC 90 00 09         [24] 2202 	mov	dptr,#_dotmatrix_send_PARM_3
      0008AF 04               [12] 2203 	inc	a
      0008B0 F0               [24] 2204 	movx	@dptr,a
      0008B1 90 00 0A         [24] 2205 	mov	dptr,#_dotmatrix_send_PARM_4
      0008B4 04               [12] 2206 	inc	a
      0008B5 F0               [24] 2207 	movx	@dptr,a
      0008B6 75 82 0F         [24] 2208 	mov	dpl,#0x0f
      0008B9 12 00 CA         [24] 2209 	lcall	_dotmatrix_send
                                   2210 ;	dotmatrix.c:353: dotmatrix_send(DISPLAY_TEST_REG, DISPLAY_TEST_NORMAL_MODE_VAL, DISPLAY2, 3);
      0008BC 90 00 08         [24] 2211 	mov	dptr,#_dotmatrix_send_PARM_2
      0008BF E4               [12] 2212 	clr	a
      0008C0 F0               [24] 2213 	movx	@dptr,a
      0008C1 90 00 09         [24] 2214 	mov	dptr,#_dotmatrix_send_PARM_3
      0008C4 04               [12] 2215 	inc	a
      0008C5 F0               [24] 2216 	movx	@dptr,a
      0008C6 90 00 0A         [24] 2217 	mov	dptr,#_dotmatrix_send_PARM_4
      0008C9 74 03            [12] 2218 	mov	a,#0x03
      0008CB F0               [24] 2219 	movx	@dptr,a
      0008CC 75 82 0F         [24] 2220 	mov	dpl,#0x0f
      0008CF 12 00 CA         [24] 2221 	lcall	_dotmatrix_send
                                   2222 ;	dotmatrix.c:354: dotmatrix_send(DISPLAY_TEST_REG, DISPLAY_TEST_NORMAL_MODE_VAL, DISPLAY2, PLAYER2_UNIT);
      0008D2 90 00 08         [24] 2223 	mov	dptr,#_dotmatrix_send_PARM_2
      0008D5 E4               [12] 2224 	clr	a
      0008D6 F0               [24] 2225 	movx	@dptr,a
      0008D7 90 00 09         [24] 2226 	mov	dptr,#_dotmatrix_send_PARM_3
      0008DA 04               [12] 2227 	inc	a
      0008DB F0               [24] 2228 	movx	@dptr,a
      0008DC 90 00 0A         [24] 2229 	mov	dptr,#_dotmatrix_send_PARM_4
      0008DF 74 04            [12] 2230 	mov	a,#0x04
      0008E1 F0               [24] 2231 	movx	@dptr,a
      0008E2 75 82 0F         [24] 2232 	mov	dpl,#0x0f
      0008E5 12 00 CA         [24] 2233 	lcall	_dotmatrix_send
                                   2234 ;	dotmatrix.c:356: dotmatrix_send(DECODE_MODE_REG, DECODE_MODE_REG_NO_DECODE_VAL, DISPLAY1, PLAYER1_UNIT);
      0008E8 90 00 08         [24] 2235 	mov	dptr,#_dotmatrix_send_PARM_2
      0008EB E4               [12] 2236 	clr	a
      0008EC F0               [24] 2237 	movx	@dptr,a
      0008ED 90 00 09         [24] 2238 	mov	dptr,#_dotmatrix_send_PARM_3
      0008F0 F0               [24] 2239 	movx	@dptr,a
      0008F1 90 00 0A         [24] 2240 	mov	dptr,#_dotmatrix_send_PARM_4
      0008F4 04               [12] 2241 	inc	a
      0008F5 F0               [24] 2242 	movx	@dptr,a
      0008F6 75 82 09         [24] 2243 	mov	dpl,#0x09
      0008F9 12 00 CA         [24] 2244 	lcall	_dotmatrix_send
                                   2245 ;	dotmatrix.c:357: dotmatrix_send(DECODE_MODE_REG, DECODE_MODE_REG_NO_DECODE_VAL, DISPLAY1, 2);
      0008FC 90 00 08         [24] 2246 	mov	dptr,#_dotmatrix_send_PARM_2
      0008FF E4               [12] 2247 	clr	a
      000900 F0               [24] 2248 	movx	@dptr,a
      000901 90 00 09         [24] 2249 	mov	dptr,#_dotmatrix_send_PARM_3
      000904 F0               [24] 2250 	movx	@dptr,a
      000905 90 00 0A         [24] 2251 	mov	dptr,#_dotmatrix_send_PARM_4
      000908 74 02            [12] 2252 	mov	a,#0x02
      00090A F0               [24] 2253 	movx	@dptr,a
      00090B 75 82 09         [24] 2254 	mov	dpl,#0x09
      00090E 12 00 CA         [24] 2255 	lcall	_dotmatrix_send
                                   2256 ;	dotmatrix.c:358: dotmatrix_send(DECODE_MODE_REG, DECODE_MODE_REG_NO_DECODE_VAL, DISPLAY1, 3);
      000911 90 00 08         [24] 2257 	mov	dptr,#_dotmatrix_send_PARM_2
      000914 E4               [12] 2258 	clr	a
      000915 F0               [24] 2259 	movx	@dptr,a
      000916 90 00 09         [24] 2260 	mov	dptr,#_dotmatrix_send_PARM_3
      000919 F0               [24] 2261 	movx	@dptr,a
      00091A 90 00 0A         [24] 2262 	mov	dptr,#_dotmatrix_send_PARM_4
      00091D 74 03            [12] 2263 	mov	a,#0x03
      00091F F0               [24] 2264 	movx	@dptr,a
      000920 75 82 09         [24] 2265 	mov	dpl,#0x09
      000923 12 00 CA         [24] 2266 	lcall	_dotmatrix_send
                                   2267 ;	dotmatrix.c:359: dotmatrix_send(DECODE_MODE_REG, DECODE_MODE_REG_NO_DECODE_VAL, DISPLAY1, PLAYER2_UNIT);
      000926 90 00 08         [24] 2268 	mov	dptr,#_dotmatrix_send_PARM_2
      000929 E4               [12] 2269 	clr	a
      00092A F0               [24] 2270 	movx	@dptr,a
      00092B 90 00 09         [24] 2271 	mov	dptr,#_dotmatrix_send_PARM_3
      00092E F0               [24] 2272 	movx	@dptr,a
      00092F 90 00 0A         [24] 2273 	mov	dptr,#_dotmatrix_send_PARM_4
      000932 74 04            [12] 2274 	mov	a,#0x04
      000934 F0               [24] 2275 	movx	@dptr,a
      000935 75 82 09         [24] 2276 	mov	dpl,#0x09
      000938 12 00 CA         [24] 2277 	lcall	_dotmatrix_send
                                   2278 ;	dotmatrix.c:361: dotmatrix_send(DECODE_MODE_REG, DECODE_MODE_REG_NO_DECODE_VAL, DISPLAY2, PLAYER1_UNIT);
      00093B 90 00 08         [24] 2279 	mov	dptr,#_dotmatrix_send_PARM_2
      00093E E4               [12] 2280 	clr	a
      00093F F0               [24] 2281 	movx	@dptr,a
      000940 90 00 09         [24] 2282 	mov	dptr,#_dotmatrix_send_PARM_3
      000943 04               [12] 2283 	inc	a
      000944 F0               [24] 2284 	movx	@dptr,a
      000945 90 00 0A         [24] 2285 	mov	dptr,#_dotmatrix_send_PARM_4
      000948 F0               [24] 2286 	movx	@dptr,a
      000949 75 82 09         [24] 2287 	mov	dpl,#0x09
      00094C 12 00 CA         [24] 2288 	lcall	_dotmatrix_send
                                   2289 ;	dotmatrix.c:362: dotmatrix_send(DECODE_MODE_REG, DECODE_MODE_REG_NO_DECODE_VAL, DISPLAY2, 2);
      00094F 90 00 08         [24] 2290 	mov	dptr,#_dotmatrix_send_PARM_2
      000952 E4               [12] 2291 	clr	a
      000953 F0               [24] 2292 	movx	@dptr,a
      000954 90 00 09         [24] 2293 	mov	dptr,#_dotmatrix_send_PARM_3
      000957 04               [12] 2294 	inc	a
      000958 F0               [24] 2295 	movx	@dptr,a
      000959 90 00 0A         [24] 2296 	mov	dptr,#_dotmatrix_send_PARM_4
      00095C 04               [12] 2297 	inc	a
      00095D F0               [24] 2298 	movx	@dptr,a
      00095E 75 82 09         [24] 2299 	mov	dpl,#0x09
      000961 12 00 CA         [24] 2300 	lcall	_dotmatrix_send
                                   2301 ;	dotmatrix.c:363: dotmatrix_send(DECODE_MODE_REG, DECODE_MODE_REG_NO_DECODE_VAL, DISPLAY2, 3);
      000964 90 00 08         [24] 2302 	mov	dptr,#_dotmatrix_send_PARM_2
      000967 E4               [12] 2303 	clr	a
      000968 F0               [24] 2304 	movx	@dptr,a
      000969 90 00 09         [24] 2305 	mov	dptr,#_dotmatrix_send_PARM_3
      00096C 04               [12] 2306 	inc	a
      00096D F0               [24] 2307 	movx	@dptr,a
      00096E 90 00 0A         [24] 2308 	mov	dptr,#_dotmatrix_send_PARM_4
      000971 74 03            [12] 2309 	mov	a,#0x03
      000973 F0               [24] 2310 	movx	@dptr,a
      000974 75 82 09         [24] 2311 	mov	dpl,#0x09
      000977 12 00 CA         [24] 2312 	lcall	_dotmatrix_send
                                   2313 ;	dotmatrix.c:364: dotmatrix_send(DECODE_MODE_REG, DECODE_MODE_REG_NO_DECODE_VAL, DISPLAY2, PLAYER2_UNIT);
      00097A 90 00 08         [24] 2314 	mov	dptr,#_dotmatrix_send_PARM_2
      00097D E4               [12] 2315 	clr	a
      00097E F0               [24] 2316 	movx	@dptr,a
      00097F 90 00 09         [24] 2317 	mov	dptr,#_dotmatrix_send_PARM_3
      000982 04               [12] 2318 	inc	a
      000983 F0               [24] 2319 	movx	@dptr,a
      000984 90 00 0A         [24] 2320 	mov	dptr,#_dotmatrix_send_PARM_4
      000987 74 04            [12] 2321 	mov	a,#0x04
      000989 F0               [24] 2322 	movx	@dptr,a
      00098A 75 82 09         [24] 2323 	mov	dpl,#0x09
      00098D 12 00 CA         [24] 2324 	lcall	_dotmatrix_send
                                   2325 ;	dotmatrix.c:366: dotmatrix_send(INTENSITY_REG, INTENSITY_REG_MED_INTENSITY_VAL, DISPLAY1, PLAYER1_UNIT);
      000990 90 00 08         [24] 2326 	mov	dptr,#_dotmatrix_send_PARM_2
      000993 74 07            [12] 2327 	mov	a,#0x07
      000995 F0               [24] 2328 	movx	@dptr,a
      000996 90 00 09         [24] 2329 	mov	dptr,#_dotmatrix_send_PARM_3
      000999 E4               [12] 2330 	clr	a
      00099A F0               [24] 2331 	movx	@dptr,a
      00099B 90 00 0A         [24] 2332 	mov	dptr,#_dotmatrix_send_PARM_4
      00099E 04               [12] 2333 	inc	a
      00099F F0               [24] 2334 	movx	@dptr,a
      0009A0 75 82 0A         [24] 2335 	mov	dpl,#0x0a
      0009A3 12 00 CA         [24] 2336 	lcall	_dotmatrix_send
                                   2337 ;	dotmatrix.c:367: dotmatrix_send(INTENSITY_REG, INTENSITY_REG_MED_INTENSITY_VAL, DISPLAY1, 2);
      0009A6 90 00 08         [24] 2338 	mov	dptr,#_dotmatrix_send_PARM_2
      0009A9 74 07            [12] 2339 	mov	a,#0x07
      0009AB F0               [24] 2340 	movx	@dptr,a
      0009AC 90 00 09         [24] 2341 	mov	dptr,#_dotmatrix_send_PARM_3
      0009AF E4               [12] 2342 	clr	a
      0009B0 F0               [24] 2343 	movx	@dptr,a
      0009B1 90 00 0A         [24] 2344 	mov	dptr,#_dotmatrix_send_PARM_4
      0009B4 74 02            [12] 2345 	mov	a,#0x02
      0009B6 F0               [24] 2346 	movx	@dptr,a
      0009B7 75 82 0A         [24] 2347 	mov	dpl,#0x0a
      0009BA 12 00 CA         [24] 2348 	lcall	_dotmatrix_send
                                   2349 ;	dotmatrix.c:368: dotmatrix_send(INTENSITY_REG, INTENSITY_REG_MED_INTENSITY_VAL, DISPLAY1, 3);
      0009BD 90 00 08         [24] 2350 	mov	dptr,#_dotmatrix_send_PARM_2
      0009C0 74 07            [12] 2351 	mov	a,#0x07
      0009C2 F0               [24] 2352 	movx	@dptr,a
      0009C3 90 00 09         [24] 2353 	mov	dptr,#_dotmatrix_send_PARM_3
      0009C6 E4               [12] 2354 	clr	a
      0009C7 F0               [24] 2355 	movx	@dptr,a
      0009C8 90 00 0A         [24] 2356 	mov	dptr,#_dotmatrix_send_PARM_4
      0009CB 74 03            [12] 2357 	mov	a,#0x03
      0009CD F0               [24] 2358 	movx	@dptr,a
      0009CE 75 82 0A         [24] 2359 	mov	dpl,#0x0a
      0009D1 12 00 CA         [24] 2360 	lcall	_dotmatrix_send
                                   2361 ;	dotmatrix.c:369: dotmatrix_send(INTENSITY_REG, INTENSITY_REG_MED_INTENSITY_VAL, DISPLAY1, PLAYER2_UNIT);
      0009D4 90 00 08         [24] 2362 	mov	dptr,#_dotmatrix_send_PARM_2
      0009D7 74 07            [12] 2363 	mov	a,#0x07
      0009D9 F0               [24] 2364 	movx	@dptr,a
      0009DA 90 00 09         [24] 2365 	mov	dptr,#_dotmatrix_send_PARM_3
      0009DD E4               [12] 2366 	clr	a
      0009DE F0               [24] 2367 	movx	@dptr,a
      0009DF 90 00 0A         [24] 2368 	mov	dptr,#_dotmatrix_send_PARM_4
      0009E2 74 04            [12] 2369 	mov	a,#0x04
      0009E4 F0               [24] 2370 	movx	@dptr,a
      0009E5 75 82 0A         [24] 2371 	mov	dpl,#0x0a
      0009E8 12 00 CA         [24] 2372 	lcall	_dotmatrix_send
                                   2373 ;	dotmatrix.c:371: dotmatrix_send(INTENSITY_REG, INTENSITY_REG_MED_INTENSITY_VAL, DISPLAY2, PLAYER1_UNIT);
      0009EB 90 00 08         [24] 2374 	mov	dptr,#_dotmatrix_send_PARM_2
      0009EE 74 07            [12] 2375 	mov	a,#0x07
      0009F0 F0               [24] 2376 	movx	@dptr,a
      0009F1 90 00 09         [24] 2377 	mov	dptr,#_dotmatrix_send_PARM_3
      0009F4 74 01            [12] 2378 	mov	a,#0x01
      0009F6 F0               [24] 2379 	movx	@dptr,a
      0009F7 90 00 0A         [24] 2380 	mov	dptr,#_dotmatrix_send_PARM_4
      0009FA F0               [24] 2381 	movx	@dptr,a
      0009FB 75 82 0A         [24] 2382 	mov	dpl,#0x0a
      0009FE 12 00 CA         [24] 2383 	lcall	_dotmatrix_send
                                   2384 ;	dotmatrix.c:372: dotmatrix_send(INTENSITY_REG, INTENSITY_REG_MED_INTENSITY_VAL, DISPLAY2, 2);
      000A01 90 00 08         [24] 2385 	mov	dptr,#_dotmatrix_send_PARM_2
      000A04 74 07            [12] 2386 	mov	a,#0x07
      000A06 F0               [24] 2387 	movx	@dptr,a
      000A07 90 00 09         [24] 2388 	mov	dptr,#_dotmatrix_send_PARM_3
      000A0A 74 01            [12] 2389 	mov	a,#0x01
      000A0C F0               [24] 2390 	movx	@dptr,a
      000A0D 90 00 0A         [24] 2391 	mov	dptr,#_dotmatrix_send_PARM_4
      000A10 04               [12] 2392 	inc	a
      000A11 F0               [24] 2393 	movx	@dptr,a
      000A12 75 82 0A         [24] 2394 	mov	dpl,#0x0a
      000A15 12 00 CA         [24] 2395 	lcall	_dotmatrix_send
                                   2396 ;	dotmatrix.c:373: dotmatrix_send(INTENSITY_REG, INTENSITY_REG_MED_INTENSITY_VAL, DISPLAY2, 3);
      000A18 90 00 08         [24] 2397 	mov	dptr,#_dotmatrix_send_PARM_2
      000A1B 74 07            [12] 2398 	mov	a,#0x07
      000A1D F0               [24] 2399 	movx	@dptr,a
      000A1E 90 00 09         [24] 2400 	mov	dptr,#_dotmatrix_send_PARM_3
      000A21 74 01            [12] 2401 	mov	a,#0x01
      000A23 F0               [24] 2402 	movx	@dptr,a
      000A24 90 00 0A         [24] 2403 	mov	dptr,#_dotmatrix_send_PARM_4
      000A27 74 03            [12] 2404 	mov	a,#0x03
      000A29 F0               [24] 2405 	movx	@dptr,a
      000A2A 75 82 0A         [24] 2406 	mov	dpl,#0x0a
      000A2D 12 00 CA         [24] 2407 	lcall	_dotmatrix_send
                                   2408 ;	dotmatrix.c:374: dotmatrix_send(INTENSITY_REG, INTENSITY_REG_MED_INTENSITY_VAL, DISPLAY2, PLAYER2_UNIT);
      000A30 90 00 08         [24] 2409 	mov	dptr,#_dotmatrix_send_PARM_2
      000A33 74 07            [12] 2410 	mov	a,#0x07
      000A35 F0               [24] 2411 	movx	@dptr,a
      000A36 90 00 09         [24] 2412 	mov	dptr,#_dotmatrix_send_PARM_3
      000A39 74 01            [12] 2413 	mov	a,#0x01
      000A3B F0               [24] 2414 	movx	@dptr,a
      000A3C 90 00 0A         [24] 2415 	mov	dptr,#_dotmatrix_send_PARM_4
      000A3F 74 04            [12] 2416 	mov	a,#0x04
      000A41 F0               [24] 2417 	movx	@dptr,a
      000A42 75 82 0A         [24] 2418 	mov	dpl,#0x0a
      000A45 12 00 CA         [24] 2419 	lcall	_dotmatrix_send
                                   2420 ;	dotmatrix.c:376: dotmatrix_send(SCAN_LIMIT_REG, SCAN_LIMIT_REG_ALL_SCAN_LIMIT_VAL, DISPLAY1, PLAYER1_UNIT);
      000A48 90 00 08         [24] 2421 	mov	dptr,#_dotmatrix_send_PARM_2
      000A4B 74 07            [12] 2422 	mov	a,#0x07
      000A4D F0               [24] 2423 	movx	@dptr,a
      000A4E 90 00 09         [24] 2424 	mov	dptr,#_dotmatrix_send_PARM_3
      000A51 E4               [12] 2425 	clr	a
      000A52 F0               [24] 2426 	movx	@dptr,a
      000A53 90 00 0A         [24] 2427 	mov	dptr,#_dotmatrix_send_PARM_4
      000A56 04               [12] 2428 	inc	a
      000A57 F0               [24] 2429 	movx	@dptr,a
      000A58 75 82 0B         [24] 2430 	mov	dpl,#0x0b
      000A5B 12 00 CA         [24] 2431 	lcall	_dotmatrix_send
                                   2432 ;	dotmatrix.c:377: dotmatrix_send(SCAN_LIMIT_REG, SCAN_LIMIT_REG_ALL_SCAN_LIMIT_VAL, DISPLAY1, 2);
      000A5E 90 00 08         [24] 2433 	mov	dptr,#_dotmatrix_send_PARM_2
      000A61 74 07            [12] 2434 	mov	a,#0x07
      000A63 F0               [24] 2435 	movx	@dptr,a
      000A64 90 00 09         [24] 2436 	mov	dptr,#_dotmatrix_send_PARM_3
      000A67 E4               [12] 2437 	clr	a
      000A68 F0               [24] 2438 	movx	@dptr,a
      000A69 90 00 0A         [24] 2439 	mov	dptr,#_dotmatrix_send_PARM_4
      000A6C 74 02            [12] 2440 	mov	a,#0x02
      000A6E F0               [24] 2441 	movx	@dptr,a
      000A6F 75 82 0B         [24] 2442 	mov	dpl,#0x0b
      000A72 12 00 CA         [24] 2443 	lcall	_dotmatrix_send
                                   2444 ;	dotmatrix.c:378: dotmatrix_send(SCAN_LIMIT_REG, SCAN_LIMIT_REG_ALL_SCAN_LIMIT_VAL, DISPLAY1, 3);
      000A75 90 00 08         [24] 2445 	mov	dptr,#_dotmatrix_send_PARM_2
      000A78 74 07            [12] 2446 	mov	a,#0x07
      000A7A F0               [24] 2447 	movx	@dptr,a
      000A7B 90 00 09         [24] 2448 	mov	dptr,#_dotmatrix_send_PARM_3
      000A7E E4               [12] 2449 	clr	a
      000A7F F0               [24] 2450 	movx	@dptr,a
      000A80 90 00 0A         [24] 2451 	mov	dptr,#_dotmatrix_send_PARM_4
      000A83 74 03            [12] 2452 	mov	a,#0x03
      000A85 F0               [24] 2453 	movx	@dptr,a
      000A86 75 82 0B         [24] 2454 	mov	dpl,#0x0b
      000A89 12 00 CA         [24] 2455 	lcall	_dotmatrix_send
                                   2456 ;	dotmatrix.c:379: dotmatrix_send(SCAN_LIMIT_REG, SCAN_LIMIT_REG_ALL_SCAN_LIMIT_VAL, DISPLAY1, PLAYER2_UNIT);
      000A8C 90 00 08         [24] 2457 	mov	dptr,#_dotmatrix_send_PARM_2
      000A8F 74 07            [12] 2458 	mov	a,#0x07
      000A91 F0               [24] 2459 	movx	@dptr,a
      000A92 90 00 09         [24] 2460 	mov	dptr,#_dotmatrix_send_PARM_3
      000A95 E4               [12] 2461 	clr	a
      000A96 F0               [24] 2462 	movx	@dptr,a
      000A97 90 00 0A         [24] 2463 	mov	dptr,#_dotmatrix_send_PARM_4
      000A9A 74 04            [12] 2464 	mov	a,#0x04
      000A9C F0               [24] 2465 	movx	@dptr,a
      000A9D 75 82 0B         [24] 2466 	mov	dpl,#0x0b
      000AA0 12 00 CA         [24] 2467 	lcall	_dotmatrix_send
                                   2468 ;	dotmatrix.c:381: dotmatrix_send(SCAN_LIMIT_REG, SCAN_LIMIT_REG_ALL_SCAN_LIMIT_VAL, DISPLAY2, PLAYER1_UNIT);
      000AA3 90 00 08         [24] 2469 	mov	dptr,#_dotmatrix_send_PARM_2
      000AA6 74 07            [12] 2470 	mov	a,#0x07
      000AA8 F0               [24] 2471 	movx	@dptr,a
      000AA9 90 00 09         [24] 2472 	mov	dptr,#_dotmatrix_send_PARM_3
      000AAC 74 01            [12] 2473 	mov	a,#0x01
      000AAE F0               [24] 2474 	movx	@dptr,a
      000AAF 90 00 0A         [24] 2475 	mov	dptr,#_dotmatrix_send_PARM_4
      000AB2 F0               [24] 2476 	movx	@dptr,a
      000AB3 75 82 0B         [24] 2477 	mov	dpl,#0x0b
      000AB6 12 00 CA         [24] 2478 	lcall	_dotmatrix_send
                                   2479 ;	dotmatrix.c:382: dotmatrix_send(SCAN_LIMIT_REG, SCAN_LIMIT_REG_ALL_SCAN_LIMIT_VAL, DISPLAY2, 2);
      000AB9 90 00 08         [24] 2480 	mov	dptr,#_dotmatrix_send_PARM_2
      000ABC 74 07            [12] 2481 	mov	a,#0x07
      000ABE F0               [24] 2482 	movx	@dptr,a
      000ABF 90 00 09         [24] 2483 	mov	dptr,#_dotmatrix_send_PARM_3
      000AC2 74 01            [12] 2484 	mov	a,#0x01
      000AC4 F0               [24] 2485 	movx	@dptr,a
      000AC5 90 00 0A         [24] 2486 	mov	dptr,#_dotmatrix_send_PARM_4
      000AC8 04               [12] 2487 	inc	a
      000AC9 F0               [24] 2488 	movx	@dptr,a
      000ACA 75 82 0B         [24] 2489 	mov	dpl,#0x0b
      000ACD 12 00 CA         [24] 2490 	lcall	_dotmatrix_send
                                   2491 ;	dotmatrix.c:383: dotmatrix_send(SCAN_LIMIT_REG, SCAN_LIMIT_REG_ALL_SCAN_LIMIT_VAL, DISPLAY2, 3);
      000AD0 90 00 08         [24] 2492 	mov	dptr,#_dotmatrix_send_PARM_2
      000AD3 74 07            [12] 2493 	mov	a,#0x07
      000AD5 F0               [24] 2494 	movx	@dptr,a
      000AD6 90 00 09         [24] 2495 	mov	dptr,#_dotmatrix_send_PARM_3
      000AD9 74 01            [12] 2496 	mov	a,#0x01
      000ADB F0               [24] 2497 	movx	@dptr,a
      000ADC 90 00 0A         [24] 2498 	mov	dptr,#_dotmatrix_send_PARM_4
      000ADF 74 03            [12] 2499 	mov	a,#0x03
      000AE1 F0               [24] 2500 	movx	@dptr,a
      000AE2 75 82 0B         [24] 2501 	mov	dpl,#0x0b
      000AE5 12 00 CA         [24] 2502 	lcall	_dotmatrix_send
                                   2503 ;	dotmatrix.c:384: dotmatrix_send(SCAN_LIMIT_REG, SCAN_LIMIT_REG_ALL_SCAN_LIMIT_VAL, DISPLAY2, PLAYER2_UNIT);
      000AE8 90 00 08         [24] 2504 	mov	dptr,#_dotmatrix_send_PARM_2
      000AEB 74 07            [12] 2505 	mov	a,#0x07
      000AED F0               [24] 2506 	movx	@dptr,a
      000AEE 90 00 09         [24] 2507 	mov	dptr,#_dotmatrix_send_PARM_3
      000AF1 74 01            [12] 2508 	mov	a,#0x01
      000AF3 F0               [24] 2509 	movx	@dptr,a
      000AF4 90 00 0A         [24] 2510 	mov	dptr,#_dotmatrix_send_PARM_4
      000AF7 74 04            [12] 2511 	mov	a,#0x04
      000AF9 F0               [24] 2512 	movx	@dptr,a
      000AFA 75 82 0B         [24] 2513 	mov	dpl,#0x0b
      000AFD 12 00 CA         [24] 2514 	lcall	_dotmatrix_send
                                   2515 ;	dotmatrix.c:386: dotmatrix_send(SHUTDOWN_REG, SHUTDOWN_REG_NORMAL_MODE_VAL, DISPLAY1, PLAYER1_UNIT); // turn on chip
      000B00 90 00 08         [24] 2516 	mov	dptr,#_dotmatrix_send_PARM_2
      000B03 74 01            [12] 2517 	mov	a,#0x01
      000B05 F0               [24] 2518 	movx	@dptr,a
      000B06 90 00 09         [24] 2519 	mov	dptr,#_dotmatrix_send_PARM_3
      000B09 E4               [12] 2520 	clr	a
      000B0A F0               [24] 2521 	movx	@dptr,a
      000B0B 90 00 0A         [24] 2522 	mov	dptr,#_dotmatrix_send_PARM_4
      000B0E 04               [12] 2523 	inc	a
      000B0F F0               [24] 2524 	movx	@dptr,a
      000B10 75 82 0C         [24] 2525 	mov	dpl,#0x0c
      000B13 12 00 CA         [24] 2526 	lcall	_dotmatrix_send
                                   2527 ;	dotmatrix.c:387: dotmatrix_send(SHUTDOWN_REG, SHUTDOWN_REG_NORMAL_MODE_VAL, DISPLAY1, 2);            // turn on chip
      000B16 90 00 08         [24] 2528 	mov	dptr,#_dotmatrix_send_PARM_2
      000B19 74 01            [12] 2529 	mov	a,#0x01
      000B1B F0               [24] 2530 	movx	@dptr,a
      000B1C 90 00 09         [24] 2531 	mov	dptr,#_dotmatrix_send_PARM_3
      000B1F E4               [12] 2532 	clr	a
      000B20 F0               [24] 2533 	movx	@dptr,a
      000B21 90 00 0A         [24] 2534 	mov	dptr,#_dotmatrix_send_PARM_4
      000B24 74 02            [12] 2535 	mov	a,#0x02
      000B26 F0               [24] 2536 	movx	@dptr,a
      000B27 75 82 0C         [24] 2537 	mov	dpl,#0x0c
      000B2A 12 00 CA         [24] 2538 	lcall	_dotmatrix_send
                                   2539 ;	dotmatrix.c:388: dotmatrix_send(SHUTDOWN_REG, SHUTDOWN_REG_NORMAL_MODE_VAL, DISPLAY1, 3);            // turn on chip
      000B2D 90 00 08         [24] 2540 	mov	dptr,#_dotmatrix_send_PARM_2
      000B30 74 01            [12] 2541 	mov	a,#0x01
      000B32 F0               [24] 2542 	movx	@dptr,a
      000B33 90 00 09         [24] 2543 	mov	dptr,#_dotmatrix_send_PARM_3
      000B36 E4               [12] 2544 	clr	a
      000B37 F0               [24] 2545 	movx	@dptr,a
      000B38 90 00 0A         [24] 2546 	mov	dptr,#_dotmatrix_send_PARM_4
      000B3B 74 03            [12] 2547 	mov	a,#0x03
      000B3D F0               [24] 2548 	movx	@dptr,a
      000B3E 75 82 0C         [24] 2549 	mov	dpl,#0x0c
      000B41 12 00 CA         [24] 2550 	lcall	_dotmatrix_send
                                   2551 ;	dotmatrix.c:389: dotmatrix_send(SHUTDOWN_REG, SHUTDOWN_REG_NORMAL_MODE_VAL, DISPLAY1, PLAYER2_UNIT); // turn on chip
      000B44 90 00 08         [24] 2552 	mov	dptr,#_dotmatrix_send_PARM_2
      000B47 74 01            [12] 2553 	mov	a,#0x01
      000B49 F0               [24] 2554 	movx	@dptr,a
      000B4A 90 00 09         [24] 2555 	mov	dptr,#_dotmatrix_send_PARM_3
      000B4D E4               [12] 2556 	clr	a
      000B4E F0               [24] 2557 	movx	@dptr,a
      000B4F 90 00 0A         [24] 2558 	mov	dptr,#_dotmatrix_send_PARM_4
      000B52 74 04            [12] 2559 	mov	a,#0x04
      000B54 F0               [24] 2560 	movx	@dptr,a
      000B55 75 82 0C         [24] 2561 	mov	dpl,#0x0c
      000B58 12 00 CA         [24] 2562 	lcall	_dotmatrix_send
                                   2563 ;	dotmatrix.c:391: dotmatrix_send(SHUTDOWN_REG, SHUTDOWN_REG_NORMAL_MODE_VAL, DISPLAY2, PLAYER1_UNIT); // turn on chip
      000B5B 90 00 08         [24] 2564 	mov	dptr,#_dotmatrix_send_PARM_2
      000B5E 74 01            [12] 2565 	mov	a,#0x01
      000B60 F0               [24] 2566 	movx	@dptr,a
      000B61 90 00 09         [24] 2567 	mov	dptr,#_dotmatrix_send_PARM_3
      000B64 F0               [24] 2568 	movx	@dptr,a
      000B65 90 00 0A         [24] 2569 	mov	dptr,#_dotmatrix_send_PARM_4
      000B68 F0               [24] 2570 	movx	@dptr,a
      000B69 75 82 0C         [24] 2571 	mov	dpl,#0x0c
      000B6C 12 00 CA         [24] 2572 	lcall	_dotmatrix_send
                                   2573 ;	dotmatrix.c:392: dotmatrix_send(SHUTDOWN_REG, SHUTDOWN_REG_NORMAL_MODE_VAL, DISPLAY2, 2);            // turn on chip
      000B6F 90 00 08         [24] 2574 	mov	dptr,#_dotmatrix_send_PARM_2
      000B72 74 01            [12] 2575 	mov	a,#0x01
      000B74 F0               [24] 2576 	movx	@dptr,a
      000B75 90 00 09         [24] 2577 	mov	dptr,#_dotmatrix_send_PARM_3
      000B78 F0               [24] 2578 	movx	@dptr,a
      000B79 90 00 0A         [24] 2579 	mov	dptr,#_dotmatrix_send_PARM_4
      000B7C 04               [12] 2580 	inc	a
      000B7D F0               [24] 2581 	movx	@dptr,a
      000B7E 75 82 0C         [24] 2582 	mov	dpl,#0x0c
      000B81 12 00 CA         [24] 2583 	lcall	_dotmatrix_send
                                   2584 ;	dotmatrix.c:393: dotmatrix_send(SHUTDOWN_REG, SHUTDOWN_REG_NORMAL_MODE_VAL, DISPLAY2, 3);            // turn on chip
      000B84 90 00 08         [24] 2585 	mov	dptr,#_dotmatrix_send_PARM_2
      000B87 74 01            [12] 2586 	mov	a,#0x01
      000B89 F0               [24] 2587 	movx	@dptr,a
      000B8A 90 00 09         [24] 2588 	mov	dptr,#_dotmatrix_send_PARM_3
      000B8D F0               [24] 2589 	movx	@dptr,a
      000B8E 90 00 0A         [24] 2590 	mov	dptr,#_dotmatrix_send_PARM_4
      000B91 74 03            [12] 2591 	mov	a,#0x03
      000B93 F0               [24] 2592 	movx	@dptr,a
      000B94 75 82 0C         [24] 2593 	mov	dpl,#0x0c
      000B97 12 00 CA         [24] 2594 	lcall	_dotmatrix_send
                                   2595 ;	dotmatrix.c:394: dotmatrix_send(SHUTDOWN_REG, SHUTDOWN_REG_NORMAL_MODE_VAL, DISPLAY2, PLAYER2_UNIT); // turn on chip
      000B9A 90 00 08         [24] 2596 	mov	dptr,#_dotmatrix_send_PARM_2
      000B9D 74 01            [12] 2597 	mov	a,#0x01
      000B9F F0               [24] 2598 	movx	@dptr,a
      000BA0 90 00 09         [24] 2599 	mov	dptr,#_dotmatrix_send_PARM_3
      000BA3 F0               [24] 2600 	movx	@dptr,a
      000BA4 90 00 0A         [24] 2601 	mov	dptr,#_dotmatrix_send_PARM_4
      000BA7 74 04            [12] 2602 	mov	a,#0x04
      000BA9 F0               [24] 2603 	movx	@dptr,a
      000BAA 75 82 0C         [24] 2604 	mov	dpl,#0x0c
      000BAD 12 00 CA         [24] 2605 	lcall	_dotmatrix_send
                                   2606 ;	dotmatrix.c:396: for (int unit = 1; unit <= 4; unit++)
      000BB0 7E 01            [12] 2607 	mov	r6,#0x01
      000BB2 7F 00            [12] 2608 	mov	r7,#0x00
      000BB4                       2609 00109$:
      000BB4 C3               [12] 2610 	clr	c
      000BB5 74 04            [12] 2611 	mov	a,#0x04
      000BB7 9E               [12] 2612 	subb	a,r6
      000BB8 74 80            [12] 2613 	mov	a,#(0x00 ^ 0x80)
      000BBA 8F F0            [24] 2614 	mov	b,r7
      000BBC 63 F0 80         [24] 2615 	xrl	b,#0x80
      000BBF 95 F0            [12] 2616 	subb	a,b
      000BC1 40 54            [24] 2617 	jc	00102$
                                   2618 ;	dotmatrix.c:398: for (int row = 1; row <= EIGHT; row++)
      000BC3 8E 04            [24] 2619 	mov	ar4,r6
      000BC5 8F 05            [24] 2620 	mov	ar5,r7
      000BC7 7A 01            [12] 2621 	mov	r2,#0x01
      000BC9 7B 00            [12] 2622 	mov	r3,#0x00
      000BCB                       2623 00106$:
      000BCB C3               [12] 2624 	clr	c
      000BCC 74 08            [12] 2625 	mov	a,#0x08
      000BCE 9A               [12] 2626 	subb	a,r2
      000BCF 74 80            [12] 2627 	mov	a,#(0x00 ^ 0x80)
      000BD1 8B F0            [24] 2628 	mov	b,r3
      000BD3 63 F0 80         [24] 2629 	xrl	b,#0x80
      000BD6 95 F0            [12] 2630 	subb	a,b
      000BD8 40 36            [24] 2631 	jc	00110$
                                   2632 ;	dotmatrix.c:400: dotmatrix_send(row, ZERO, DISPLAY1, unit);
      000BDA 8A 01            [24] 2633 	mov	ar1,r2
      000BDC 8C 00            [24] 2634 	mov	ar0,r4
      000BDE 90 00 08         [24] 2635 	mov	dptr,#_dotmatrix_send_PARM_2
      000BE1 E4               [12] 2636 	clr	a
      000BE2 F0               [24] 2637 	movx	@dptr,a
      000BE3 90 00 09         [24] 2638 	mov	dptr,#_dotmatrix_send_PARM_3
      000BE6 F0               [24] 2639 	movx	@dptr,a
      000BE7 90 00 0A         [24] 2640 	mov	dptr,#_dotmatrix_send_PARM_4
      000BEA E8               [12] 2641 	mov	a,r0
      000BEB F0               [24] 2642 	movx	@dptr,a
      000BEC 89 82            [24] 2643 	mov	dpl,r1
      000BEE C0 07            [24] 2644 	push	ar7
      000BF0 C0 06            [24] 2645 	push	ar6
      000BF2 C0 05            [24] 2646 	push	ar5
      000BF4 C0 04            [24] 2647 	push	ar4
      000BF6 C0 03            [24] 2648 	push	ar3
      000BF8 C0 02            [24] 2649 	push	ar2
      000BFA 12 00 CA         [24] 2650 	lcall	_dotmatrix_send
      000BFD D0 02            [24] 2651 	pop	ar2
      000BFF D0 03            [24] 2652 	pop	ar3
      000C01 D0 04            [24] 2653 	pop	ar4
      000C03 D0 05            [24] 2654 	pop	ar5
      000C05 D0 06            [24] 2655 	pop	ar6
      000C07 D0 07            [24] 2656 	pop	ar7
                                   2657 ;	dotmatrix.c:398: for (int row = 1; row <= EIGHT; row++)
      000C09 0A               [12] 2658 	inc	r2
      000C0A BA 00 BE         [24] 2659 	cjne	r2,#0x00,00106$
      000C0D 0B               [12] 2660 	inc	r3
      000C0E 80 BB            [24] 2661 	sjmp	00106$
      000C10                       2662 00110$:
                                   2663 ;	dotmatrix.c:396: for (int unit = 1; unit <= 4; unit++)
      000C10 0E               [12] 2664 	inc	r6
      000C11 BE 00 A0         [24] 2665 	cjne	r6,#0x00,00109$
      000C14 0F               [12] 2666 	inc	r7
      000C15 80 9D            [24] 2667 	sjmp	00109$
      000C17                       2668 00102$:
                                   2669 ;	dotmatrix.c:404: for (int unit = 1; unit <= 4; unit++)
      000C17 7E 01            [12] 2670 	mov	r6,#0x01
      000C19 7F 00            [12] 2671 	mov	r7,#0x00
      000C1B                       2672 00115$:
      000C1B C3               [12] 2673 	clr	c
      000C1C 74 04            [12] 2674 	mov	a,#0x04
      000C1E 9E               [12] 2675 	subb	a,r6
      000C1F 74 80            [12] 2676 	mov	a,#(0x00 ^ 0x80)
      000C21 8F F0            [24] 2677 	mov	b,r7
      000C23 63 F0 80         [24] 2678 	xrl	b,#0x80
      000C26 95 F0            [12] 2679 	subb	a,b
      000C28 40 55            [24] 2680 	jc	00104$
                                   2681 ;	dotmatrix.c:406: for (int row = 1; row <= EIGHT; row++)
      000C2A 8E 04            [24] 2682 	mov	ar4,r6
      000C2C 8F 05            [24] 2683 	mov	ar5,r7
      000C2E 7A 01            [12] 2684 	mov	r2,#0x01
      000C30 7B 00            [12] 2685 	mov	r3,#0x00
      000C32                       2686 00112$:
      000C32 C3               [12] 2687 	clr	c
      000C33 74 08            [12] 2688 	mov	a,#0x08
      000C35 9A               [12] 2689 	subb	a,r2
      000C36 74 80            [12] 2690 	mov	a,#(0x00 ^ 0x80)
      000C38 8B F0            [24] 2691 	mov	b,r3
      000C3A 63 F0 80         [24] 2692 	xrl	b,#0x80
      000C3D 95 F0            [12] 2693 	subb	a,b
      000C3F 40 37            [24] 2694 	jc	00116$
                                   2695 ;	dotmatrix.c:408: dotmatrix_send(row, ZERO, DISPLAY2, unit);
      000C41 8A 01            [24] 2696 	mov	ar1,r2
      000C43 8C 00            [24] 2697 	mov	ar0,r4
      000C45 90 00 08         [24] 2698 	mov	dptr,#_dotmatrix_send_PARM_2
      000C48 E4               [12] 2699 	clr	a
      000C49 F0               [24] 2700 	movx	@dptr,a
      000C4A 90 00 09         [24] 2701 	mov	dptr,#_dotmatrix_send_PARM_3
      000C4D 04               [12] 2702 	inc	a
      000C4E F0               [24] 2703 	movx	@dptr,a
      000C4F 90 00 0A         [24] 2704 	mov	dptr,#_dotmatrix_send_PARM_4
      000C52 E8               [12] 2705 	mov	a,r0
      000C53 F0               [24] 2706 	movx	@dptr,a
      000C54 89 82            [24] 2707 	mov	dpl,r1
      000C56 C0 07            [24] 2708 	push	ar7
      000C58 C0 06            [24] 2709 	push	ar6
      000C5A C0 05            [24] 2710 	push	ar5
      000C5C C0 04            [24] 2711 	push	ar4
      000C5E C0 03            [24] 2712 	push	ar3
      000C60 C0 02            [24] 2713 	push	ar2
      000C62 12 00 CA         [24] 2714 	lcall	_dotmatrix_send
      000C65 D0 02            [24] 2715 	pop	ar2
      000C67 D0 03            [24] 2716 	pop	ar3
      000C69 D0 04            [24] 2717 	pop	ar4
      000C6B D0 05            [24] 2718 	pop	ar5
      000C6D D0 06            [24] 2719 	pop	ar6
      000C6F D0 07            [24] 2720 	pop	ar7
                                   2721 ;	dotmatrix.c:406: for (int row = 1; row <= EIGHT; row++)
      000C71 0A               [12] 2722 	inc	r2
      000C72 BA 00 BD         [24] 2723 	cjne	r2,#0x00,00112$
      000C75 0B               [12] 2724 	inc	r3
      000C76 80 BA            [24] 2725 	sjmp	00112$
      000C78                       2726 00116$:
                                   2727 ;	dotmatrix.c:404: for (int unit = 1; unit <= 4; unit++)
      000C78 0E               [12] 2728 	inc	r6
      000C79 BE 00 9F         [24] 2729 	cjne	r6,#0x00,00115$
      000C7C 0F               [12] 2730 	inc	r7
      000C7D 80 9C            [24] 2731 	sjmp	00115$
      000C7F                       2732 00104$:
                                   2733 ;	dotmatrix.c:412: dotmatrix_send(current_row_location_of_player1, PLAYER1_ROW, DISPLAY1, PLAYER1_UNIT);
      000C7F 90 00 EB         [24] 2734 	mov	dptr,#_current_row_location_of_player1
      000C82 E0               [24] 2735 	movx	a,@dptr
      000C83 FF               [12] 2736 	mov	r7,a
      000C84 90 00 08         [24] 2737 	mov	dptr,#_dotmatrix_send_PARM_2
      000C87 74 80            [12] 2738 	mov	a,#0x80
      000C89 F0               [24] 2739 	movx	@dptr,a
      000C8A 90 00 09         [24] 2740 	mov	dptr,#_dotmatrix_send_PARM_3
      000C8D E4               [12] 2741 	clr	a
      000C8E F0               [24] 2742 	movx	@dptr,a
      000C8F 90 00 0A         [24] 2743 	mov	dptr,#_dotmatrix_send_PARM_4
      000C92 04               [12] 2744 	inc	a
      000C93 F0               [24] 2745 	movx	@dptr,a
      000C94 8F 82            [24] 2746 	mov	dpl,r7
      000C96 12 00 CA         [24] 2747 	lcall	_dotmatrix_send
                                   2748 ;	dotmatrix.c:413: dotmatrix_send(current_row_location_of_player1 + 1, PLAYER1_ROW, DISPLAY1, PLAYER1_UNIT);
      000C99 90 00 EB         [24] 2749 	mov	dptr,#_current_row_location_of_player1
      000C9C E0               [24] 2750 	movx	a,@dptr
      000C9D FF               [12] 2751 	mov	r7,a
      000C9E 0F               [12] 2752 	inc	r7
      000C9F 90 00 08         [24] 2753 	mov	dptr,#_dotmatrix_send_PARM_2
      000CA2 74 80            [12] 2754 	mov	a,#0x80
      000CA4 F0               [24] 2755 	movx	@dptr,a
      000CA5 90 00 09         [24] 2756 	mov	dptr,#_dotmatrix_send_PARM_3
      000CA8 E4               [12] 2757 	clr	a
      000CA9 F0               [24] 2758 	movx	@dptr,a
      000CAA 90 00 0A         [24] 2759 	mov	dptr,#_dotmatrix_send_PARM_4
      000CAD 04               [12] 2760 	inc	a
      000CAE F0               [24] 2761 	movx	@dptr,a
      000CAF 8F 82            [24] 2762 	mov	dpl,r7
      000CB1 12 00 CA         [24] 2763 	lcall	_dotmatrix_send
                                   2764 ;	dotmatrix.c:414: dotmatrix_send(1, PLAYER1_ROW, DISPLAY2, PLAYER1_UNIT);
      000CB4 90 00 08         [24] 2765 	mov	dptr,#_dotmatrix_send_PARM_2
      000CB7 74 80            [12] 2766 	mov	a,#0x80
      000CB9 F0               [24] 2767 	movx	@dptr,a
      000CBA 90 00 09         [24] 2768 	mov	dptr,#_dotmatrix_send_PARM_3
      000CBD 23               [12] 2769 	rl	a
      000CBE F0               [24] 2770 	movx	@dptr,a
      000CBF 90 00 0A         [24] 2771 	mov	dptr,#_dotmatrix_send_PARM_4
      000CC2 F0               [24] 2772 	movx	@dptr,a
      000CC3 75 82 01         [24] 2773 	mov	dpl,#0x01
      000CC6 12 00 CA         [24] 2774 	lcall	_dotmatrix_send
                                   2775 ;	dotmatrix.c:415: dotmatrix_send(2, PLAYER1_ROW, DISPLAY2, PLAYER1_UNIT);
      000CC9 90 00 08         [24] 2776 	mov	dptr,#_dotmatrix_send_PARM_2
      000CCC 74 80            [12] 2777 	mov	a,#0x80
      000CCE F0               [24] 2778 	movx	@dptr,a
      000CCF 90 00 09         [24] 2779 	mov	dptr,#_dotmatrix_send_PARM_3
      000CD2 23               [12] 2780 	rl	a
      000CD3 F0               [24] 2781 	movx	@dptr,a
      000CD4 90 00 0A         [24] 2782 	mov	dptr,#_dotmatrix_send_PARM_4
      000CD7 F0               [24] 2783 	movx	@dptr,a
      000CD8 75 82 02         [24] 2784 	mov	dpl,#0x02
      000CDB 12 00 CA         [24] 2785 	lcall	_dotmatrix_send
                                   2786 ;	dotmatrix.c:417: dotmatrix_send(current_row_location_of_player2, PLAYER2_ROW, DISPLAY1, PLAYER2_UNIT);
      000CDE 90 00 EC         [24] 2787 	mov	dptr,#_current_row_location_of_player2
      000CE1 E0               [24] 2788 	movx	a,@dptr
      000CE2 FF               [12] 2789 	mov	r7,a
      000CE3 90 00 08         [24] 2790 	mov	dptr,#_dotmatrix_send_PARM_2
      000CE6 74 01            [12] 2791 	mov	a,#0x01
      000CE8 F0               [24] 2792 	movx	@dptr,a
      000CE9 90 00 09         [24] 2793 	mov	dptr,#_dotmatrix_send_PARM_3
      000CEC E4               [12] 2794 	clr	a
      000CED F0               [24] 2795 	movx	@dptr,a
      000CEE 90 00 0A         [24] 2796 	mov	dptr,#_dotmatrix_send_PARM_4
      000CF1 74 04            [12] 2797 	mov	a,#0x04
      000CF3 F0               [24] 2798 	movx	@dptr,a
      000CF4 8F 82            [24] 2799 	mov	dpl,r7
      000CF6 12 00 CA         [24] 2800 	lcall	_dotmatrix_send
                                   2801 ;	dotmatrix.c:418: dotmatrix_send(current_row_location_of_player2+1, PLAYER2_ROW, DISPLAY1, PLAYER2_UNIT);
      000CF9 90 00 EC         [24] 2802 	mov	dptr,#_current_row_location_of_player2
      000CFC E0               [24] 2803 	movx	a,@dptr
      000CFD FF               [12] 2804 	mov	r7,a
      000CFE 0F               [12] 2805 	inc	r7
      000CFF 90 00 08         [24] 2806 	mov	dptr,#_dotmatrix_send_PARM_2
      000D02 74 01            [12] 2807 	mov	a,#0x01
      000D04 F0               [24] 2808 	movx	@dptr,a
      000D05 90 00 09         [24] 2809 	mov	dptr,#_dotmatrix_send_PARM_3
      000D08 E4               [12] 2810 	clr	a
      000D09 F0               [24] 2811 	movx	@dptr,a
      000D0A 90 00 0A         [24] 2812 	mov	dptr,#_dotmatrix_send_PARM_4
      000D0D 74 04            [12] 2813 	mov	a,#0x04
      000D0F F0               [24] 2814 	movx	@dptr,a
      000D10 8F 82            [24] 2815 	mov	dpl,r7
      000D12 12 00 CA         [24] 2816 	lcall	_dotmatrix_send
                                   2817 ;	dotmatrix.c:419: dotmatrix_send(1, PLAYER2_ROW, DISPLAY2, PLAYER2_UNIT);
      000D15 90 00 08         [24] 2818 	mov	dptr,#_dotmatrix_send_PARM_2
      000D18 74 01            [12] 2819 	mov	a,#0x01
      000D1A F0               [24] 2820 	movx	@dptr,a
      000D1B 90 00 09         [24] 2821 	mov	dptr,#_dotmatrix_send_PARM_3
      000D1E F0               [24] 2822 	movx	@dptr,a
      000D1F 90 00 0A         [24] 2823 	mov	dptr,#_dotmatrix_send_PARM_4
      000D22 74 04            [12] 2824 	mov	a,#0x04
      000D24 F0               [24] 2825 	movx	@dptr,a
      000D25 75 82 01         [24] 2826 	mov	dpl,#0x01
      000D28 12 00 CA         [24] 2827 	lcall	_dotmatrix_send
                                   2828 ;	dotmatrix.c:420: dotmatrix_send(2, PLAYER2_ROW, DISPLAY2, PLAYER2_UNIT);
      000D2B 90 00 08         [24] 2829 	mov	dptr,#_dotmatrix_send_PARM_2
      000D2E 74 01            [12] 2830 	mov	a,#0x01
      000D30 F0               [24] 2831 	movx	@dptr,a
      000D31 90 00 09         [24] 2832 	mov	dptr,#_dotmatrix_send_PARM_3
      000D34 F0               [24] 2833 	movx	@dptr,a
      000D35 90 00 0A         [24] 2834 	mov	dptr,#_dotmatrix_send_PARM_4
      000D38 74 04            [12] 2835 	mov	a,#0x04
      000D3A F0               [24] 2836 	movx	@dptr,a
      000D3B 75 82 02         [24] 2837 	mov	dpl,#0x02
      000D3E 12 00 CA         [24] 2838 	lcall	_dotmatrix_send
                                   2839 ;	dotmatrix.c:422: BUZZER_OFF;
                                   2840 ;	assignBit
      000D41 D2 82            [12] 2841 	setb	_P0_2
                                   2842 ;	dotmatrix.c:424: }
      000D43 22               [24] 2843 	ret
                                   2844 ;------------------------------------------------------------
                                   2845 ;Allocation info for local variables in function 'erase_ball'
                                   2846 ;------------------------------------------------------------
                                   2847 ;display                   Allocated with name '_erase_ball_display_65536_88'
                                   2848 ;unit                      Allocated with name '_erase_ball_unit_65536_88'
                                   2849 ;ball_x_range              Allocated with name '_erase_ball_ball_x_range_65536_88'
                                   2850 ;ball_y_range              Allocated with name '_erase_ball_ball_y_range_65536_88'
                                   2851 ;ball_y_bitwise            Allocated with name '_erase_ball_ball_y_bitwise_65536_88'
                                   2852 ;isBallNearPlayer1         Allocated with name '_erase_ball_isBallNearPlayer1_65537_89'
                                   2853 ;isBallNearPlayer2         Allocated with name '_erase_ball_isBallNearPlayer2_65537_89'
                                   2854 ;data_to_send              Allocated with name '_erase_ball_data_to_send_65537_89'
                                   2855 ;------------------------------------------------------------
                                   2856 ;	dotmatrix.c:427: void erase_ball()
                                   2857 ;	-----------------------------------------
                                   2858 ;	 function erase_ball
                                   2859 ;	-----------------------------------------
      000D44                       2860 _erase_ball:
                                   2861 ;	dotmatrix.c:429: display_t display = get_display(b_x);
      000D44 90 00 EE         [24] 2862 	mov	dptr,#_b_x
      000D47 E0               [24] 2863 	movx	a,@dptr
      000D48 F5 82            [12] 2864 	mov	dpl,a
      000D4A 12 00 A7         [24] 2865 	lcall	_get_display
      000D4D AF 82            [24] 2866 	mov	r7,dpl
                                   2867 ;	dotmatrix.c:430: uint8_t unit = get_unit(b_y);
      000D4F 90 00 ED         [24] 2868 	mov	dptr,#_b_y
      000D52 E0               [24] 2869 	movx	a,@dptr
      000D53 F5 82            [12] 2870 	mov	dpl,a
      000D55 C0 07            [24] 2871 	push	ar7
      000D57 12 00 80         [24] 2872 	lcall	_get_unit
      000D5A AE 82            [24] 2873 	mov	r6,dpl
      000D5C D0 07            [24] 2874 	pop	ar7
                                   2875 ;	dotmatrix.c:435: ball_x_range = (b_x & 0x07) ? (b_x & 0x07) : EIGHT;
      000D5E 90 00 EE         [24] 2876 	mov	dptr,#_b_x
      000D61 E0               [24] 2877 	movx	a,@dptr
      000D62 FD               [12] 2878 	mov	r5,a
      000D63 54 07            [12] 2879 	anl	a,#0x07
      000D65 60 09            [24] 2880 	jz	00108$
      000D67 8D 03            [24] 2881 	mov	ar3,r5
      000D69 53 03 07         [24] 2882 	anl	ar3,#0x07
      000D6C 7C 00            [12] 2883 	mov	r4,#0x00
      000D6E 80 04            [24] 2884 	sjmp	00109$
      000D70                       2885 00108$:
      000D70 7B 08            [12] 2886 	mov	r3,#0x08
      000D72 7C 00            [12] 2887 	mov	r4,#0x00
      000D74                       2888 00109$:
                                   2889 ;	dotmatrix.c:437: ball_y_range = (b_y & 0x07) ? (EIGHT - ((b_y) & 0x07)) : 0;
      000D74 90 00 ED         [24] 2890 	mov	dptr,#_b_y
      000D77 E0               [24] 2891 	movx	a,@dptr
      000D78 FC               [12] 2892 	mov	r4,a
      000D79 54 07            [12] 2893 	anl	a,#0x07
      000D7B 60 0E            [24] 2894 	jz	00110$
      000D7D 74 07            [12] 2895 	mov	a,#0x07
      000D7F 5C               [12] 2896 	anl	a,r4
      000D80 D3               [12] 2897 	setb	c
      000D81 94 08            [12] 2898 	subb	a,#0x08
      000D83 F4               [12] 2899 	cpl	a
      000D84 FA               [12] 2900 	mov	r2,a
      000D85 33               [12] 2901 	rlc	a
      000D86 95 E0            [12] 2902 	subb	a,acc
      000D88 FC               [12] 2903 	mov	r4,a
      000D89 80 04            [24] 2904 	sjmp	00111$
      000D8B                       2905 00110$:
      000D8B 7A 00            [12] 2906 	mov	r2,#0x00
      000D8D 7C 00            [12] 2907 	mov	r4,#0x00
      000D8F                       2908 00111$:
                                   2909 ;	dotmatrix.c:438: ball_y_bitwise = 0 << ball_y_range;
      000D8F 8A F0            [24] 2910 	mov	b,r2
      000D91 05 F0            [12] 2911 	inc	b
      000D93 E4               [12] 2912 	clr	a
      000D94 80 02            [24] 2913 	sjmp	00158$
      000D96                       2914 00156$:
      000D96 25 E0            [12] 2915 	add	a,acc
      000D98                       2916 00158$:
      000D98 D5 F0 FB         [24] 2917 	djnz	b,00156$
      000D9B FC               [12] 2918 	mov	r4,a
                                   2919 ;	dotmatrix.c:441: uint8_t isBallNearPlayer1 = (((current_row_location_of_player1 <= b_x) && ((current_row_location_of_player1 + 3) >= b_x)) && (unit == 1));
      000D9C 90 00 EB         [24] 2920 	mov	dptr,#_current_row_location_of_player1
      000D9F E0               [24] 2921 	movx	a,@dptr
      000DA0 FA               [12] 2922 	mov	r2,a
      000DA1 C3               [12] 2923 	clr	c
      000DA2 ED               [12] 2924 	mov	a,r5
      000DA3 9A               [12] 2925 	subb	a,r2
      000DA4 40 2A            [24] 2926 	jc	00112$
      000DA6 C0 03            [24] 2927 	push	ar3
      000DA8 90 00 EB         [24] 2928 	mov	dptr,#_current_row_location_of_player1
      000DAB E0               [24] 2929 	movx	a,@dptr
      000DAC F9               [12] 2930 	mov	r1,a
      000DAD 7A 00            [12] 2931 	mov	r2,#0x00
      000DAF 74 03            [12] 2932 	mov	a,#0x03
      000DB1 29               [12] 2933 	add	a,r1
      000DB2 F9               [12] 2934 	mov	r1,a
      000DB3 E4               [12] 2935 	clr	a
      000DB4 3A               [12] 2936 	addc	a,r2
      000DB5 FA               [12] 2937 	mov	r2,a
      000DB6 8D 00            [24] 2938 	mov	ar0,r5
      000DB8 7B 00            [12] 2939 	mov	r3,#0x00
      000DBA C3               [12] 2940 	clr	c
      000DBB E9               [12] 2941 	mov	a,r1
      000DBC 98               [12] 2942 	subb	a,r0
      000DBD EA               [12] 2943 	mov	a,r2
      000DBE 64 80            [12] 2944 	xrl	a,#0x80
      000DC0 8B F0            [24] 2945 	mov	b,r3
      000DC2 63 F0 80         [24] 2946 	xrl	b,#0x80
      000DC5 95 F0            [12] 2947 	subb	a,b
      000DC7 D0 03            [24] 2948 	pop	ar3
      000DC9 40 05            [24] 2949 	jc	00112$
      000DCB BE 01 02         [24] 2950 	cjne	r6,#0x01,00161$
      000DCE 80 04            [24] 2951 	sjmp	00113$
      000DD0                       2952 00161$:
      000DD0                       2953 00112$:
      000DD0 7A 00            [12] 2954 	mov	r2,#0x00
      000DD2 80 02            [24] 2955 	sjmp	00114$
      000DD4                       2956 00113$:
      000DD4 7A 01            [12] 2957 	mov	r2,#0x01
      000DD6                       2958 00114$:
                                   2959 ;	dotmatrix.c:442: uint8_t isBallNearPlayer2 = (((current_row_location_of_player2 <= b_x) && ((current_row_location_of_player2 + 3) >= b_x)) && (unit == 4));
      000DD6 90 00 EC         [24] 2960 	mov	dptr,#_current_row_location_of_player2
      000DD9 E0               [24] 2961 	movx	a,@dptr
      000DDA F9               [12] 2962 	mov	r1,a
      000DDB C3               [12] 2963 	clr	c
      000DDC ED               [12] 2964 	mov	a,r5
      000DDD 99               [12] 2965 	subb	a,r1
      000DDE 40 2A            [24] 2966 	jc	00118$
      000DE0 C0 02            [24] 2967 	push	ar2
      000DE2 90 00 EC         [24] 2968 	mov	dptr,#_current_row_location_of_player2
      000DE5 E0               [24] 2969 	movx	a,@dptr
      000DE6 F8               [12] 2970 	mov	r0,a
      000DE7 79 00            [12] 2971 	mov	r1,#0x00
      000DE9 74 03            [12] 2972 	mov	a,#0x03
      000DEB 28               [12] 2973 	add	a,r0
      000DEC F8               [12] 2974 	mov	r0,a
      000DED E4               [12] 2975 	clr	a
      000DEE 39               [12] 2976 	addc	a,r1
      000DEF F9               [12] 2977 	mov	r1,a
      000DF0 8D 02            [24] 2978 	mov	ar2,r5
      000DF2 7D 00            [12] 2979 	mov	r5,#0x00
      000DF4 C3               [12] 2980 	clr	c
      000DF5 E8               [12] 2981 	mov	a,r0
      000DF6 9A               [12] 2982 	subb	a,r2
      000DF7 E9               [12] 2983 	mov	a,r1
      000DF8 64 80            [12] 2984 	xrl	a,#0x80
      000DFA 8D F0            [24] 2985 	mov	b,r5
      000DFC 63 F0 80         [24] 2986 	xrl	b,#0x80
      000DFF 95 F0            [12] 2987 	subb	a,b
      000E01 D0 02            [24] 2988 	pop	ar2
      000E03 40 05            [24] 2989 	jc	00118$
      000E05 BE 04 02         [24] 2990 	cjne	r6,#0x04,00164$
      000E08 80 04            [24] 2991 	sjmp	00119$
      000E0A                       2992 00164$:
      000E0A                       2993 00118$:
      000E0A 7D 00            [12] 2994 	mov	r5,#0x00
      000E0C 80 02            [24] 2995 	sjmp	00120$
      000E0E                       2996 00119$:
      000E0E 7D 01            [12] 2997 	mov	r5,#0x01
      000E10                       2998 00120$:
                                   2999 ;	dotmatrix.c:444: uint8_t data_to_send = ball_y_bitwise;
      000E10 90 00 12         [24] 3000 	mov	dptr,#_erase_ball_data_to_send_65537_89
      000E13 EC               [12] 3001 	mov	a,r4
      000E14 F0               [24] 3002 	movx	@dptr,a
                                   3003 ;	dotmatrix.c:445: if (isBallNearPlayer1)
      000E15 EA               [12] 3004 	mov	a,r2
      000E16 60 09            [24] 3005 	jz	00104$
                                   3006 ;	dotmatrix.c:447: data_to_send |= 0b10000000;
      000E18 90 00 12         [24] 3007 	mov	dptr,#_erase_ball_data_to_send_65537_89
      000E1B 74 80            [12] 3008 	mov	a,#0x80
      000E1D 4C               [12] 3009 	orl	a,r4
      000E1E F0               [24] 3010 	movx	@dptr,a
      000E1F 80 0A            [24] 3011 	sjmp	00105$
      000E21                       3012 00104$:
                                   3013 ;	dotmatrix.c:449: else if (isBallNearPlayer2)
      000E21 ED               [12] 3014 	mov	a,r5
      000E22 60 07            [24] 3015 	jz	00105$
                                   3016 ;	dotmatrix.c:451: data_to_send |= 0b00000001;
      000E24 90 00 12         [24] 3017 	mov	dptr,#_erase_ball_data_to_send_65537_89
      000E27 74 01            [12] 3018 	mov	a,#0x01
      000E29 4C               [12] 3019 	orl	a,r4
      000E2A F0               [24] 3020 	movx	@dptr,a
      000E2B                       3021 00105$:
                                   3022 ;	dotmatrix.c:453: dotmatrix_send(ball_x_range, data_to_send, display, unit);
      000E2B 90 00 12         [24] 3023 	mov	dptr,#_erase_ball_data_to_send_65537_89
      000E2E E0               [24] 3024 	movx	a,@dptr
      000E2F 90 00 08         [24] 3025 	mov	dptr,#_dotmatrix_send_PARM_2
      000E32 F0               [24] 3026 	movx	@dptr,a
      000E33 90 00 09         [24] 3027 	mov	dptr,#_dotmatrix_send_PARM_3
      000E36 EF               [12] 3028 	mov	a,r7
      000E37 F0               [24] 3029 	movx	@dptr,a
      000E38 90 00 0A         [24] 3030 	mov	dptr,#_dotmatrix_send_PARM_4
      000E3B EE               [12] 3031 	mov	a,r6
      000E3C F0               [24] 3032 	movx	@dptr,a
      000E3D 8B 82            [24] 3033 	mov	dpl,r3
                                   3034 ;	dotmatrix.c:455: return;
                                   3035 ;	dotmatrix.c:456: }
      000E3F 02 00 CA         [24] 3036 	ljmp	_dotmatrix_send
                                   3037 ;------------------------------------------------------------
                                   3038 ;Allocation info for local variables in function 'draw_ball'
                                   3039 ;------------------------------------------------------------
                                   3040 ;display                   Allocated with name '_draw_ball_display_65537_93'
                                   3041 ;unit                      Allocated with name '_draw_ball_unit_65537_93'
                                   3042 ;ball_x_range              Allocated with name '_draw_ball_ball_x_range_65537_93'
                                   3043 ;ball_y_range              Allocated with name '_draw_ball_ball_y_range_65537_93'
                                   3044 ;ball_y_bitwise            Allocated with name '_draw_ball_ball_y_bitwise_65537_93'
                                   3045 ;isBallNearPlayer1         Allocated with name '_draw_ball_isBallNearPlayer1_65538_94'
                                   3046 ;isBallNearPlayer2         Allocated with name '_draw_ball_isBallNearPlayer2_65538_94'
                                   3047 ;data_to_send              Allocated with name '_draw_ball_data_to_send_65538_94'
                                   3048 ;------------------------------------------------------------
                                   3049 ;	dotmatrix.c:459: void draw_ball()
                                   3050 ;	-----------------------------------------
                                   3051 ;	 function draw_ball
                                   3052 ;	-----------------------------------------
      000E42                       3053 _draw_ball:
                                   3054 ;	dotmatrix.c:461: increment();
      000E42 12 0F 73         [24] 3055 	lcall	_increment
                                   3056 ;	dotmatrix.c:462: display_t display = get_display(b_x);
      000E45 90 00 EE         [24] 3057 	mov	dptr,#_b_x
      000E48 E0               [24] 3058 	movx	a,@dptr
      000E49 F5 82            [12] 3059 	mov	dpl,a
      000E4B 12 00 A7         [24] 3060 	lcall	_get_display
      000E4E AF 82            [24] 3061 	mov	r7,dpl
                                   3062 ;	dotmatrix.c:463: uint8_t unit = get_unit(b_y);
      000E50 90 00 ED         [24] 3063 	mov	dptr,#_b_y
      000E53 E0               [24] 3064 	movx	a,@dptr
      000E54 F5 82            [12] 3065 	mov	dpl,a
      000E56 C0 07            [24] 3066 	push	ar7
      000E58 12 00 80         [24] 3067 	lcall	_get_unit
      000E5B AE 82            [24] 3068 	mov	r6,dpl
      000E5D D0 07            [24] 3069 	pop	ar7
                                   3070 ;	dotmatrix.c:468: ball_x_range = (b_x & 0x07) ? (b_x & 0x07) : EIGHT;
      000E5F 90 00 EE         [24] 3071 	mov	dptr,#_b_x
      000E62 E0               [24] 3072 	movx	a,@dptr
      000E63 FD               [12] 3073 	mov	r5,a
      000E64 54 07            [12] 3074 	anl	a,#0x07
      000E66 60 09            [24] 3075 	jz	00108$
      000E68 8D 03            [24] 3076 	mov	ar3,r5
      000E6A 53 03 07         [24] 3077 	anl	ar3,#0x07
      000E6D 7C 00            [12] 3078 	mov	r4,#0x00
      000E6F 80 04            [24] 3079 	sjmp	00109$
      000E71                       3080 00108$:
      000E71 7B 08            [12] 3081 	mov	r3,#0x08
      000E73 7C 00            [12] 3082 	mov	r4,#0x00
      000E75                       3083 00109$:
                                   3084 ;	dotmatrix.c:470: ball_y_range = (b_y & 0x07) ? (EIGHT - ((b_y) & 0x07)) : 0;
      000E75 90 00 ED         [24] 3085 	mov	dptr,#_b_y
      000E78 E0               [24] 3086 	movx	a,@dptr
      000E79 FC               [12] 3087 	mov	r4,a
      000E7A 54 07            [12] 3088 	anl	a,#0x07
      000E7C 60 0E            [24] 3089 	jz	00110$
      000E7E 74 07            [12] 3090 	mov	a,#0x07
      000E80 5C               [12] 3091 	anl	a,r4
      000E81 D3               [12] 3092 	setb	c
      000E82 94 08            [12] 3093 	subb	a,#0x08
      000E84 F4               [12] 3094 	cpl	a
      000E85 FA               [12] 3095 	mov	r2,a
      000E86 33               [12] 3096 	rlc	a
      000E87 95 E0            [12] 3097 	subb	a,acc
      000E89 FC               [12] 3098 	mov	r4,a
      000E8A 80 04            [24] 3099 	sjmp	00111$
      000E8C                       3100 00110$:
      000E8C 7A 00            [12] 3101 	mov	r2,#0x00
      000E8E 7C 00            [12] 3102 	mov	r4,#0x00
      000E90                       3103 00111$:
                                   3104 ;	dotmatrix.c:471: ball_y_bitwise = 1 << ball_y_range;
      000E90 8A F0            [24] 3105 	mov	b,r2
      000E92 05 F0            [12] 3106 	inc	b
      000E94 74 01            [12] 3107 	mov	a,#0x01
      000E96 80 02            [24] 3108 	sjmp	00158$
      000E98                       3109 00156$:
      000E98 25 E0            [12] 3110 	add	a,acc
      000E9A                       3111 00158$:
      000E9A D5 F0 FB         [24] 3112 	djnz	b,00156$
      000E9D FC               [12] 3113 	mov	r4,a
                                   3114 ;	dotmatrix.c:474: uint8_t isBallNearPlayer1 = (((current_row_location_of_player1 <= b_x) && ((current_row_location_of_player1 + 3) >= b_x)) && (unit == 1));
      000E9E 90 00 EB         [24] 3115 	mov	dptr,#_current_row_location_of_player1
      000EA1 E0               [24] 3116 	movx	a,@dptr
      000EA2 FA               [12] 3117 	mov	r2,a
      000EA3 C3               [12] 3118 	clr	c
      000EA4 ED               [12] 3119 	mov	a,r5
      000EA5 9A               [12] 3120 	subb	a,r2
      000EA6 40 2A            [24] 3121 	jc	00112$
      000EA8 C0 03            [24] 3122 	push	ar3
      000EAA 90 00 EB         [24] 3123 	mov	dptr,#_current_row_location_of_player1
      000EAD E0               [24] 3124 	movx	a,@dptr
      000EAE F9               [12] 3125 	mov	r1,a
      000EAF 7A 00            [12] 3126 	mov	r2,#0x00
      000EB1 74 03            [12] 3127 	mov	a,#0x03
      000EB3 29               [12] 3128 	add	a,r1
      000EB4 F9               [12] 3129 	mov	r1,a
      000EB5 E4               [12] 3130 	clr	a
      000EB6 3A               [12] 3131 	addc	a,r2
      000EB7 FA               [12] 3132 	mov	r2,a
      000EB8 8D 00            [24] 3133 	mov	ar0,r5
      000EBA 7B 00            [12] 3134 	mov	r3,#0x00
      000EBC C3               [12] 3135 	clr	c
      000EBD E9               [12] 3136 	mov	a,r1
      000EBE 98               [12] 3137 	subb	a,r0
      000EBF EA               [12] 3138 	mov	a,r2
      000EC0 64 80            [12] 3139 	xrl	a,#0x80
      000EC2 8B F0            [24] 3140 	mov	b,r3
      000EC4 63 F0 80         [24] 3141 	xrl	b,#0x80
      000EC7 95 F0            [12] 3142 	subb	a,b
      000EC9 D0 03            [24] 3143 	pop	ar3
      000ECB 40 05            [24] 3144 	jc	00112$
      000ECD BE 01 02         [24] 3145 	cjne	r6,#0x01,00161$
      000ED0 80 04            [24] 3146 	sjmp	00113$
      000ED2                       3147 00161$:
      000ED2                       3148 00112$:
      000ED2 7A 00            [12] 3149 	mov	r2,#0x00
      000ED4 80 02            [24] 3150 	sjmp	00114$
      000ED6                       3151 00113$:
      000ED6 7A 01            [12] 3152 	mov	r2,#0x01
      000ED8                       3153 00114$:
                                   3154 ;	dotmatrix.c:475: uint8_t isBallNearPlayer2 = (((current_row_location_of_player2 <= b_x) && ((current_row_location_of_player2 + 3) >= b_x)) && (unit == 4));
      000ED8 90 00 EC         [24] 3155 	mov	dptr,#_current_row_location_of_player2
      000EDB E0               [24] 3156 	movx	a,@dptr
      000EDC F9               [12] 3157 	mov	r1,a
      000EDD C3               [12] 3158 	clr	c
      000EDE ED               [12] 3159 	mov	a,r5
      000EDF 99               [12] 3160 	subb	a,r1
      000EE0 40 2A            [24] 3161 	jc	00118$
      000EE2 C0 02            [24] 3162 	push	ar2
      000EE4 90 00 EC         [24] 3163 	mov	dptr,#_current_row_location_of_player2
      000EE7 E0               [24] 3164 	movx	a,@dptr
      000EE8 F8               [12] 3165 	mov	r0,a
      000EE9 79 00            [12] 3166 	mov	r1,#0x00
      000EEB 74 03            [12] 3167 	mov	a,#0x03
      000EED 28               [12] 3168 	add	a,r0
      000EEE F8               [12] 3169 	mov	r0,a
      000EEF E4               [12] 3170 	clr	a
      000EF0 39               [12] 3171 	addc	a,r1
      000EF1 F9               [12] 3172 	mov	r1,a
      000EF2 8D 02            [24] 3173 	mov	ar2,r5
      000EF4 7D 00            [12] 3174 	mov	r5,#0x00
      000EF6 C3               [12] 3175 	clr	c
      000EF7 E8               [12] 3176 	mov	a,r0
      000EF8 9A               [12] 3177 	subb	a,r2
      000EF9 E9               [12] 3178 	mov	a,r1
      000EFA 64 80            [12] 3179 	xrl	a,#0x80
      000EFC 8D F0            [24] 3180 	mov	b,r5
      000EFE 63 F0 80         [24] 3181 	xrl	b,#0x80
      000F01 95 F0            [12] 3182 	subb	a,b
      000F03 D0 02            [24] 3183 	pop	ar2
      000F05 40 05            [24] 3184 	jc	00118$
      000F07 BE 04 02         [24] 3185 	cjne	r6,#0x04,00164$
      000F0A 80 04            [24] 3186 	sjmp	00119$
      000F0C                       3187 00164$:
      000F0C                       3188 00118$:
      000F0C 7D 00            [12] 3189 	mov	r5,#0x00
      000F0E 80 02            [24] 3190 	sjmp	00120$
      000F10                       3191 00119$:
      000F10 7D 01            [12] 3192 	mov	r5,#0x01
      000F12                       3193 00120$:
                                   3194 ;	dotmatrix.c:477: uint8_t data_to_send = ball_y_bitwise;
      000F12 90 00 13         [24] 3195 	mov	dptr,#_draw_ball_data_to_send_65538_94
      000F15 EC               [12] 3196 	mov	a,r4
      000F16 F0               [24] 3197 	movx	@dptr,a
                                   3198 ;	dotmatrix.c:478: if (isBallNearPlayer1)
      000F17 EA               [12] 3199 	mov	a,r2
      000F18 60 09            [24] 3200 	jz	00104$
                                   3201 ;	dotmatrix.c:480: data_to_send |= 0b10000000;
      000F1A 90 00 13         [24] 3202 	mov	dptr,#_draw_ball_data_to_send_65538_94
      000F1D 74 80            [12] 3203 	mov	a,#0x80
      000F1F 4C               [12] 3204 	orl	a,r4
      000F20 F0               [24] 3205 	movx	@dptr,a
      000F21 80 0A            [24] 3206 	sjmp	00105$
      000F23                       3207 00104$:
                                   3208 ;	dotmatrix.c:482: else if (isBallNearPlayer2)
      000F23 ED               [12] 3209 	mov	a,r5
      000F24 60 07            [24] 3210 	jz	00105$
                                   3211 ;	dotmatrix.c:484: data_to_send |= 0b00000001;
      000F26 90 00 13         [24] 3212 	mov	dptr,#_draw_ball_data_to_send_65538_94
      000F29 74 01            [12] 3213 	mov	a,#0x01
      000F2B 4C               [12] 3214 	orl	a,r4
      000F2C F0               [24] 3215 	movx	@dptr,a
      000F2D                       3216 00105$:
                                   3217 ;	dotmatrix.c:486: dotmatrix_send(ball_x_range, data_to_send, display, unit);
      000F2D 90 00 13         [24] 3218 	mov	dptr,#_draw_ball_data_to_send_65538_94
      000F30 E0               [24] 3219 	movx	a,@dptr
      000F31 90 00 08         [24] 3220 	mov	dptr,#_dotmatrix_send_PARM_2
      000F34 F0               [24] 3221 	movx	@dptr,a
      000F35 90 00 09         [24] 3222 	mov	dptr,#_dotmatrix_send_PARM_3
      000F38 EF               [12] 3223 	mov	a,r7
      000F39 F0               [24] 3224 	movx	@dptr,a
      000F3A 90 00 0A         [24] 3225 	mov	dptr,#_dotmatrix_send_PARM_4
      000F3D EE               [12] 3226 	mov	a,r6
      000F3E F0               [24] 3227 	movx	@dptr,a
      000F3F 8B 82            [24] 3228 	mov	dpl,r3
                                   3229 ;	dotmatrix.c:488: return;
                                   3230 ;	dotmatrix.c:489: }
      000F41 02 00 CA         [24] 3231 	ljmp	_dotmatrix_send
                                   3232 ;------------------------------------------------------------
                                   3233 ;Allocation info for local variables in function 'ball_y'
                                   3234 ;------------------------------------------------------------
                                   3235 ;	dotmatrix.c:491: uint8_t ball_y(void)
                                   3236 ;	-----------------------------------------
                                   3237 ;	 function ball_y
                                   3238 ;	-----------------------------------------
      000F44                       3239 _ball_y:
                                   3240 ;	dotmatrix.c:493: return (b_y);
      000F44 90 00 ED         [24] 3241 	mov	dptr,#_b_y
      000F47 E0               [24] 3242 	movx	a,@dptr
                                   3243 ;	dotmatrix.c:494: }
      000F48 F5 82            [12] 3244 	mov	dpl,a
      000F4A 22               [24] 3245 	ret
                                   3246 ;------------------------------------------------------------
                                   3247 ;Allocation info for local variables in function 'ball_x'
                                   3248 ;------------------------------------------------------------
                                   3249 ;	dotmatrix.c:496: uint8_t ball_x(void)
                                   3250 ;	-----------------------------------------
                                   3251 ;	 function ball_x
                                   3252 ;	-----------------------------------------
      000F4B                       3253 _ball_x:
                                   3254 ;	dotmatrix.c:498: return (b_x);
      000F4B 90 00 EE         [24] 3255 	mov	dptr,#_b_x
      000F4E E0               [24] 3256 	movx	a,@dptr
                                   3257 ;	dotmatrix.c:499: }
      000F4F F5 82            [12] 3258 	mov	dpl,a
      000F51 22               [24] 3259 	ret
                                   3260 ;------------------------------------------------------------
                                   3261 ;Allocation info for local variables in function 'change_ball'
                                   3262 ;------------------------------------------------------------
                                   3263 ;y                         Allocated with name '_change_ball_PARM_2'
                                   3264 ;x                         Allocated with name '_change_ball_x_65536_101'
                                   3265 ;------------------------------------------------------------
                                   3266 ;	dotmatrix.c:501: void change_ball(uint8_t x, uint8_t y)
                                   3267 ;	-----------------------------------------
                                   3268 ;	 function change_ball
                                   3269 ;	-----------------------------------------
      000F52                       3270 _change_ball:
      000F52 E5 82            [12] 3271 	mov	a,dpl
      000F54 90 00 15         [24] 3272 	mov	dptr,#_change_ball_x_65536_101
      000F57 F0               [24] 3273 	movx	@dptr,a
                                   3274 ;	dotmatrix.c:503: if (x > THIRTY_TWO || y > EIGHT)
      000F58 E0               [24] 3275 	movx	a,@dptr
      000F59 FF               [12] 3276 	mov  r7,a
      000F5A 24 DF            [12] 3277 	add	a,#0xff - 0x20
      000F5C 40 09            [24] 3278 	jc	00101$
      000F5E 90 00 14         [24] 3279 	mov	dptr,#_change_ball_PARM_2
      000F61 E0               [24] 3280 	movx	a,@dptr
      000F62 FE               [12] 3281 	mov  r6,a
      000F63 24 F7            [12] 3282 	add	a,#0xff - 0x08
      000F65 50 01            [24] 3283 	jnc	00102$
      000F67                       3284 00101$:
                                   3285 ;	dotmatrix.c:504: return;
      000F67 22               [24] 3286 	ret
      000F68                       3287 00102$:
                                   3288 ;	dotmatrix.c:505: b_y = x;
      000F68 90 00 ED         [24] 3289 	mov	dptr,#_b_y
      000F6B EF               [12] 3290 	mov	a,r7
      000F6C F0               [24] 3291 	movx	@dptr,a
                                   3292 ;	dotmatrix.c:506: b_x = y;
      000F6D 90 00 EE         [24] 3293 	mov	dptr,#_b_x
      000F70 EE               [12] 3294 	mov	a,r6
      000F71 F0               [24] 3295 	movx	@dptr,a
                                   3296 ;	dotmatrix.c:507: }
      000F72 22               [24] 3297 	ret
                                   3298 ;------------------------------------------------------------
                                   3299 ;Allocation info for local variables in function 'increment'
                                   3300 ;------------------------------------------------------------
                                   3301 ;isBallNearPlayer2         Allocated with name '_increment_isBallNearPlayer2_131073_106'
                                   3302 ;i                         Allocated with name '_increment_i_262145_109'
                                   3303 ;isBallNearPlayer1         Allocated with name '_increment_isBallNearPlayer1_131073_111'
                                   3304 ;i                         Allocated with name '_increment_i_262145_114'
                                   3305 ;------------------------------------------------------------
                                   3306 ;	dotmatrix.c:509: void increment(void)
                                   3307 ;	-----------------------------------------
                                   3308 ;	 function increment
                                   3309 ;	-----------------------------------------
      000F73                       3310 _increment:
                                   3311 ;	dotmatrix.c:511: if (b_y == THIRTY_TWO && direction_y == 1)
      000F73 90 00 ED         [24] 3312 	mov	dptr,#_b_y
      000F76 E0               [24] 3313 	movx	a,@dptr
      000F77 FF               [12] 3314 	mov	r7,a
      000F78 BF 20 02         [24] 3315 	cjne	r7,#0x20,00221$
      000F7B 80 03            [24] 3316 	sjmp	00222$
      000F7D                       3317 00221$:
      000F7D 02 10 14         [24] 3318 	ljmp	00115$
      000F80                       3319 00222$:
      000F80 90 00 F0         [24] 3320 	mov	dptr,#_direction_y
      000F83 E0               [24] 3321 	movx	a,@dptr
      000F84 FE               [12] 3322 	mov	r6,a
      000F85 BE 01 02         [24] 3323 	cjne	r6,#0x01,00223$
      000F88 80 03            [24] 3324 	sjmp	00224$
      000F8A                       3325 00223$:
      000F8A 02 10 14         [24] 3326 	ljmp	00115$
      000F8D                       3327 00224$:
                                   3328 ;	dotmatrix.c:513: direction_y = 0;
      000F8D 90 00 F0         [24] 3329 	mov	dptr,#_direction_y
      000F90 E4               [12] 3330 	clr	a
      000F91 F0               [24] 3331 	movx	@dptr,a
                                   3332 ;	dotmatrix.c:514: uint8_t isBallNearPlayer2 = (((current_row_location_of_player2 <= b_x) && ((current_row_location_of_player2 + 3) >= b_x)));
      000F92 90 00 EC         [24] 3333 	mov	dptr,#_current_row_location_of_player2
      000F95 E0               [24] 3334 	movx	a,@dptr
      000F96 FE               [12] 3335 	mov	r6,a
      000F97 90 00 EE         [24] 3336 	mov	dptr,#_b_x
      000F9A E0               [24] 3337 	movx	a,@dptr
      000F9B FD               [12] 3338 	mov	r5,a
      000F9C C3               [12] 3339 	clr	c
      000F9D 9E               [12] 3340 	subb	a,r6
      000F9E 40 22            [24] 3341 	jc	00141$
      000FA0 90 00 EC         [24] 3342 	mov	dptr,#_current_row_location_of_player2
      000FA3 E0               [24] 3343 	movx	a,@dptr
      000FA4 FE               [12] 3344 	mov	r6,a
      000FA5 7C 00            [12] 3345 	mov	r4,#0x00
      000FA7 74 03            [12] 3346 	mov	a,#0x03
      000FA9 2E               [12] 3347 	add	a,r6
      000FAA FE               [12] 3348 	mov	r6,a
      000FAB E4               [12] 3349 	clr	a
      000FAC 3C               [12] 3350 	addc	a,r4
      000FAD FC               [12] 3351 	mov	r4,a
      000FAE 7B 00            [12] 3352 	mov	r3,#0x00
      000FB0 C3               [12] 3353 	clr	c
      000FB1 EE               [12] 3354 	mov	a,r6
      000FB2 9D               [12] 3355 	subb	a,r5
      000FB3 EC               [12] 3356 	mov	a,r4
      000FB4 64 80            [12] 3357 	xrl	a,#0x80
      000FB6 8B F0            [24] 3358 	mov	b,r3
      000FB8 63 F0 80         [24] 3359 	xrl	b,#0x80
      000FBB 95 F0            [12] 3360 	subb	a,b
      000FBD 40 03            [24] 3361 	jc	00226$
      000FBF 02 10 A7         [24] 3362 	ljmp	00116$
      000FC2                       3363 00226$:
      000FC2                       3364 00141$:
                                   3365 ;	dotmatrix.c:517: if(player_points[PLAYER1] == MAX_SCORE){
      000FC2 90 00 F1         [24] 3366 	mov	dptr,#_player_points
      000FC5 E0               [24] 3367 	movx	a,@dptr
      000FC6 FE               [12] 3368 	mov	r6,a
      000FC7 BE 04 19         [24] 3369 	cjne	r6,#0x04,00102$
                                   3370 ;	dotmatrix.c:518: setGameState(OVER);
      000FCA 75 82 02         [24] 3371 	mov	dpl,#0x02
      000FCD 12 00 74         [24] 3372 	lcall	_setGameState
                                   3373 ;	dotmatrix.c:519: clear_display();
      000FD0 12 12 6A         [24] 3374 	lcall	_clear_display
                                   3375 ;	dotmatrix.c:520: display_explosion(PLAYER1);
      000FD3 75 82 00         [24] 3376 	mov	dpl,#0x00
      000FD6 12 13 3A         [24] 3377 	lcall	_display_explosion
                                   3378 ;	dotmatrix.c:521: player_points[0] = 0;
      000FD9 90 00 F1         [24] 3379 	mov	dptr,#_player_points
      000FDC E4               [12] 3380 	clr	a
      000FDD F0               [24] 3381 	movx	@dptr,a
                                   3382 ;	dotmatrix.c:522: player_points[1] = 0;
      000FDE 90 00 F2         [24] 3383 	mov	dptr,#(_player_points + 0x0001)
      000FE1 F0               [24] 3384 	movx	@dptr,a
                                   3385 ;	dotmatrix.c:523: return;
      000FE2 22               [24] 3386 	ret
      000FE3                       3387 00102$:
                                   3388 ;	dotmatrix.c:525: BUZZER_ON;
                                   3389 ;	assignBit
      000FE3 C2 82            [12] 3390 	clr	_P0_2
                                   3391 ;	dotmatrix.c:526: player_points[PLAYER1] += 1;
      000FE5 0E               [12] 3392 	inc	r6
      000FE6 90 00 F1         [24] 3393 	mov	dptr,#_player_points
      000FE9 EE               [12] 3394 	mov	a,r6
      000FEA F0               [24] 3395 	movx	@dptr,a
                                   3396 ;	dotmatrix.c:527: setGameState(STOP);
      000FEB 75 82 01         [24] 3397 	mov	dpl,#0x01
      000FEE 12 00 74         [24] 3398 	lcall	_setGameState
                                   3399 ;	dotmatrix.c:528: clear_display();
      000FF1 12 12 6A         [24] 3400 	lcall	_clear_display
                                   3401 ;	dotmatrix.c:529: for(int i=0; i<=10;i++);
      000FF4 7D 00            [12] 3402 	mov	r5,#0x00
      000FF6 7E 00            [12] 3403 	mov	r6,#0x00
      000FF8                       3404 00132$:
      000FF8 C3               [12] 3405 	clr	c
      000FF9 74 0A            [12] 3406 	mov	a,#0x0a
      000FFB 9D               [12] 3407 	subb	a,r5
      000FFC 74 80            [12] 3408 	mov	a,#(0x00 ^ 0x80)
      000FFE 8E F0            [24] 3409 	mov	b,r6
      001000 63 F0 80         [24] 3410 	xrl	b,#0x80
      001003 95 F0            [12] 3411 	subb	a,b
      001005 40 07            [24] 3412 	jc	00103$
      001007 0D               [12] 3413 	inc	r5
      001008 BD 00 ED         [24] 3414 	cjne	r5,#0x00,00132$
      00100B 0E               [12] 3415 	inc	r6
      00100C 80 EA            [24] 3416 	sjmp	00132$
      00100E                       3417 00103$:
                                   3418 ;	dotmatrix.c:530: initialize_controller();
      00100E 12 08 21         [24] 3419 	lcall	_initialize_controller
      001011 02 10 A7         [24] 3420 	ljmp	00116$
      001014                       3421 00115$:
                                   3422 ;	dotmatrix.c:533: else if (b_y == 1 && direction_y == 0)
      001014 BF 01 02         [24] 3423 	cjne	r7,#0x01,00231$
      001017 80 03            [24] 3424 	sjmp	00232$
      001019                       3425 00231$:
      001019 02 10 A7         [24] 3426 	ljmp	00116$
      00101C                       3427 00232$:
      00101C 90 00 F0         [24] 3428 	mov	dptr,#_direction_y
      00101F E0               [24] 3429 	movx	a,@dptr
      001020 60 03            [24] 3430 	jz	00233$
      001022 02 10 A7         [24] 3431 	ljmp	00116$
      001025                       3432 00233$:
                                   3433 ;	dotmatrix.c:535: direction_y = 1;
      001025 90 00 F0         [24] 3434 	mov	dptr,#_direction_y
      001028 74 01            [12] 3435 	mov	a,#0x01
      00102A F0               [24] 3436 	movx	@dptr,a
                                   3437 ;	dotmatrix.c:537: uint8_t isBallNearPlayer1 = (((current_row_location_of_player1 <= b_x) && ((current_row_location_of_player1 + 3) >= b_x)));
      00102B 90 00 EB         [24] 3438 	mov	dptr,#_current_row_location_of_player1
      00102E E0               [24] 3439 	movx	a,@dptr
      00102F FF               [12] 3440 	mov	r7,a
      001030 90 00 EE         [24] 3441 	mov	dptr,#_b_x
      001033 E0               [24] 3442 	movx	a,@dptr
      001034 FE               [12] 3443 	mov	r6,a
      001035 C3               [12] 3444 	clr	c
      001036 9F               [12] 3445 	subb	a,r7
      001037 40 1F            [24] 3446 	jc	00144$
      001039 90 00 EB         [24] 3447 	mov	dptr,#_current_row_location_of_player1
      00103C E0               [24] 3448 	movx	a,@dptr
      00103D FF               [12] 3449 	mov	r7,a
      00103E 7D 00            [12] 3450 	mov	r5,#0x00
      001040 74 03            [12] 3451 	mov	a,#0x03
      001042 2F               [12] 3452 	add	a,r7
      001043 FF               [12] 3453 	mov	r7,a
      001044 E4               [12] 3454 	clr	a
      001045 3D               [12] 3455 	addc	a,r5
      001046 FD               [12] 3456 	mov	r5,a
      001047 7C 00            [12] 3457 	mov	r4,#0x00
      001049 C3               [12] 3458 	clr	c
      00104A EF               [12] 3459 	mov	a,r7
      00104B 9E               [12] 3460 	subb	a,r6
      00104C ED               [12] 3461 	mov	a,r5
      00104D 64 80            [12] 3462 	xrl	a,#0x80
      00104F 8C F0            [24] 3463 	mov	b,r4
      001051 63 F0 80         [24] 3464 	xrl	b,#0x80
      001054 95 F0            [12] 3465 	subb	a,b
      001056 50 4F            [24] 3466 	jnc	00116$
      001058                       3467 00144$:
                                   3468 ;	dotmatrix.c:540: if(player_points[PLAYER2] == MAX_SCORE){
      001058 90 00 F2         [24] 3469 	mov	dptr,#(_player_points + 0x0001)
      00105B E0               [24] 3470 	movx	a,@dptr
      00105C FF               [12] 3471 	mov	r7,a
      00105D BF 04 19         [24] 3472 	cjne	r7,#0x04,00107$
                                   3473 ;	dotmatrix.c:541: clear_display();
      001060 12 12 6A         [24] 3474 	lcall	_clear_display
                                   3475 ;	dotmatrix.c:542: display_explosion(PLAYER2);
      001063 75 82 01         [24] 3476 	mov	dpl,#0x01
      001066 12 13 3A         [24] 3477 	lcall	_display_explosion
                                   3478 ;	dotmatrix.c:543: setGameState(OVER);
      001069 75 82 02         [24] 3479 	mov	dpl,#0x02
      00106C 12 00 74         [24] 3480 	lcall	_setGameState
                                   3481 ;	dotmatrix.c:544: player_points[0] = 0;
      00106F 90 00 F1         [24] 3482 	mov	dptr,#_player_points
      001072 E4               [12] 3483 	clr	a
      001073 F0               [24] 3484 	movx	@dptr,a
                                   3485 ;	dotmatrix.c:545: player_points[1] = 0;
      001074 90 00 F2         [24] 3486 	mov	dptr,#(_player_points + 0x0001)
      001077 F0               [24] 3487 	movx	@dptr,a
                                   3488 ;	dotmatrix.c:546: return;
      001078 22               [24] 3489 	ret
      001079                       3490 00107$:
                                   3491 ;	dotmatrix.c:548: BUZZER_ON;
                                   3492 ;	assignBit
      001079 C2 82            [12] 3493 	clr	_P0_2
                                   3494 ;	dotmatrix.c:549: player_points[PLAYER2] += 1;
      00107B 0F               [12] 3495 	inc	r7
      00107C 90 00 F2         [24] 3496 	mov	dptr,#(_player_points + 0x0001)
      00107F EF               [12] 3497 	mov	a,r7
      001080 F0               [24] 3498 	movx	@dptr,a
                                   3499 ;	dotmatrix.c:550: setGameState(STOP);
      001081 75 82 01         [24] 3500 	mov	dpl,#0x01
      001084 12 00 74         [24] 3501 	lcall	_setGameState
                                   3502 ;	dotmatrix.c:551: clear_display();
      001087 12 12 6A         [24] 3503 	lcall	_clear_display
                                   3504 ;	dotmatrix.c:552: for(int i=0; i<=10;i++);
      00108A 7E 00            [12] 3505 	mov	r6,#0x00
      00108C 7F 00            [12] 3506 	mov	r7,#0x00
      00108E                       3507 00135$:
      00108E C3               [12] 3508 	clr	c
      00108F 74 0A            [12] 3509 	mov	a,#0x0a
      001091 9E               [12] 3510 	subb	a,r6
      001092 74 80            [12] 3511 	mov	a,#(0x00 ^ 0x80)
      001094 8F F0            [24] 3512 	mov	b,r7
      001096 63 F0 80         [24] 3513 	xrl	b,#0x80
      001099 95 F0            [12] 3514 	subb	a,b
      00109B 40 07            [24] 3515 	jc	00108$
      00109D 0E               [12] 3516 	inc	r6
      00109E BE 00 ED         [24] 3517 	cjne	r6,#0x00,00135$
      0010A1 0F               [12] 3518 	inc	r7
      0010A2 80 EA            [24] 3519 	sjmp	00135$
      0010A4                       3520 00108$:
                                   3521 ;	dotmatrix.c:553: initialize_controller();
      0010A4 12 08 21         [24] 3522 	lcall	_initialize_controller
      0010A7                       3523 00116$:
                                   3524 ;	dotmatrix.c:557: if (direction_y == 1)
      0010A7 90 00 F0         [24] 3525 	mov	dptr,#_direction_y
      0010AA E0               [24] 3526 	movx	a,@dptr
      0010AB FF               [12] 3527 	mov	r7,a
      0010AC BF 01 09         [24] 3528 	cjne	r7,#0x01,00119$
                                   3529 ;	dotmatrix.c:558: b_y++;
      0010AF 90 00 ED         [24] 3530 	mov	dptr,#_b_y
      0010B2 E0               [24] 3531 	movx	a,@dptr
      0010B3 24 01            [12] 3532 	add	a,#0x01
      0010B5 F0               [24] 3533 	movx	@dptr,a
      0010B6 80 06            [24] 3534 	sjmp	00120$
      0010B8                       3535 00119$:
                                   3536 ;	dotmatrix.c:560: b_y--;
      0010B8 90 00 ED         [24] 3537 	mov	dptr,#_b_y
      0010BB E0               [24] 3538 	movx	a,@dptr
      0010BC 14               [12] 3539 	dec	a
      0010BD F0               [24] 3540 	movx	@dptr,a
      0010BE                       3541 00120$:
                                   3542 ;	dotmatrix.c:562: if (b_x == SIXTEEN && direction_x == 1)
      0010BE 90 00 EE         [24] 3543 	mov	dptr,#_b_x
      0010C1 E0               [24] 3544 	movx	a,@dptr
      0010C2 FF               [12] 3545 	mov	r7,a
      0010C3 BF 10 0F         [24] 3546 	cjne	r7,#0x10,00125$
      0010C6 90 00 EF         [24] 3547 	mov	dptr,#_direction_x
      0010C9 E0               [24] 3548 	movx	a,@dptr
      0010CA FE               [12] 3549 	mov	r6,a
      0010CB BE 01 07         [24] 3550 	cjne	r6,#0x01,00125$
                                   3551 ;	dotmatrix.c:563: direction_x = 0;
      0010CE 90 00 EF         [24] 3552 	mov	dptr,#_direction_x
      0010D1 E4               [12] 3553 	clr	a
      0010D2 F0               [24] 3554 	movx	@dptr,a
      0010D3 80 0F            [24] 3555 	sjmp	00126$
      0010D5                       3556 00125$:
                                   3557 ;	dotmatrix.c:564: else if (b_x == 1 && direction_x == 0)
      0010D5 BF 01 0C         [24] 3558 	cjne	r7,#0x01,00126$
      0010D8 90 00 EF         [24] 3559 	mov	dptr,#_direction_x
      0010DB E0               [24] 3560 	movx	a,@dptr
      0010DC 70 06            [24] 3561 	jnz	00126$
                                   3562 ;	dotmatrix.c:565: direction_x = 1;
      0010DE 90 00 EF         [24] 3563 	mov	dptr,#_direction_x
      0010E1 74 01            [12] 3564 	mov	a,#0x01
      0010E3 F0               [24] 3565 	movx	@dptr,a
      0010E4                       3566 00126$:
                                   3567 ;	dotmatrix.c:567: if (direction_x == 1)
      0010E4 90 00 EF         [24] 3568 	mov	dptr,#_direction_x
      0010E7 E0               [24] 3569 	movx	a,@dptr
      0010E8 FE               [12] 3570 	mov	r6,a
      0010E9 BE 01 07         [24] 3571 	cjne	r6,#0x01,00129$
                                   3572 ;	dotmatrix.c:568: b_x++;
      0010EC 90 00 EE         [24] 3573 	mov	dptr,#_b_x
      0010EF EF               [12] 3574 	mov	a,r7
      0010F0 04               [12] 3575 	inc	a
      0010F1 F0               [24] 3576 	movx	@dptr,a
      0010F2 22               [24] 3577 	ret
      0010F3                       3578 00129$:
                                   3579 ;	dotmatrix.c:570: b_x--;
      0010F3 EF               [12] 3580 	mov	a,r7
      0010F4 14               [12] 3581 	dec	a
      0010F5 90 00 EE         [24] 3582 	mov	dptr,#_b_x
      0010F8 F0               [24] 3583 	movx	@dptr,a
                                   3584 ;	dotmatrix.c:571: }
      0010F9 22               [24] 3585 	ret
                                   3586 ;------------------------------------------------------------
                                   3587 ;Allocation info for local variables in function 'display_explosion_pattern'
                                   3588 ;------------------------------------------------------------
                                   3589 ;sloc0                     Allocated with name '_display_explosion_pattern_sloc0_1_0'
                                   3590 ;sloc1                     Allocated with name '_display_explosion_pattern_sloc1_1_0'
                                   3591 ;sloc2                     Allocated with name '_display_explosion_pattern_sloc2_1_0'
                                   3592 ;pattern                   Allocated with name '_display_explosion_pattern_pattern_65536_115'
                                   3593 ;unit                      Allocated with name '_display_explosion_pattern_unit_131072_117'
                                   3594 ;row                       Allocated with name '_display_explosion_pattern_row_262144_119'
                                   3595 ;------------------------------------------------------------
                                   3596 ;	dotmatrix.c:573: void display_explosion_pattern(uint8_t pattern[2][8])
                                   3597 ;	-----------------------------------------
                                   3598 ;	 function display_explosion_pattern
                                   3599 ;	-----------------------------------------
      0010FA                       3600 _display_explosion_pattern:
      0010FA AF F0            [24] 3601 	mov	r7,b
      0010FC AE 83            [24] 3602 	mov	r6,dph
      0010FE E5 82            [12] 3603 	mov	a,dpl
      001100 90 00 16         [24] 3604 	mov	dptr,#_display_explosion_pattern_pattern_65536_115
      001103 F0               [24] 3605 	movx	@dptr,a
      001104 EE               [12] 3606 	mov	a,r6
      001105 A3               [24] 3607 	inc	dptr
      001106 F0               [24] 3608 	movx	@dptr,a
      001107 EF               [12] 3609 	mov	a,r7
      001108 A3               [24] 3610 	inc	dptr
      001109 F0               [24] 3611 	movx	@dptr,a
                                   3612 ;	dotmatrix.c:575: for (int unit = 1; unit <= 4; unit++)
      00110A 90 00 16         [24] 3613 	mov	dptr,#_display_explosion_pattern_pattern_65536_115
      00110D E0               [24] 3614 	movx	a,@dptr
      00110E FD               [12] 3615 	mov	r5,a
      00110F A3               [24] 3616 	inc	dptr
      001110 E0               [24] 3617 	movx	a,@dptr
      001111 FE               [12] 3618 	mov	r6,a
      001112 A3               [24] 3619 	inc	dptr
      001113 E0               [24] 3620 	movx	a,@dptr
      001114 FF               [12] 3621 	mov	r7,a
      001115 74 08            [12] 3622 	mov	a,#0x08
      001117 2D               [12] 3623 	add	a,r5
      001118 F5 0E            [12] 3624 	mov	_display_explosion_pattern_sloc2_1_0,a
      00111A E4               [12] 3625 	clr	a
      00111B 3E               [12] 3626 	addc	a,r6
      00111C F5 0F            [12] 3627 	mov	(_display_explosion_pattern_sloc2_1_0 + 1),a
      00111E 8F 10            [24] 3628 	mov	(_display_explosion_pattern_sloc2_1_0 + 2),r7
      001120 78 01            [12] 3629 	mov	r0,#0x01
      001122 79 00            [12] 3630 	mov	r1,#0x00
      001124                       3631 00107$:
      001124 C3               [12] 3632 	clr	c
      001125 74 04            [12] 3633 	mov	a,#0x04
      001127 98               [12] 3634 	subb	a,r0
      001128 74 80            [12] 3635 	mov	a,#(0x00 ^ 0x80)
      00112A 89 F0            [24] 3636 	mov	b,r1
      00112C 63 F0 80         [24] 3637 	xrl	b,#0x80
      00112F 95 F0            [12] 3638 	subb	a,b
      001131 50 01            [24] 3639 	jnc	00129$
      001133 22               [24] 3640 	ret
      001134                       3641 00129$:
                                   3642 ;	dotmatrix.c:577: for (int row = 0; row < 8; row++)
      001134 88 0A            [24] 3643 	mov	_display_explosion_pattern_sloc0_1_0,r0
      001136 89 0B            [24] 3644 	mov	(_display_explosion_pattern_sloc0_1_0 + 1),r1
      001138 E4               [12] 3645 	clr	a
      001139 F5 0C            [12] 3646 	mov	_display_explosion_pattern_sloc1_1_0,a
      00113B F5 0D            [12] 3647 	mov	(_display_explosion_pattern_sloc1_1_0 + 1),a
      00113D                       3648 00104$:
      00113D C3               [12] 3649 	clr	c
      00113E E5 0C            [12] 3650 	mov	a,_display_explosion_pattern_sloc1_1_0
      001140 94 08            [12] 3651 	subb	a,#0x08
      001142 E5 0D            [12] 3652 	mov	a,(_display_explosion_pattern_sloc1_1_0 + 1)
      001144 64 80            [12] 3653 	xrl	a,#0x80
      001146 94 80            [12] 3654 	subb	a,#0x80
      001148 40 03            [24] 3655 	jc	00130$
      00114A 02 11 E3         [24] 3656 	ljmp	00108$
      00114D                       3657 00130$:
                                   3658 ;	dotmatrix.c:579: dotmatrix_send(row + 1, pattern[0][row], DISPLAY1, unit);
      00114D C0 00            [24] 3659 	push	ar0
      00114F C0 01            [24] 3660 	push	ar1
      001151 A9 0C            [24] 3661 	mov	r1,_display_explosion_pattern_sloc1_1_0
      001153 09               [12] 3662 	inc	r1
      001154 E5 0C            [12] 3663 	mov	a,_display_explosion_pattern_sloc1_1_0
      001156 2D               [12] 3664 	add	a,r5
      001157 F8               [12] 3665 	mov	r0,a
      001158 E5 0D            [12] 3666 	mov	a,(_display_explosion_pattern_sloc1_1_0 + 1)
      00115A 3E               [12] 3667 	addc	a,r6
      00115B FB               [12] 3668 	mov	r3,a
      00115C 8F 04            [24] 3669 	mov	ar4,r7
      00115E 88 82            [24] 3670 	mov	dpl,r0
      001160 8B 83            [24] 3671 	mov	dph,r3
      001162 8C F0            [24] 3672 	mov	b,r4
      001164 12 25 67         [24] 3673 	lcall	__gptrget
      001167 F8               [12] 3674 	mov	r0,a
      001168 AC 0A            [24] 3675 	mov	r4,_display_explosion_pattern_sloc0_1_0
      00116A 90 00 08         [24] 3676 	mov	dptr,#_dotmatrix_send_PARM_2
      00116D E8               [12] 3677 	mov	a,r0
      00116E F0               [24] 3678 	movx	@dptr,a
      00116F 90 00 09         [24] 3679 	mov	dptr,#_dotmatrix_send_PARM_3
      001172 E4               [12] 3680 	clr	a
      001173 F0               [24] 3681 	movx	@dptr,a
      001174 90 00 0A         [24] 3682 	mov	dptr,#_dotmatrix_send_PARM_4
      001177 EC               [12] 3683 	mov	a,r4
      001178 F0               [24] 3684 	movx	@dptr,a
      001179 89 82            [24] 3685 	mov	dpl,r1
      00117B C0 07            [24] 3686 	push	ar7
      00117D C0 06            [24] 3687 	push	ar6
      00117F C0 05            [24] 3688 	push	ar5
      001181 C0 04            [24] 3689 	push	ar4
      001183 C0 01            [24] 3690 	push	ar1
      001185 C0 00            [24] 3691 	push	ar0
      001187 12 00 CA         [24] 3692 	lcall	_dotmatrix_send
      00118A D0 00            [24] 3693 	pop	ar0
      00118C D0 01            [24] 3694 	pop	ar1
      00118E D0 04            [24] 3695 	pop	ar4
      001190 D0 05            [24] 3696 	pop	ar5
      001192 D0 06            [24] 3697 	pop	ar6
      001194 D0 07            [24] 3698 	pop	ar7
                                   3699 ;	dotmatrix.c:580: dotmatrix_send(row + 1, pattern[1][row], DISPLAY2, unit);
      001196 E5 0C            [12] 3700 	mov	a,_display_explosion_pattern_sloc1_1_0
      001198 25 0E            [12] 3701 	add	a,_display_explosion_pattern_sloc2_1_0
      00119A F8               [12] 3702 	mov	r0,a
      00119B E5 0D            [12] 3703 	mov	a,(_display_explosion_pattern_sloc1_1_0 + 1)
      00119D 35 0F            [12] 3704 	addc	a,(_display_explosion_pattern_sloc2_1_0 + 1)
      00119F FA               [12] 3705 	mov	r2,a
      0011A0 AB 10            [24] 3706 	mov	r3,(_display_explosion_pattern_sloc2_1_0 + 2)
      0011A2 88 82            [24] 3707 	mov	dpl,r0
      0011A4 8A 83            [24] 3708 	mov	dph,r2
      0011A6 8B F0            [24] 3709 	mov	b,r3
      0011A8 12 25 67         [24] 3710 	lcall	__gptrget
      0011AB F8               [12] 3711 	mov	r0,a
      0011AC 90 00 08         [24] 3712 	mov	dptr,#_dotmatrix_send_PARM_2
      0011AF F0               [24] 3713 	movx	@dptr,a
      0011B0 90 00 09         [24] 3714 	mov	dptr,#_dotmatrix_send_PARM_3
      0011B3 74 01            [12] 3715 	mov	a,#0x01
      0011B5 F0               [24] 3716 	movx	@dptr,a
      0011B6 90 00 0A         [24] 3717 	mov	dptr,#_dotmatrix_send_PARM_4
      0011B9 EC               [12] 3718 	mov	a,r4
      0011BA F0               [24] 3719 	movx	@dptr,a
      0011BB 89 82            [24] 3720 	mov	dpl,r1
      0011BD C0 07            [24] 3721 	push	ar7
      0011BF C0 06            [24] 3722 	push	ar6
      0011C1 C0 05            [24] 3723 	push	ar5
      0011C3 C0 01            [24] 3724 	push	ar1
      0011C5 C0 00            [24] 3725 	push	ar0
      0011C7 12 00 CA         [24] 3726 	lcall	_dotmatrix_send
      0011CA D0 00            [24] 3727 	pop	ar0
      0011CC D0 01            [24] 3728 	pop	ar1
      0011CE D0 05            [24] 3729 	pop	ar5
      0011D0 D0 06            [24] 3730 	pop	ar6
      0011D2 D0 07            [24] 3731 	pop	ar7
                                   3732 ;	dotmatrix.c:577: for (int row = 0; row < 8; row++)
      0011D4 05 0C            [12] 3733 	inc	_display_explosion_pattern_sloc1_1_0
      0011D6 E4               [12] 3734 	clr	a
      0011D7 B5 0C 02         [24] 3735 	cjne	a,_display_explosion_pattern_sloc1_1_0,00131$
      0011DA 05 0D            [12] 3736 	inc	(_display_explosion_pattern_sloc1_1_0 + 1)
      0011DC                       3737 00131$:
      0011DC D0 01            [24] 3738 	pop	ar1
      0011DE D0 00            [24] 3739 	pop	ar0
      0011E0 02 11 3D         [24] 3740 	ljmp	00104$
      0011E3                       3741 00108$:
                                   3742 ;	dotmatrix.c:575: for (int unit = 1; unit <= 4; unit++)
      0011E3 08               [12] 3743 	inc	r0
      0011E4 B8 00 01         [24] 3744 	cjne	r0,#0x00,00132$
      0011E7 09               [12] 3745 	inc	r1
      0011E8                       3746 00132$:
                                   3747 ;	dotmatrix.c:583: }
      0011E8 02 11 24         [24] 3748 	ljmp	00107$
                                   3749 ;------------------------------------------------------------
                                   3750 ;Allocation info for local variables in function 'display_character'
                                   3751 ;------------------------------------------------------------
                                   3752 ;sloc0                     Allocated with name '_display_character_sloc0_1_0'
                                   3753 ;sloc1                     Allocated with name '_display_character_sloc1_1_0'
                                   3754 ;sloc2                     Allocated with name '_display_character_sloc2_1_0'
                                   3755 ;unit                      Allocated with name '_display_character_PARM_2'
                                   3756 ;display                   Allocated with name '_display_character_PARM_3'
                                   3757 ;character                 Allocated with name '_display_character_character_65536_121'
                                   3758 ;i                         Allocated with name '_display_character_i_131072_123'
                                   3759 ;------------------------------------------------------------
                                   3760 ;	dotmatrix.c:585: void display_character(uint8_t *character, uint8_t unit, display_t display)
                                   3761 ;	-----------------------------------------
                                   3762 ;	 function display_character
                                   3763 ;	-----------------------------------------
      0011EB                       3764 _display_character:
      0011EB AF F0            [24] 3765 	mov	r7,b
      0011ED AE 83            [24] 3766 	mov	r6,dph
      0011EF E5 82            [12] 3767 	mov	a,dpl
      0011F1 90 00 1B         [24] 3768 	mov	dptr,#_display_character_character_65536_121
      0011F4 F0               [24] 3769 	movx	@dptr,a
      0011F5 EE               [12] 3770 	mov	a,r6
      0011F6 A3               [24] 3771 	inc	dptr
      0011F7 F0               [24] 3772 	movx	@dptr,a
      0011F8 EF               [12] 3773 	mov	a,r7
      0011F9 A3               [24] 3774 	inc	dptr
      0011FA F0               [24] 3775 	movx	@dptr,a
                                   3776 ;	dotmatrix.c:587: for (int i = 0; i < 8; i++)
      0011FB 90 00 1B         [24] 3777 	mov	dptr,#_display_character_character_65536_121
      0011FE E0               [24] 3778 	movx	a,@dptr
      0011FF FD               [12] 3779 	mov	r5,a
      001200 A3               [24] 3780 	inc	dptr
      001201 E0               [24] 3781 	movx	a,@dptr
      001202 FE               [12] 3782 	mov	r6,a
      001203 A3               [24] 3783 	inc	dptr
      001204 E0               [24] 3784 	movx	a,@dptr
      001205 FF               [12] 3785 	mov	r7,a
      001206 90 00 1A         [24] 3786 	mov	dptr,#_display_character_PARM_3
      001209 E0               [24] 3787 	movx	a,@dptr
      00120A F5 12            [12] 3788 	mov	_display_character_sloc1_1_0,a
      00120C 90 00 19         [24] 3789 	mov	dptr,#_display_character_PARM_2
      00120F E0               [24] 3790 	movx	a,@dptr
      001210 F5 11            [12] 3791 	mov	_display_character_sloc0_1_0,a
      001212 79 00            [12] 3792 	mov	r1,#0x00
      001214 7A 00            [12] 3793 	mov	r2,#0x00
      001216                       3794 00103$:
      001216 C3               [12] 3795 	clr	c
      001217 E9               [12] 3796 	mov	a,r1
      001218 94 08            [12] 3797 	subb	a,#0x08
      00121A EA               [12] 3798 	mov	a,r2
      00121B 64 80            [12] 3799 	xrl	a,#0x80
      00121D 94 80            [12] 3800 	subb	a,#0x80
      00121F 50 48            [24] 3801 	jnc	00105$
                                   3802 ;	dotmatrix.c:589: dotmatrix_send(i + 1, character[i], display, unit);
      001221 89 00            [24] 3803 	mov	ar0,r1
      001223 E8               [12] 3804 	mov	a,r0
      001224 04               [12] 3805 	inc	a
      001225 F5 13            [12] 3806 	mov	_display_character_sloc2_1_0,a
      001227 E9               [12] 3807 	mov	a,r1
      001228 2D               [12] 3808 	add	a,r5
      001229 F8               [12] 3809 	mov	r0,a
      00122A EA               [12] 3810 	mov	a,r2
      00122B 3E               [12] 3811 	addc	a,r6
      00122C FB               [12] 3812 	mov	r3,a
      00122D 8F 04            [24] 3813 	mov	ar4,r7
      00122F 88 82            [24] 3814 	mov	dpl,r0
      001231 8B 83            [24] 3815 	mov	dph,r3
      001233 8C F0            [24] 3816 	mov	b,r4
      001235 12 25 67         [24] 3817 	lcall	__gptrget
      001238 90 00 08         [24] 3818 	mov	dptr,#_dotmatrix_send_PARM_2
      00123B F0               [24] 3819 	movx	@dptr,a
      00123C 90 00 09         [24] 3820 	mov	dptr,#_dotmatrix_send_PARM_3
      00123F E5 12            [12] 3821 	mov	a,_display_character_sloc1_1_0
      001241 F0               [24] 3822 	movx	@dptr,a
      001242 90 00 0A         [24] 3823 	mov	dptr,#_dotmatrix_send_PARM_4
      001245 E5 11            [12] 3824 	mov	a,_display_character_sloc0_1_0
      001247 F0               [24] 3825 	movx	@dptr,a
      001248 85 13 82         [24] 3826 	mov	dpl,_display_character_sloc2_1_0
      00124B C0 07            [24] 3827 	push	ar7
      00124D C0 06            [24] 3828 	push	ar6
      00124F C0 05            [24] 3829 	push	ar5
      001251 C0 02            [24] 3830 	push	ar2
      001253 C0 01            [24] 3831 	push	ar1
      001255 12 00 CA         [24] 3832 	lcall	_dotmatrix_send
      001258 D0 01            [24] 3833 	pop	ar1
      00125A D0 02            [24] 3834 	pop	ar2
      00125C D0 05            [24] 3835 	pop	ar5
      00125E D0 06            [24] 3836 	pop	ar6
      001260 D0 07            [24] 3837 	pop	ar7
                                   3838 ;	dotmatrix.c:587: for (int i = 0; i < 8; i++)
      001262 09               [12] 3839 	inc	r1
      001263 B9 00 B0         [24] 3840 	cjne	r1,#0x00,00103$
      001266 0A               [12] 3841 	inc	r2
      001267 80 AD            [24] 3842 	sjmp	00103$
      001269                       3843 00105$:
                                   3844 ;	dotmatrix.c:591: }
      001269 22               [24] 3845 	ret
                                   3846 ;------------------------------------------------------------
                                   3847 ;Allocation info for local variables in function 'clear_display'
                                   3848 ;------------------------------------------------------------
                                   3849 ;unit                      Allocated with name '_clear_display_unit_131072_126'
                                   3850 ;row                       Allocated with name '_clear_display_row_262144_128'
                                   3851 ;unit                      Allocated with name '_clear_display_unit_131072_130'
                                   3852 ;row                       Allocated with name '_clear_display_row_262144_132'
                                   3853 ;------------------------------------------------------------
                                   3854 ;	dotmatrix.c:593: void clear_display(){
                                   3855 ;	-----------------------------------------
                                   3856 ;	 function clear_display
                                   3857 ;	-----------------------------------------
      00126A                       3858 _clear_display:
                                   3859 ;	dotmatrix.c:594: for (int unit = 1; unit <= 4; unit++)
      00126A 7E 01            [12] 3860 	mov	r6,#0x01
      00126C 7F 00            [12] 3861 	mov	r7,#0x00
      00126E                       3862 00109$:
      00126E C3               [12] 3863 	clr	c
      00126F 74 04            [12] 3864 	mov	a,#0x04
      001271 9E               [12] 3865 	subb	a,r6
      001272 74 80            [12] 3866 	mov	a,#(0x00 ^ 0x80)
      001274 8F F0            [24] 3867 	mov	b,r7
      001276 63 F0 80         [24] 3868 	xrl	b,#0x80
      001279 95 F0            [12] 3869 	subb	a,b
      00127B 40 54            [24] 3870 	jc	00102$
                                   3871 ;	dotmatrix.c:596: for (int row = 1; row <= EIGHT; row++)
      00127D 8E 04            [24] 3872 	mov	ar4,r6
      00127F 8F 05            [24] 3873 	mov	ar5,r7
      001281 7A 01            [12] 3874 	mov	r2,#0x01
      001283 7B 00            [12] 3875 	mov	r3,#0x00
      001285                       3876 00106$:
      001285 C3               [12] 3877 	clr	c
      001286 74 08            [12] 3878 	mov	a,#0x08
      001288 9A               [12] 3879 	subb	a,r2
      001289 74 80            [12] 3880 	mov	a,#(0x00 ^ 0x80)
      00128B 8B F0            [24] 3881 	mov	b,r3
      00128D 63 F0 80         [24] 3882 	xrl	b,#0x80
      001290 95 F0            [12] 3883 	subb	a,b
      001292 40 36            [24] 3884 	jc	00110$
                                   3885 ;	dotmatrix.c:598: dotmatrix_send(row, ZERO, DISPLAY1, unit);
      001294 8A 01            [24] 3886 	mov	ar1,r2
      001296 8C 00            [24] 3887 	mov	ar0,r4
      001298 90 00 08         [24] 3888 	mov	dptr,#_dotmatrix_send_PARM_2
      00129B E4               [12] 3889 	clr	a
      00129C F0               [24] 3890 	movx	@dptr,a
      00129D 90 00 09         [24] 3891 	mov	dptr,#_dotmatrix_send_PARM_3
      0012A0 F0               [24] 3892 	movx	@dptr,a
      0012A1 90 00 0A         [24] 3893 	mov	dptr,#_dotmatrix_send_PARM_4
      0012A4 E8               [12] 3894 	mov	a,r0
      0012A5 F0               [24] 3895 	movx	@dptr,a
      0012A6 89 82            [24] 3896 	mov	dpl,r1
      0012A8 C0 07            [24] 3897 	push	ar7
      0012AA C0 06            [24] 3898 	push	ar6
      0012AC C0 05            [24] 3899 	push	ar5
      0012AE C0 04            [24] 3900 	push	ar4
      0012B0 C0 03            [24] 3901 	push	ar3
      0012B2 C0 02            [24] 3902 	push	ar2
      0012B4 12 00 CA         [24] 3903 	lcall	_dotmatrix_send
      0012B7 D0 02            [24] 3904 	pop	ar2
      0012B9 D0 03            [24] 3905 	pop	ar3
      0012BB D0 04            [24] 3906 	pop	ar4
      0012BD D0 05            [24] 3907 	pop	ar5
      0012BF D0 06            [24] 3908 	pop	ar6
      0012C1 D0 07            [24] 3909 	pop	ar7
                                   3910 ;	dotmatrix.c:596: for (int row = 1; row <= EIGHT; row++)
      0012C3 0A               [12] 3911 	inc	r2
      0012C4 BA 00 BE         [24] 3912 	cjne	r2,#0x00,00106$
      0012C7 0B               [12] 3913 	inc	r3
      0012C8 80 BB            [24] 3914 	sjmp	00106$
      0012CA                       3915 00110$:
                                   3916 ;	dotmatrix.c:594: for (int unit = 1; unit <= 4; unit++)
      0012CA 0E               [12] 3917 	inc	r6
      0012CB BE 00 A0         [24] 3918 	cjne	r6,#0x00,00109$
      0012CE 0F               [12] 3919 	inc	r7
      0012CF 80 9D            [24] 3920 	sjmp	00109$
      0012D1                       3921 00102$:
                                   3922 ;	dotmatrix.c:602: for (int unit = 1; unit <= 4; unit++)
      0012D1 7E 01            [12] 3923 	mov	r6,#0x01
      0012D3 7F 00            [12] 3924 	mov	r7,#0x00
      0012D5                       3925 00115$:
      0012D5 C3               [12] 3926 	clr	c
      0012D6 74 04            [12] 3927 	mov	a,#0x04
      0012D8 9E               [12] 3928 	subb	a,r6
      0012D9 74 80            [12] 3929 	mov	a,#(0x00 ^ 0x80)
      0012DB 8F F0            [24] 3930 	mov	b,r7
      0012DD 63 F0 80         [24] 3931 	xrl	b,#0x80
      0012E0 95 F0            [12] 3932 	subb	a,b
      0012E2 40 55            [24] 3933 	jc	00117$
                                   3934 ;	dotmatrix.c:604: for (int row = 1; row <= EIGHT; row++)
      0012E4 8E 04            [24] 3935 	mov	ar4,r6
      0012E6 8F 05            [24] 3936 	mov	ar5,r7
      0012E8 7A 01            [12] 3937 	mov	r2,#0x01
      0012EA 7B 00            [12] 3938 	mov	r3,#0x00
      0012EC                       3939 00112$:
      0012EC C3               [12] 3940 	clr	c
      0012ED 74 08            [12] 3941 	mov	a,#0x08
      0012EF 9A               [12] 3942 	subb	a,r2
      0012F0 74 80            [12] 3943 	mov	a,#(0x00 ^ 0x80)
      0012F2 8B F0            [24] 3944 	mov	b,r3
      0012F4 63 F0 80         [24] 3945 	xrl	b,#0x80
      0012F7 95 F0            [12] 3946 	subb	a,b
      0012F9 40 37            [24] 3947 	jc	00116$
                                   3948 ;	dotmatrix.c:606: dotmatrix_send(row, ZERO, DISPLAY2, unit);
      0012FB 8A 01            [24] 3949 	mov	ar1,r2
      0012FD 8C 00            [24] 3950 	mov	ar0,r4
      0012FF 90 00 08         [24] 3951 	mov	dptr,#_dotmatrix_send_PARM_2
      001302 E4               [12] 3952 	clr	a
      001303 F0               [24] 3953 	movx	@dptr,a
      001304 90 00 09         [24] 3954 	mov	dptr,#_dotmatrix_send_PARM_3
      001307 04               [12] 3955 	inc	a
      001308 F0               [24] 3956 	movx	@dptr,a
      001309 90 00 0A         [24] 3957 	mov	dptr,#_dotmatrix_send_PARM_4
      00130C E8               [12] 3958 	mov	a,r0
      00130D F0               [24] 3959 	movx	@dptr,a
      00130E 89 82            [24] 3960 	mov	dpl,r1
      001310 C0 07            [24] 3961 	push	ar7
      001312 C0 06            [24] 3962 	push	ar6
      001314 C0 05            [24] 3963 	push	ar5
      001316 C0 04            [24] 3964 	push	ar4
      001318 C0 03            [24] 3965 	push	ar3
      00131A C0 02            [24] 3966 	push	ar2
      00131C 12 00 CA         [24] 3967 	lcall	_dotmatrix_send
      00131F D0 02            [24] 3968 	pop	ar2
      001321 D0 03            [24] 3969 	pop	ar3
      001323 D0 04            [24] 3970 	pop	ar4
      001325 D0 05            [24] 3971 	pop	ar5
      001327 D0 06            [24] 3972 	pop	ar6
      001329 D0 07            [24] 3973 	pop	ar7
                                   3974 ;	dotmatrix.c:604: for (int row = 1; row <= EIGHT; row++)
      00132B 0A               [12] 3975 	inc	r2
      00132C BA 00 BD         [24] 3976 	cjne	r2,#0x00,00112$
      00132F 0B               [12] 3977 	inc	r3
      001330 80 BA            [24] 3978 	sjmp	00112$
      001332                       3979 00116$:
                                   3980 ;	dotmatrix.c:602: for (int unit = 1; unit <= 4; unit++)
      001332 0E               [12] 3981 	inc	r6
      001333 BE 00 9F         [24] 3982 	cjne	r6,#0x00,00115$
      001336 0F               [12] 3983 	inc	r7
      001337 80 9C            [24] 3984 	sjmp	00115$
      001339                       3985 00117$:
                                   3986 ;	dotmatrix.c:609: }
      001339 22               [24] 3987 	ret
                                   3988 ;------------------------------------------------------------
                                   3989 ;Allocation info for local variables in function 'display_explosion'
                                   3990 ;------------------------------------------------------------
                                   3991 ;player                    Allocated with name '_display_explosion_player_65536_134'
                                   3992 ;i                         Allocated with name '_display_explosion_i_65536_135'
                                   3993 ;j                         Allocated with name '_display_explosion_j_65536_135'
                                   3994 ;player_array              Allocated with name '_display_explosion_player_array_65536_135'
                                   3995 ;explosion                 Allocated with name '_display_explosion_explosion_131072_136'
                                   3996 ;j                         Allocated with name '_display_explosion_j_131072_144'
                                   3997 ;------------------------------------------------------------
                                   3998 ;	dotmatrix.c:612: void display_explosion(player_t player)
                                   3999 ;	-----------------------------------------
                                   4000 ;	 function display_explosion
                                   4001 ;	-----------------------------------------
      00133A                       4002 _display_explosion:
      00133A E5 82            [12] 4003 	mov	a,dpl
      00133C 90 00 1E         [24] 4004 	mov	dptr,#_display_explosion_player_65536_134
      00133F F0               [24] 4005 	movx	@dptr,a
                                   4006 ;	dotmatrix.c:616: uint8_t *player_array = (player == PLAYER1) ? number_1 : number_2;
      001340 E0               [24] 4007 	movx	a,@dptr
      001341 70 06            [24] 4008 	jnz	00125$
      001343 7E AB            [12] 4009 	mov	r6,#_number_1
      001345 7F 00            [12] 4010 	mov	r7,#(_number_1 >> 8)
      001347 80 04            [24] 4011 	sjmp	00126$
      001349                       4012 00125$:
      001349 7E B3            [12] 4013 	mov	r6,#_number_2
      00134B 7F 00            [12] 4014 	mov	r7,#(_number_2 >> 8)
      00134D                       4015 00126$:
      00134D 8F 05            [24] 4016 	mov	ar5,r7
      00134F 7F 00            [12] 4017 	mov	r7,#0x00
                                   4018 ;	dotmatrix.c:618: for(int explosion=0; explosion<4; explosion++){
      001351 7B 00            [12] 4019 	mov	r3,#0x00
      001353 7C 00            [12] 4020 	mov	r4,#0x00
      001355                       4021 00118$:
      001355 C3               [12] 4022 	clr	c
      001356 EB               [12] 4023 	mov	a,r3
      001357 94 04            [12] 4024 	subb	a,#0x04
      001359 EC               [12] 4025 	mov	a,r4
      00135A 64 80            [12] 4026 	xrl	a,#0x80
      00135C 94 80            [12] 4027 	subb	a,#0x80
      00135E 50 61            [24] 4028 	jnc	00105$
                                   4029 ;	dotmatrix.c:619: BUZZER_ON;
                                   4030 ;	assignBit
      001360 C2 82            [12] 4031 	clr	_P0_2
                                   4032 ;	dotmatrix.c:621: display_explosion_pattern(explosion_small);
      001362 90 00 CB         [24] 4033 	mov	dptr,#_explosion_small
      001365 75 F0 00         [24] 4034 	mov	b,#0x00
      001368 C0 07            [24] 4035 	push	ar7
      00136A C0 06            [24] 4036 	push	ar6
      00136C C0 05            [24] 4037 	push	ar5
      00136E C0 04            [24] 4038 	push	ar4
      001370 C0 03            [24] 4039 	push	ar3
      001372 12 10 FA         [24] 4040 	lcall	_display_explosion_pattern
      001375 D0 03            [24] 4041 	pop	ar3
      001377 D0 04            [24] 4042 	pop	ar4
      001379 D0 05            [24] 4043 	pop	ar5
      00137B D0 06            [24] 4044 	pop	ar6
      00137D D0 07            [24] 4045 	pop	ar7
                                   4046 ;	dotmatrix.c:622: for(i=0; i<200; i++){
      00137F 7A 00            [12] 4047 	mov	r2,#0x00
                                   4048 ;	dotmatrix.c:623: for(j=0;j<20;j++);
      001381                       4049 00129$:
      001381 79 14            [12] 4050 	mov	r1,#0x14
      001383                       4051 00109$:
      001383 19               [12] 4052 	dec	r1
      001384 E9               [12] 4053 	mov	a,r1
      001385 70 FC            [24] 4054 	jnz	00109$
                                   4055 ;	dotmatrix.c:622: for(i=0; i<200; i++){
      001387 0A               [12] 4056 	inc	r2
      001388 BA C8 00         [24] 4057 	cjne	r2,#0xc8,00188$
      00138B                       4058 00188$:
      00138B 40 F4            [24] 4059 	jc	00129$
                                   4060 ;	dotmatrix.c:625: display_explosion_pattern(explosion_large);
      00138D 90 00 DB         [24] 4061 	mov	dptr,#_explosion_large
      001390 75 F0 00         [24] 4062 	mov	b,#0x00
      001393 C0 07            [24] 4063 	push	ar7
      001395 C0 06            [24] 4064 	push	ar6
      001397 C0 05            [24] 4065 	push	ar5
      001399 C0 04            [24] 4066 	push	ar4
      00139B C0 03            [24] 4067 	push	ar3
      00139D 12 10 FA         [24] 4068 	lcall	_display_explosion_pattern
      0013A0 D0 03            [24] 4069 	pop	ar3
      0013A2 D0 04            [24] 4070 	pop	ar4
      0013A4 D0 05            [24] 4071 	pop	ar5
      0013A6 D0 06            [24] 4072 	pop	ar6
      0013A8 D0 07            [24] 4073 	pop	ar7
                                   4074 ;	dotmatrix.c:626: for(i=0; i<200; i++){
      0013AA 7A 00            [12] 4075 	mov	r2,#0x00
                                   4076 ;	dotmatrix.c:627: for(j=0;j<20;j++);
      0013AC                       4077 00133$:
      0013AC 79 14            [12] 4078 	mov	r1,#0x14
      0013AE                       4079 00114$:
      0013AE 19               [12] 4080 	dec	r1
      0013AF E9               [12] 4081 	mov	a,r1
      0013B0 70 FC            [24] 4082 	jnz	00114$
                                   4083 ;	dotmatrix.c:626: for(i=0; i<200; i++){
      0013B2 0A               [12] 4084 	inc	r2
      0013B3 BA C8 00         [24] 4085 	cjne	r2,#0xc8,00191$
      0013B6                       4086 00191$:
      0013B6 40 F4            [24] 4087 	jc	00133$
                                   4088 ;	dotmatrix.c:630: BUZZER_OFF;
                                   4089 ;	assignBit
      0013B8 D2 82            [12] 4090 	setb	_P0_2
                                   4091 ;	dotmatrix.c:618: for(int explosion=0; explosion<4; explosion++){
      0013BA 0B               [12] 4092 	inc	r3
      0013BB BB 00 97         [24] 4093 	cjne	r3,#0x00,00118$
      0013BE 0C               [12] 4094 	inc	r4
      0013BF 80 94            [24] 4095 	sjmp	00118$
      0013C1                       4096 00105$:
                                   4097 ;	dotmatrix.c:634: display_character(letter_G, 1, DISPLAY1);
      0013C1 90 00 19         [24] 4098 	mov	dptr,#_display_character_PARM_2
      0013C4 74 01            [12] 4099 	mov	a,#0x01
      0013C6 F0               [24] 4100 	movx	@dptr,a
      0013C7 90 00 1A         [24] 4101 	mov	dptr,#_display_character_PARM_3
      0013CA E4               [12] 4102 	clr	a
      0013CB F0               [24] 4103 	movx	@dptr,a
      0013CC 90 00 6B         [24] 4104 	mov	dptr,#_letter_G
      0013CF 75 F0 00         [24] 4105 	mov	b,#0x00
      0013D2 C0 07            [24] 4106 	push	ar7
      0013D4 C0 06            [24] 4107 	push	ar6
      0013D6 C0 05            [24] 4108 	push	ar5
      0013D8 12 11 EB         [24] 4109 	lcall	_display_character
      0013DB D0 05            [24] 4110 	pop	ar5
      0013DD D0 06            [24] 4111 	pop	ar6
      0013DF D0 07            [24] 4112 	pop	ar7
                                   4113 ;	dotmatrix.c:635: display_character(letter_A, 2, DISPLAY1);
      0013E1 90 00 19         [24] 4114 	mov	dptr,#_display_character_PARM_2
      0013E4 74 02            [12] 4115 	mov	a,#0x02
      0013E6 F0               [24] 4116 	movx	@dptr,a
      0013E7 90 00 1A         [24] 4117 	mov	dptr,#_display_character_PARM_3
      0013EA E4               [12] 4118 	clr	a
      0013EB F0               [24] 4119 	movx	@dptr,a
      0013EC 90 00 73         [24] 4120 	mov	dptr,#_letter_A
      0013EF 75 F0 00         [24] 4121 	mov	b,#0x00
      0013F2 C0 07            [24] 4122 	push	ar7
      0013F4 C0 06            [24] 4123 	push	ar6
      0013F6 C0 05            [24] 4124 	push	ar5
      0013F8 12 11 EB         [24] 4125 	lcall	_display_character
      0013FB D0 05            [24] 4126 	pop	ar5
      0013FD D0 06            [24] 4127 	pop	ar6
      0013FF D0 07            [24] 4128 	pop	ar7
                                   4129 ;	dotmatrix.c:636: display_character(letter_M, 3, DISPLAY1);
      001401 90 00 19         [24] 4130 	mov	dptr,#_display_character_PARM_2
      001404 74 03            [12] 4131 	mov	a,#0x03
      001406 F0               [24] 4132 	movx	@dptr,a
      001407 90 00 1A         [24] 4133 	mov	dptr,#_display_character_PARM_3
      00140A E4               [12] 4134 	clr	a
      00140B F0               [24] 4135 	movx	@dptr,a
      00140C 90 00 7B         [24] 4136 	mov	dptr,#_letter_M
      00140F 75 F0 00         [24] 4137 	mov	b,#0x00
      001412 C0 07            [24] 4138 	push	ar7
      001414 C0 06            [24] 4139 	push	ar6
      001416 C0 05            [24] 4140 	push	ar5
      001418 12 11 EB         [24] 4141 	lcall	_display_character
      00141B D0 05            [24] 4142 	pop	ar5
      00141D D0 06            [24] 4143 	pop	ar6
      00141F D0 07            [24] 4144 	pop	ar7
                                   4145 ;	dotmatrix.c:637: display_character(letter_E, 4, DISPLAY1);
      001421 90 00 19         [24] 4146 	mov	dptr,#_display_character_PARM_2
      001424 74 04            [12] 4147 	mov	a,#0x04
      001426 F0               [24] 4148 	movx	@dptr,a
      001427 90 00 1A         [24] 4149 	mov	dptr,#_display_character_PARM_3
      00142A E4               [12] 4150 	clr	a
      00142B F0               [24] 4151 	movx	@dptr,a
      00142C 90 00 83         [24] 4152 	mov	dptr,#_letter_E
      00142F 75 F0 00         [24] 4153 	mov	b,#0x00
      001432 C0 07            [24] 4154 	push	ar7
      001434 C0 06            [24] 4155 	push	ar6
      001436 C0 05            [24] 4156 	push	ar5
      001438 12 11 EB         [24] 4157 	lcall	_display_character
      00143B D0 05            [24] 4158 	pop	ar5
      00143D D0 06            [24] 4159 	pop	ar6
      00143F D0 07            [24] 4160 	pop	ar7
                                   4161 ;	dotmatrix.c:639: display_character(letter_O, 1, DISPLAY2);
      001441 90 00 19         [24] 4162 	mov	dptr,#_display_character_PARM_2
      001444 74 01            [12] 4163 	mov	a,#0x01
      001446 F0               [24] 4164 	movx	@dptr,a
      001447 90 00 1A         [24] 4165 	mov	dptr,#_display_character_PARM_3
      00144A F0               [24] 4166 	movx	@dptr,a
      00144B 90 00 8B         [24] 4167 	mov	dptr,#_letter_O
      00144E 75 F0 00         [24] 4168 	mov	b,#0x00
      001451 C0 07            [24] 4169 	push	ar7
      001453 C0 06            [24] 4170 	push	ar6
      001455 C0 05            [24] 4171 	push	ar5
      001457 12 11 EB         [24] 4172 	lcall	_display_character
      00145A D0 05            [24] 4173 	pop	ar5
      00145C D0 06            [24] 4174 	pop	ar6
      00145E D0 07            [24] 4175 	pop	ar7
                                   4176 ;	dotmatrix.c:640: display_character(letter_V, 2, DISPLAY2);
      001460 90 00 19         [24] 4177 	mov	dptr,#_display_character_PARM_2
      001463 74 02            [12] 4178 	mov	a,#0x02
      001465 F0               [24] 4179 	movx	@dptr,a
      001466 90 00 1A         [24] 4180 	mov	dptr,#_display_character_PARM_3
      001469 14               [12] 4181 	dec	a
      00146A F0               [24] 4182 	movx	@dptr,a
      00146B 90 00 93         [24] 4183 	mov	dptr,#_letter_V
      00146E 75 F0 00         [24] 4184 	mov	b,#0x00
      001471 C0 07            [24] 4185 	push	ar7
      001473 C0 06            [24] 4186 	push	ar6
      001475 C0 05            [24] 4187 	push	ar5
      001477 12 11 EB         [24] 4188 	lcall	_display_character
      00147A D0 05            [24] 4189 	pop	ar5
      00147C D0 06            [24] 4190 	pop	ar6
      00147E D0 07            [24] 4191 	pop	ar7
                                   4192 ;	dotmatrix.c:641: display_character(letter_E, 3, DISPLAY2);
      001480 90 00 19         [24] 4193 	mov	dptr,#_display_character_PARM_2
      001483 74 03            [12] 4194 	mov	a,#0x03
      001485 F0               [24] 4195 	movx	@dptr,a
      001486 90 00 1A         [24] 4196 	mov	dptr,#_display_character_PARM_3
      001489 74 01            [12] 4197 	mov	a,#0x01
      00148B F0               [24] 4198 	movx	@dptr,a
      00148C 90 00 83         [24] 4199 	mov	dptr,#_letter_E
      00148F 75 F0 00         [24] 4200 	mov	b,#0x00
      001492 C0 07            [24] 4201 	push	ar7
      001494 C0 06            [24] 4202 	push	ar6
      001496 C0 05            [24] 4203 	push	ar5
      001498 12 11 EB         [24] 4204 	lcall	_display_character
      00149B D0 05            [24] 4205 	pop	ar5
      00149D D0 06            [24] 4206 	pop	ar6
      00149F D0 07            [24] 4207 	pop	ar7
                                   4208 ;	dotmatrix.c:642: display_character(letter_R, 4, DISPLAY2);
      0014A1 90 00 19         [24] 4209 	mov	dptr,#_display_character_PARM_2
      0014A4 74 04            [12] 4210 	mov	a,#0x04
      0014A6 F0               [24] 4211 	movx	@dptr,a
      0014A7 90 00 1A         [24] 4212 	mov	dptr,#_display_character_PARM_3
      0014AA 74 01            [12] 4213 	mov	a,#0x01
      0014AC F0               [24] 4214 	movx	@dptr,a
      0014AD 90 00 9B         [24] 4215 	mov	dptr,#_letter_R
      0014B0 75 F0 00         [24] 4216 	mov	b,#0x00
      0014B3 C0 07            [24] 4217 	push	ar7
      0014B5 C0 06            [24] 4218 	push	ar6
      0014B7 C0 05            [24] 4219 	push	ar5
      0014B9 12 11 EB         [24] 4220 	lcall	_display_character
      0014BC D0 05            [24] 4221 	pop	ar5
      0014BE D0 06            [24] 4222 	pop	ar6
      0014C0 D0 07            [24] 4223 	pop	ar7
                                   4224 ;	dotmatrix.c:644: for (uint16_t j=0; j<= 25000; j++);
      0014C2 7B 00            [12] 4225 	mov	r3,#0x00
      0014C4 7C 00            [12] 4226 	mov	r4,#0x00
      0014C6                       4227 00121$:
      0014C6 8B 01            [24] 4228 	mov	ar1,r3
      0014C8 8C 02            [24] 4229 	mov	ar2,r4
      0014CA C3               [12] 4230 	clr	c
      0014CB 74 A8            [12] 4231 	mov	a,#0xa8
      0014CD 99               [12] 4232 	subb	a,r1
      0014CE 74 61            [12] 4233 	mov	a,#0x61
      0014D0 9A               [12] 4234 	subb	a,r2
      0014D1 40 07            [24] 4235 	jc	00106$
      0014D3 0B               [12] 4236 	inc	r3
      0014D4 BB 00 EF         [24] 4237 	cjne	r3,#0x00,00121$
      0014D7 0C               [12] 4238 	inc	r4
      0014D8 80 EC            [24] 4239 	sjmp	00121$
      0014DA                       4240 00106$:
                                   4241 ;	dotmatrix.c:645: clear_display();
      0014DA C0 07            [24] 4242 	push	ar7
      0014DC C0 06            [24] 4243 	push	ar6
      0014DE C0 05            [24] 4244 	push	ar5
      0014E0 12 12 6A         [24] 4245 	lcall	_clear_display
      0014E3 D0 05            [24] 4246 	pop	ar5
      0014E5 D0 06            [24] 4247 	pop	ar6
      0014E7 D0 07            [24] 4248 	pop	ar7
                                   4249 ;	dotmatrix.c:646: display_character(letter_P, 2, DISPLAY1);
      0014E9 90 00 19         [24] 4250 	mov	dptr,#_display_character_PARM_2
      0014EC 74 02            [12] 4251 	mov	a,#0x02
      0014EE F0               [24] 4252 	movx	@dptr,a
      0014EF 90 00 1A         [24] 4253 	mov	dptr,#_display_character_PARM_3
      0014F2 E4               [12] 4254 	clr	a
      0014F3 F0               [24] 4255 	movx	@dptr,a
      0014F4 90 00 A3         [24] 4256 	mov	dptr,#_letter_P
      0014F7 75 F0 00         [24] 4257 	mov	b,#0x00
      0014FA C0 07            [24] 4258 	push	ar7
      0014FC C0 06            [24] 4259 	push	ar6
      0014FE C0 05            [24] 4260 	push	ar5
      001500 12 11 EB         [24] 4261 	lcall	_display_character
      001503 D0 05            [24] 4262 	pop	ar5
      001505 D0 06            [24] 4263 	pop	ar6
      001507 D0 07            [24] 4264 	pop	ar7
                                   4265 ;	dotmatrix.c:647: display_character(player_array, 3, DISPLAY1);
      001509 90 00 19         [24] 4266 	mov	dptr,#_display_character_PARM_2
      00150C 74 03            [12] 4267 	mov	a,#0x03
      00150E F0               [24] 4268 	movx	@dptr,a
      00150F 90 00 1A         [24] 4269 	mov	dptr,#_display_character_PARM_3
      001512 E4               [12] 4270 	clr	a
      001513 F0               [24] 4271 	movx	@dptr,a
      001514 8E 82            [24] 4272 	mov	dpl,r6
      001516 8D 83            [24] 4273 	mov	dph,r5
      001518 8F F0            [24] 4274 	mov	b,r7
      00151A 12 11 EB         [24] 4275 	lcall	_display_character
                                   4276 ;	dotmatrix.c:649: display_character(letter_W, 1, DISPLAY2);
      00151D 90 00 19         [24] 4277 	mov	dptr,#_display_character_PARM_2
      001520 74 01            [12] 4278 	mov	a,#0x01
      001522 F0               [24] 4279 	movx	@dptr,a
      001523 90 00 1A         [24] 4280 	mov	dptr,#_display_character_PARM_3
      001526 F0               [24] 4281 	movx	@dptr,a
      001527 90 00 BB         [24] 4282 	mov	dptr,#_letter_W
      00152A 75 F0 00         [24] 4283 	mov	b,#0x00
      00152D 12 11 EB         [24] 4284 	lcall	_display_character
                                   4285 ;	dotmatrix.c:650: display_character(letter_O, 2, DISPLAY2);
      001530 90 00 19         [24] 4286 	mov	dptr,#_display_character_PARM_2
      001533 74 02            [12] 4287 	mov	a,#0x02
      001535 F0               [24] 4288 	movx	@dptr,a
      001536 90 00 1A         [24] 4289 	mov	dptr,#_display_character_PARM_3
      001539 14               [12] 4290 	dec	a
      00153A F0               [24] 4291 	movx	@dptr,a
      00153B 90 00 8B         [24] 4292 	mov	dptr,#_letter_O
      00153E 75 F0 00         [24] 4293 	mov	b,#0x00
      001541 12 11 EB         [24] 4294 	lcall	_display_character
                                   4295 ;	dotmatrix.c:651: display_character(letter_N, 3, DISPLAY2);
      001544 90 00 19         [24] 4296 	mov	dptr,#_display_character_PARM_2
      001547 74 03            [12] 4297 	mov	a,#0x03
      001549 F0               [24] 4298 	movx	@dptr,a
      00154A 90 00 1A         [24] 4299 	mov	dptr,#_display_character_PARM_3
      00154D 74 01            [12] 4300 	mov	a,#0x01
      00154F F0               [24] 4301 	movx	@dptr,a
      001550 90 00 C3         [24] 4302 	mov	dptr,#_letter_N
      001553 75 F0 00         [24] 4303 	mov	b,#0x00
                                   4304 ;	dotmatrix.c:654: }
      001556 02 11 EB         [24] 4305 	ljmp	_display_character
                                   4306 ;------------------------------------------------------------
                                   4307 ;Allocation info for local variables in function 'score_to_binary'
                                   4308 ;------------------------------------------------------------
                                   4309 ;score                     Allocated with name '_score_to_binary_score_65536_145'
                                   4310 ;binary_representation     Allocated with name '_score_to_binary_binary_representation_65536_146'
                                   4311 ;i                         Allocated with name '_score_to_binary_i_131072_147'
                                   4312 ;------------------------------------------------------------
                                   4313 ;	dotmatrix.c:656: uint8_t score_to_binary(uint8_t score) {
                                   4314 ;	-----------------------------------------
                                   4315 ;	 function score_to_binary
                                   4316 ;	-----------------------------------------
      001559                       4317 _score_to_binary:
      001559 E5 82            [12] 4318 	mov	a,dpl
      00155B 90 00 1F         [24] 4319 	mov	dptr,#_score_to_binary_score_65536_145
      00155E F0               [24] 4320 	movx	@dptr,a
                                   4321 ;	dotmatrix.c:657: uint8_t binary_representation = 0;
      00155F 90 00 20         [24] 4322 	mov	dptr,#_score_to_binary_binary_representation_65536_146
      001562 E4               [12] 4323 	clr	a
      001563 F0               [24] 4324 	movx	@dptr,a
                                   4325 ;	dotmatrix.c:659: for (int i = 0; i < score; i++) {
      001564 90 00 1F         [24] 4326 	mov	dptr,#_score_to_binary_score_65536_145
      001567 E0               [24] 4327 	movx	a,@dptr
      001568 FF               [12] 4328 	mov	r7,a
      001569 7D 00            [12] 4329 	mov	r5,#0x00
      00156B 7E 00            [12] 4330 	mov	r6,#0x00
      00156D                       4331 00103$:
      00156D 8F 03            [24] 4332 	mov	ar3,r7
      00156F 7C 00            [12] 4333 	mov	r4,#0x00
      001571 C3               [12] 4334 	clr	c
      001572 ED               [12] 4335 	mov	a,r5
      001573 9B               [12] 4336 	subb	a,r3
      001574 EE               [12] 4337 	mov	a,r6
      001575 64 80            [12] 4338 	xrl	a,#0x80
      001577 8C F0            [24] 4339 	mov	b,r4
      001579 63 F0 80         [24] 4340 	xrl	b,#0x80
      00157C 95 F0            [12] 4341 	subb	a,b
      00157E 50 1D            [24] 4342 	jnc	00101$
                                   4343 ;	dotmatrix.c:660: binary_representation |= (1 << i);
      001580 8D 04            [24] 4344 	mov	ar4,r5
      001582 8C F0            [24] 4345 	mov	b,r4
      001584 05 F0            [12] 4346 	inc	b
      001586 74 01            [12] 4347 	mov	a,#0x01
      001588 80 02            [24] 4348 	sjmp	00119$
      00158A                       4349 00117$:
      00158A 25 E0            [12] 4350 	add	a,acc
      00158C                       4351 00119$:
      00158C D5 F0 FB         [24] 4352 	djnz	b,00117$
      00158F FC               [12] 4353 	mov	r4,a
      001590 90 00 20         [24] 4354 	mov	dptr,#_score_to_binary_binary_representation_65536_146
      001593 E0               [24] 4355 	movx	a,@dptr
      001594 4C               [12] 4356 	orl	a,r4
      001595 F0               [24] 4357 	movx	@dptr,a
                                   4358 ;	dotmatrix.c:659: for (int i = 0; i < score; i++) {
      001596 0D               [12] 4359 	inc	r5
      001597 BD 00 D3         [24] 4360 	cjne	r5,#0x00,00103$
      00159A 0E               [12] 4361 	inc	r6
      00159B 80 D0            [24] 4362 	sjmp	00103$
      00159D                       4363 00101$:
                                   4364 ;	dotmatrix.c:663: return binary_representation;
      00159D 90 00 20         [24] 4365 	mov	dptr,#_score_to_binary_binary_representation_65536_146
      0015A0 E0               [24] 4366 	movx	a,@dptr
                                   4367 ;	dotmatrix.c:664: }
      0015A1 F5 82            [12] 4368 	mov	dpl,a
      0015A3 22               [24] 4369 	ret
                                   4370 ;------------------------------------------------------------
                                   4371 ;Allocation info for local variables in function 'send_score'
                                   4372 ;------------------------------------------------------------
                                   4373 ;p_player1                 Allocated with name '_send_score_p_player1_65536_149'
                                   4374 ;p_player2                 Allocated with name '_send_score_p_player2_65536_149'
                                   4375 ;data                      Allocated with name '_send_score_data_65536_149'
                                   4376 ;------------------------------------------------------------
                                   4377 ;	dotmatrix.c:666: void send_score(){
                                   4378 ;	-----------------------------------------
                                   4379 ;	 function send_score
                                   4380 ;	-----------------------------------------
      0015A4                       4381 _send_score:
                                   4382 ;	dotmatrix.c:667: uint8_t p_player1 = score_to_binary(player_points[PLAYER1]);
      0015A4 90 00 F1         [24] 4383 	mov	dptr,#_player_points
      0015A7 E0               [24] 4384 	movx	a,@dptr
      0015A8 F5 82            [12] 4385 	mov	dpl,a
      0015AA 12 15 59         [24] 4386 	lcall	_score_to_binary
      0015AD AF 82            [24] 4387 	mov	r7,dpl
                                   4388 ;	dotmatrix.c:668: uint8_t p_player2 = score_to_binary(player_points[PLAYER2]);
      0015AF 90 00 F2         [24] 4389 	mov	dptr,#(_player_points + 0x0001)
      0015B2 E0               [24] 4390 	movx	a,@dptr
      0015B3 F5 82            [12] 4391 	mov	dpl,a
      0015B5 C0 07            [24] 4392 	push	ar7
      0015B7 12 15 59         [24] 4393 	lcall	_score_to_binary
      0015BA AE 82            [24] 4394 	mov	r6,dpl
      0015BC D0 07            [24] 4395 	pop	ar7
                                   4396 ;	dotmatrix.c:671: shift_data((p_player2 << 4 | p_player1));
      0015BE EE               [12] 4397 	mov	a,r6
      0015BF C4               [12] 4398 	swap	a
      0015C0 54 F0            [12] 4399 	anl	a,#0xf0
      0015C2 42 07            [12] 4400 	orl	ar7,a
      0015C4 8F 82            [24] 4401 	mov	dpl,r7
                                   4402 ;	dotmatrix.c:672: }
      0015C6 02 15 C9         [24] 4403 	ljmp	_shift_data
                                   4404 ;------------------------------------------------------------
                                   4405 ;Allocation info for local variables in function 'shift_data'
                                   4406 ;------------------------------------------------------------
                                   4407 ;data                      Allocated with name '_shift_data_data_65536_150'
                                   4408 ;whole_data                Allocated with name '_shift_data_whole_data_65537_152'
                                   4409 ;i                         Allocated with name '_shift_data_i_131073_153'
                                   4410 ;------------------------------------------------------------
                                   4411 ;	dotmatrix.c:675: void shift_data(uint8_t data){
                                   4412 ;	-----------------------------------------
                                   4413 ;	 function shift_data
                                   4414 ;	-----------------------------------------
      0015C9                       4415 _shift_data:
      0015C9 E5 82            [12] 4416 	mov	a,dpl
      0015CB 90 00 21         [24] 4417 	mov	dptr,#_shift_data_data_65536_150
      0015CE F0               [24] 4418 	movx	@dptr,a
                                   4419 ;	dotmatrix.c:676: SS_HIGH;
                                   4420 ;	assignBit
      0015CF D2 91            [12] 4421 	setb	_P1_1
                                   4422 ;	dotmatrix.c:677: SS2_HIGH;
                                   4423 ;	assignBit
      0015D1 D2 90            [12] 4424 	setb	_P1_0
                                   4425 ;	dotmatrix.c:678: LATCH_LOW;
                                   4426 ;	assignBit
      0015D3 C2 80            [12] 4427 	clr	_P0_0
                                   4428 ;	dotmatrix.c:680: SHIFTREG_CLOCK_LOW;
                                   4429 ;	assignBit
      0015D5 C2 81            [12] 4430 	clr	_P0_1
                                   4431 ;	dotmatrix.c:681: MOSI_LOW;
                                   4432 ;	assignBit
      0015D7 C2 97            [12] 4433 	clr	_P1_7
                                   4434 ;	dotmatrix.c:683: uint8_t whole_data = data;
      0015D9 90 00 21         [24] 4435 	mov	dptr,#_shift_data_data_65536_150
      0015DC E0               [24] 4436 	movx	a,@dptr
      0015DD 90 00 22         [24] 4437 	mov	dptr,#_shift_data_whole_data_65537_152
      0015E0 F0               [24] 4438 	movx	@dptr,a
                                   4439 ;	dotmatrix.c:685: for (int i = 0; i < EIGHT; i++)
      0015E1 7E 00            [12] 4440 	mov	r6,#0x00
      0015E3 7F 00            [12] 4441 	mov	r7,#0x00
      0015E5                       4442 00106$:
      0015E5 C3               [12] 4443 	clr	c
      0015E6 EE               [12] 4444 	mov	a,r6
      0015E7 94 08            [12] 4445 	subb	a,#0x08
      0015E9 EF               [12] 4446 	mov	a,r7
      0015EA 64 80            [12] 4447 	xrl	a,#0x80
      0015EC 94 80            [12] 4448 	subb	a,#0x80
      0015EE 50 1F            [24] 4449 	jnc	00104$
                                   4450 ;	dotmatrix.c:687: if (whole_data & 0x80)
      0015F0 90 00 22         [24] 4451 	mov	dptr,#_shift_data_whole_data_65537_152
      0015F3 E0               [24] 4452 	movx	a,@dptr
      0015F4 30 E7 04         [24] 4453 	jnb	acc.7,00102$
                                   4454 ;	dotmatrix.c:688: MOSI_HIGH;
                                   4455 ;	assignBit
      0015F7 D2 97            [12] 4456 	setb	_P1_7
      0015F9 80 02            [24] 4457 	sjmp	00103$
      0015FB                       4458 00102$:
                                   4459 ;	dotmatrix.c:690: MOSI_LOW;
                                   4460 ;	assignBit
      0015FB C2 97            [12] 4461 	clr	_P1_7
      0015FD                       4462 00103$:
                                   4463 ;	dotmatrix.c:692: SHIFTREG_CLOCK_HIGH;
                                   4464 ;	assignBit
      0015FD D2 81            [12] 4465 	setb	_P0_1
                                   4466 ;	dotmatrix.c:693: SHIFTREG_CLOCK_LOW;
                                   4467 ;	assignBit
      0015FF C2 81            [12] 4468 	clr	_P0_1
                                   4469 ;	dotmatrix.c:695: whole_data <<= 1; // shifting one bit
      001601 90 00 22         [24] 4470 	mov	dptr,#_shift_data_whole_data_65537_152
      001604 E0               [24] 4471 	movx	a,@dptr
      001605 25 E0            [12] 4472 	add	a,acc
      001607 F0               [24] 4473 	movx	@dptr,a
                                   4474 ;	dotmatrix.c:685: for (int i = 0; i < EIGHT; i++)
      001608 0E               [12] 4475 	inc	r6
      001609 BE 00 D9         [24] 4476 	cjne	r6,#0x00,00106$
      00160C 0F               [12] 4477 	inc	r7
      00160D 80 D6            [24] 4478 	sjmp	00106$
      00160F                       4479 00104$:
                                   4480 ;	dotmatrix.c:697: LATCH_LOW;
                                   4481 ;	assignBit
      00160F C2 80            [12] 4482 	clr	_P0_0
                                   4483 ;	dotmatrix.c:698: LATCH_HIGH;
                                   4484 ;	assignBit
      001611 D2 80            [12] 4485 	setb	_P0_0
                                   4486 ;	dotmatrix.c:699: SS_HIGH;
                                   4487 ;	assignBit
      001613 D2 91            [12] 4488 	setb	_P1_1
                                   4489 ;	dotmatrix.c:700: SS2_HIGH;
                                   4490 ;	assignBit
      001615 D2 90            [12] 4491 	setb	_P1_0
                                   4492 ;	dotmatrix.c:701: LATCH_LOW;
                                   4493 ;	assignBit
      001617 C2 80            [12] 4494 	clr	_P0_0
                                   4495 ;	dotmatrix.c:702: }
      001619 22               [24] 4496 	ret
                                   4497 	.area CSEG    (CODE)
                                   4498 	.area CONST   (CODE)
                                   4499 	.area XINIT   (CODE)
      0025BA                       4500 __xinit__game_status:
      0025BA 02                    4501 	.db #0x02	; 2
      0025BB                       4502 __xinit__letter_G:
      0025BB 78                    4503 	.db #0x78	; 120	'x'
      0025BC 84                    4504 	.db #0x84	; 132
      0025BD 80                    4505 	.db #0x80	; 128
      0025BE 8E                    4506 	.db #0x8e	; 142
      0025BF 82                    4507 	.db #0x82	; 130
      0025C0 84                    4508 	.db #0x84	; 132
      0025C1 78                    4509 	.db #0x78	; 120	'x'
      0025C2 00                    4510 	.db #0x00	; 0
      0025C3                       4511 __xinit__letter_A:
      0025C3 3C                    4512 	.db #0x3c	; 60
      0025C4 42                    4513 	.db #0x42	; 66	'B'
      0025C5 42                    4514 	.db #0x42	; 66	'B'
      0025C6 7E                    4515 	.db #0x7e	; 126
      0025C7 42                    4516 	.db #0x42	; 66	'B'
      0025C8 42                    4517 	.db #0x42	; 66	'B'
      0025C9 42                    4518 	.db #0x42	; 66	'B'
      0025CA 00                    4519 	.db #0x00	; 0
      0025CB                       4520 __xinit__letter_M:
      0025CB 82                    4521 	.db #0x82	; 130
      0025CC C6                    4522 	.db #0xc6	; 198
      0025CD AA                    4523 	.db #0xaa	; 170
      0025CE 92                    4524 	.db #0x92	; 146
      0025CF 82                    4525 	.db #0x82	; 130
      0025D0 82                    4526 	.db #0x82	; 130
      0025D1 82                    4527 	.db #0x82	; 130
      0025D2 00                    4528 	.db #0x00	; 0
      0025D3                       4529 __xinit__letter_E:
      0025D3 7E                    4530 	.db #0x7e	; 126
      0025D4 40                    4531 	.db #0x40	; 64
      0025D5 40                    4532 	.db #0x40	; 64
      0025D6 7C                    4533 	.db #0x7c	; 124
      0025D7 40                    4534 	.db #0x40	; 64
      0025D8 40                    4535 	.db #0x40	; 64
      0025D9 7E                    4536 	.db #0x7e	; 126
      0025DA 00                    4537 	.db #0x00	; 0
      0025DB                       4538 __xinit__letter_O:
      0025DB 3C                    4539 	.db #0x3c	; 60
      0025DC 42                    4540 	.db #0x42	; 66	'B'
      0025DD 42                    4541 	.db #0x42	; 66	'B'
      0025DE 42                    4542 	.db #0x42	; 66	'B'
      0025DF 42                    4543 	.db #0x42	; 66	'B'
      0025E0 42                    4544 	.db #0x42	; 66	'B'
      0025E1 3C                    4545 	.db #0x3c	; 60
      0025E2 00                    4546 	.db #0x00	; 0
      0025E3                       4547 __xinit__letter_V:
      0025E3 82                    4548 	.db #0x82	; 130
      0025E4 82                    4549 	.db #0x82	; 130
      0025E5 44                    4550 	.db #0x44	; 68	'D'
      0025E6 44                    4551 	.db #0x44	; 68	'D'
      0025E7 28                    4552 	.db #0x28	; 40
      0025E8 10                    4553 	.db #0x10	; 16
      0025E9 10                    4554 	.db #0x10	; 16
      0025EA 00                    4555 	.db #0x00	; 0
      0025EB                       4556 __xinit__letter_R:
      0025EB 7C                    4557 	.db #0x7c	; 124
      0025EC 42                    4558 	.db #0x42	; 66	'B'
      0025ED 42                    4559 	.db #0x42	; 66	'B'
      0025EE 7C                    4560 	.db #0x7c	; 124
      0025EF 48                    4561 	.db #0x48	; 72	'H'
      0025F0 44                    4562 	.db #0x44	; 68	'D'
      0025F1 42                    4563 	.db #0x42	; 66	'B'
      0025F2 00                    4564 	.db #0x00	; 0
      0025F3                       4565 __xinit__letter_P:
      0025F3 78                    4566 	.db #0x78	; 120	'x'
      0025F4 44                    4567 	.db #0x44	; 68	'D'
      0025F5 44                    4568 	.db #0x44	; 68	'D'
      0025F6 78                    4569 	.db #0x78	; 120	'x'
      0025F7 40                    4570 	.db #0x40	; 64
      0025F8 40                    4571 	.db #0x40	; 64
      0025F9 40                    4572 	.db #0x40	; 64
      0025FA 00                    4573 	.db #0x00	; 0
      0025FB                       4574 __xinit__number_1:
      0025FB 30                    4575 	.db #0x30	; 48	'0'
      0025FC 70                    4576 	.db #0x70	; 112	'p'
      0025FD 30                    4577 	.db #0x30	; 48	'0'
      0025FE 30                    4578 	.db #0x30	; 48	'0'
      0025FF 30                    4579 	.db #0x30	; 48	'0'
      002600 78                    4580 	.db #0x78	; 120	'x'
      002601 00                    4581 	.db #0x00	; 0
      002602 00                    4582 	.db #0x00	; 0
      002603                       4583 __xinit__number_2:
      002603 78                    4584 	.db #0x78	; 120	'x'
      002604 84                    4585 	.db #0x84	; 132
      002605 04                    4586 	.db #0x04	; 4
      002606 18                    4587 	.db #0x18	; 24
      002607 60                    4588 	.db #0x60	; 96
      002608 80                    4589 	.db #0x80	; 128
      002609 FC                    4590 	.db #0xfc	; 252
      00260A 00                    4591 	.db #0x00	; 0
      00260B                       4592 __xinit__letter_W:
      00260B 82                    4593 	.db #0x82	; 130
      00260C 82                    4594 	.db #0x82	; 130
      00260D 82                    4595 	.db #0x82	; 130
      00260E 82                    4596 	.db #0x82	; 130
      00260F 82                    4597 	.db #0x82	; 130
      002610 AA                    4598 	.db #0xaa	; 170
      002611 54                    4599 	.db #0x54	; 84	'T'
      002612 00                    4600 	.db #0x00	; 0
      002613                       4601 __xinit__letter_N:
      002613 82                    4602 	.db #0x82	; 130
      002614 C2                    4603 	.db #0xc2	; 194
      002615 A2                    4604 	.db #0xa2	; 162
      002616 92                    4605 	.db #0x92	; 146
      002617 8A                    4606 	.db #0x8a	; 138
      002618 86                    4607 	.db #0x86	; 134
      002619 82                    4608 	.db #0x82	; 130
      00261A 00                    4609 	.db #0x00	; 0
      00261B                       4610 __xinit__explosion_small:
      00261B 00                    4611 	.db #0x00	; 0
      00261C 18                    4612 	.db #0x18	; 24
      00261D 3C                    4613 	.db #0x3c	; 60
      00261E 7E                    4614 	.db #0x7e	; 126
      00261F 7E                    4615 	.db #0x7e	; 126
      002620 3C                    4616 	.db #0x3c	; 60
      002621 18                    4617 	.db #0x18	; 24
      002622 00                    4618 	.db #0x00	; 0
      002623 00                    4619 	.db #0x00	; 0
      002624 18                    4620 	.db #0x18	; 24
      002625 3C                    4621 	.db #0x3c	; 60
      002626 7E                    4622 	.db #0x7e	; 126
      002627 7E                    4623 	.db #0x7e	; 126
      002628 3C                    4624 	.db #0x3c	; 60
      002629 18                    4625 	.db #0x18	; 24
      00262A 00                    4626 	.db #0x00	; 0
      00262B                       4627 __xinit__explosion_large:
      00262B 7E                    4628 	.db #0x7e	; 126
      00262C FF                    4629 	.db #0xff	; 255
      00262D FF                    4630 	.db #0xff	; 255
      00262E FF                    4631 	.db #0xff	; 255
      00262F FF                    4632 	.db #0xff	; 255
      002630 FF                    4633 	.db #0xff	; 255
      002631 FF                    4634 	.db #0xff	; 255
      002632 7E                    4635 	.db #0x7e	; 126
      002633 7E                    4636 	.db #0x7e	; 126
      002634 FF                    4637 	.db #0xff	; 255
      002635 FF                    4638 	.db #0xff	; 255
      002636 FF                    4639 	.db #0xff	; 255
      002637 FF                    4640 	.db #0xff	; 255
      002638 FF                    4641 	.db #0xff	; 255
      002639 FF                    4642 	.db #0xff	; 255
      00263A 7E                    4643 	.db #0x7e	; 126
      00263B                       4644 __xinit__current_row_location_of_player1:
      00263B 07                    4645 	.db #0x07	; 7
      00263C                       4646 __xinit__current_row_location_of_player2:
      00263C 07                    4647 	.db #0x07	; 7
      00263D                       4648 __xinit__b_y:
      00263D 10                    4649 	.db #0x10	; 16
      00263E                       4650 __xinit__b_x:
      00263E 08                    4651 	.db #0x08	; 8
      00263F                       4652 __xinit__direction_x:
      00263F 01                    4653 	.db #0x01	; 1
      002640                       4654 __xinit__direction_y:
      002640 01                    4655 	.db #0x01	; 1
      002641                       4656 __xinit__player_points:
      002641 00                    4657 	.db #0x00	; 0
      002642 00                    4658 	.db #0x00	; 0
                                   4659 	.area CABS    (ABS,CODE)
