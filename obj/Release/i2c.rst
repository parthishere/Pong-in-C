                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module i2c
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _P5_7
                                     12 	.globl _P5_6
                                     13 	.globl _P5_5
                                     14 	.globl _P5_4
                                     15 	.globl _P5_3
                                     16 	.globl _P5_2
                                     17 	.globl _P5_1
                                     18 	.globl _P5_0
                                     19 	.globl _P4_7
                                     20 	.globl _P4_6
                                     21 	.globl _P4_5
                                     22 	.globl _P4_4
                                     23 	.globl _P4_3
                                     24 	.globl _P4_2
                                     25 	.globl _P4_1
                                     26 	.globl _P4_0
                                     27 	.globl _PX0L
                                     28 	.globl _PT0L
                                     29 	.globl _PX1L
                                     30 	.globl _PT1L
                                     31 	.globl _PSL
                                     32 	.globl _PT2L
                                     33 	.globl _PPCL
                                     34 	.globl _EC
                                     35 	.globl _CCF0
                                     36 	.globl _CCF1
                                     37 	.globl _CCF2
                                     38 	.globl _CCF3
                                     39 	.globl _CCF4
                                     40 	.globl _CR
                                     41 	.globl _CF
                                     42 	.globl _TF2
                                     43 	.globl _EXF2
                                     44 	.globl _RCLK
                                     45 	.globl _TCLK
                                     46 	.globl _EXEN2
                                     47 	.globl _TR2
                                     48 	.globl _C_T2
                                     49 	.globl _CP_RL2
                                     50 	.globl _T2CON_7
                                     51 	.globl _T2CON_6
                                     52 	.globl _T2CON_5
                                     53 	.globl _T2CON_4
                                     54 	.globl _T2CON_3
                                     55 	.globl _T2CON_2
                                     56 	.globl _T2CON_1
                                     57 	.globl _T2CON_0
                                     58 	.globl _PT2
                                     59 	.globl _ET2
                                     60 	.globl _CY
                                     61 	.globl _AC
                                     62 	.globl _F0
                                     63 	.globl _RS1
                                     64 	.globl _RS0
                                     65 	.globl _OV
                                     66 	.globl _F1
                                     67 	.globl _P
                                     68 	.globl _PS
                                     69 	.globl _PT1
                                     70 	.globl _PX1
                                     71 	.globl _PT0
                                     72 	.globl _PX0
                                     73 	.globl _RD
                                     74 	.globl _WR
                                     75 	.globl _T1
                                     76 	.globl _T0
                                     77 	.globl _INT1
                                     78 	.globl _INT0
                                     79 	.globl _TXD
                                     80 	.globl _RXD
                                     81 	.globl _P3_7
                                     82 	.globl _P3_6
                                     83 	.globl _P3_5
                                     84 	.globl _P3_4
                                     85 	.globl _P3_3
                                     86 	.globl _P3_2
                                     87 	.globl _P3_1
                                     88 	.globl _P3_0
                                     89 	.globl _EA
                                     90 	.globl _ES
                                     91 	.globl _ET1
                                     92 	.globl _EX1
                                     93 	.globl _ET0
                                     94 	.globl _EX0
                                     95 	.globl _P2_7
                                     96 	.globl _P2_6
                                     97 	.globl _P2_5
                                     98 	.globl _P2_4
                                     99 	.globl _P2_3
                                    100 	.globl _P2_2
                                    101 	.globl _P2_1
                                    102 	.globl _P2_0
                                    103 	.globl _SM0
                                    104 	.globl _SM1
                                    105 	.globl _SM2
                                    106 	.globl _REN
                                    107 	.globl _TB8
                                    108 	.globl _RB8
                                    109 	.globl _TI
                                    110 	.globl _RI
                                    111 	.globl _P1_7
                                    112 	.globl _P1_6
                                    113 	.globl _P1_5
                                    114 	.globl _P1_4
                                    115 	.globl _P1_3
                                    116 	.globl _P1_2
                                    117 	.globl _P1_1
                                    118 	.globl _P1_0
                                    119 	.globl _TF1
                                    120 	.globl _TR1
                                    121 	.globl _TF0
                                    122 	.globl _TR0
                                    123 	.globl _IE1
                                    124 	.globl _IT1
                                    125 	.globl _IE0
                                    126 	.globl _IT0
                                    127 	.globl _P0_7
                                    128 	.globl _P0_6
                                    129 	.globl _P0_5
                                    130 	.globl _P0_4
                                    131 	.globl _P0_3
                                    132 	.globl _P0_2
                                    133 	.globl _P0_1
                                    134 	.globl _P0_0
                                    135 	.globl _EECON
                                    136 	.globl _KBF
                                    137 	.globl _KBE
                                    138 	.globl _KBLS
                                    139 	.globl _BRL
                                    140 	.globl _BDRCON
                                    141 	.globl _T2MOD
                                    142 	.globl _SPDAT
                                    143 	.globl _SPSTA
                                    144 	.globl _SPCON
                                    145 	.globl _SADEN
                                    146 	.globl _SADDR
                                    147 	.globl _WDTPRG
                                    148 	.globl _WDTRST
                                    149 	.globl _P5
                                    150 	.globl _P4
                                    151 	.globl _IPH1
                                    152 	.globl _IPL1
                                    153 	.globl _IPH0
                                    154 	.globl _IPL0
                                    155 	.globl _IEN1
                                    156 	.globl _IEN0
                                    157 	.globl _CMOD
                                    158 	.globl _CL
                                    159 	.globl _CH
                                    160 	.globl _CCON
                                    161 	.globl _CCAPM4
                                    162 	.globl _CCAPM3
                                    163 	.globl _CCAPM2
                                    164 	.globl _CCAPM1
                                    165 	.globl _CCAPM0
                                    166 	.globl _CCAP4L
                                    167 	.globl _CCAP3L
                                    168 	.globl _CCAP2L
                                    169 	.globl _CCAP1L
                                    170 	.globl _CCAP0L
                                    171 	.globl _CCAP4H
                                    172 	.globl _CCAP3H
                                    173 	.globl _CCAP2H
                                    174 	.globl _CCAP1H
                                    175 	.globl _CCAP0H
                                    176 	.globl _CKCON1
                                    177 	.globl _CKCON0
                                    178 	.globl _CKRL
                                    179 	.globl _AUXR1
                                    180 	.globl _AUXR
                                    181 	.globl _TH2
                                    182 	.globl _TL2
                                    183 	.globl _RCAP2H
                                    184 	.globl _RCAP2L
                                    185 	.globl _T2CON
                                    186 	.globl _B
                                    187 	.globl _ACC
                                    188 	.globl _PSW
                                    189 	.globl _IP
                                    190 	.globl _P3
                                    191 	.globl _IE
                                    192 	.globl _P2
                                    193 	.globl _SBUF
                                    194 	.globl _SCON
                                    195 	.globl _P1
                                    196 	.globl _TH1
                                    197 	.globl _TH0
                                    198 	.globl _TL1
                                    199 	.globl _TL0
                                    200 	.globl _TMOD
                                    201 	.globl _TCON
                                    202 	.globl _PCON
                                    203 	.globl _DPH
                                    204 	.globl _DPL
                                    205 	.globl _SP
                                    206 	.globl _P0
                                    207 	.globl _init_i2c
                                    208 	.globl _delay_i2c
                                    209 	.globl _i2c_start_bit
                                    210 	.globl _i2c_restart_bit
                                    211 	.globl _i2c_stop_bit
                                    212 	.globl _i2c_send_ack
                                    213 	.globl _i2c_send_nack
                                    214 	.globl _i2c_write
                                    215 	.globl _i2c_read
                                    216 ;--------------------------------------------------------
                                    217 ; special function registers
                                    218 ;--------------------------------------------------------
                                    219 	.area RSEG    (ABS,DATA)
      000000                        220 	.org 0x0000
                           000080   221 _P0	=	0x0080
                           000081   222 _SP	=	0x0081
                           000082   223 _DPL	=	0x0082
                           000083   224 _DPH	=	0x0083
                           000087   225 _PCON	=	0x0087
                           000088   226 _TCON	=	0x0088
                           000089   227 _TMOD	=	0x0089
                           00008A   228 _TL0	=	0x008a
                           00008B   229 _TL1	=	0x008b
                           00008C   230 _TH0	=	0x008c
                           00008D   231 _TH1	=	0x008d
                           000090   232 _P1	=	0x0090
                           000098   233 _SCON	=	0x0098
                           000099   234 _SBUF	=	0x0099
                           0000A0   235 _P2	=	0x00a0
                           0000A8   236 _IE	=	0x00a8
                           0000B0   237 _P3	=	0x00b0
                           0000B8   238 _IP	=	0x00b8
                           0000D0   239 _PSW	=	0x00d0
                           0000E0   240 _ACC	=	0x00e0
                           0000F0   241 _B	=	0x00f0
                           0000C8   242 _T2CON	=	0x00c8
                           0000CA   243 _RCAP2L	=	0x00ca
                           0000CB   244 _RCAP2H	=	0x00cb
                           0000CC   245 _TL2	=	0x00cc
                           0000CD   246 _TH2	=	0x00cd
                           00008E   247 _AUXR	=	0x008e
                           0000A2   248 _AUXR1	=	0x00a2
                           000097   249 _CKRL	=	0x0097
                           00008F   250 _CKCON0	=	0x008f
                           0000AF   251 _CKCON1	=	0x00af
                           0000FA   252 _CCAP0H	=	0x00fa
                           0000FB   253 _CCAP1H	=	0x00fb
                           0000FC   254 _CCAP2H	=	0x00fc
                           0000FD   255 _CCAP3H	=	0x00fd
                           0000FE   256 _CCAP4H	=	0x00fe
                           0000EA   257 _CCAP0L	=	0x00ea
                           0000EB   258 _CCAP1L	=	0x00eb
                           0000EC   259 _CCAP2L	=	0x00ec
                           0000ED   260 _CCAP3L	=	0x00ed
                           0000EE   261 _CCAP4L	=	0x00ee
                           0000DA   262 _CCAPM0	=	0x00da
                           0000DB   263 _CCAPM1	=	0x00db
                           0000DC   264 _CCAPM2	=	0x00dc
                           0000DD   265 _CCAPM3	=	0x00dd
                           0000DE   266 _CCAPM4	=	0x00de
                           0000D8   267 _CCON	=	0x00d8
                           0000F9   268 _CH	=	0x00f9
                           0000E9   269 _CL	=	0x00e9
                           0000D9   270 _CMOD	=	0x00d9
                           0000A8   271 _IEN0	=	0x00a8
                           0000B1   272 _IEN1	=	0x00b1
                           0000B8   273 _IPL0	=	0x00b8
                           0000B7   274 _IPH0	=	0x00b7
                           0000B2   275 _IPL1	=	0x00b2
                           0000B3   276 _IPH1	=	0x00b3
                           0000C0   277 _P4	=	0x00c0
                           0000E8   278 _P5	=	0x00e8
                           0000A6   279 _WDTRST	=	0x00a6
                           0000A7   280 _WDTPRG	=	0x00a7
                           0000A9   281 _SADDR	=	0x00a9
                           0000B9   282 _SADEN	=	0x00b9
                           0000C3   283 _SPCON	=	0x00c3
                           0000C4   284 _SPSTA	=	0x00c4
                           0000C5   285 _SPDAT	=	0x00c5
                           0000C9   286 _T2MOD	=	0x00c9
                           00009B   287 _BDRCON	=	0x009b
                           00009A   288 _BRL	=	0x009a
                           00009C   289 _KBLS	=	0x009c
                           00009D   290 _KBE	=	0x009d
                           00009E   291 _KBF	=	0x009e
                           0000D2   292 _EECON	=	0x00d2
                                    293 ;--------------------------------------------------------
                                    294 ; special function bits
                                    295 ;--------------------------------------------------------
                                    296 	.area RSEG    (ABS,DATA)
      000000                        297 	.org 0x0000
                           000080   298 _P0_0	=	0x0080
                           000081   299 _P0_1	=	0x0081
                           000082   300 _P0_2	=	0x0082
                           000083   301 _P0_3	=	0x0083
                           000084   302 _P0_4	=	0x0084
                           000085   303 _P0_5	=	0x0085
                           000086   304 _P0_6	=	0x0086
                           000087   305 _P0_7	=	0x0087
                           000088   306 _IT0	=	0x0088
                           000089   307 _IE0	=	0x0089
                           00008A   308 _IT1	=	0x008a
                           00008B   309 _IE1	=	0x008b
                           00008C   310 _TR0	=	0x008c
                           00008D   311 _TF0	=	0x008d
                           00008E   312 _TR1	=	0x008e
                           00008F   313 _TF1	=	0x008f
                           000090   314 _P1_0	=	0x0090
                           000091   315 _P1_1	=	0x0091
                           000092   316 _P1_2	=	0x0092
                           000093   317 _P1_3	=	0x0093
                           000094   318 _P1_4	=	0x0094
                           000095   319 _P1_5	=	0x0095
                           000096   320 _P1_6	=	0x0096
                           000097   321 _P1_7	=	0x0097
                           000098   322 _RI	=	0x0098
                           000099   323 _TI	=	0x0099
                           00009A   324 _RB8	=	0x009a
                           00009B   325 _TB8	=	0x009b
                           00009C   326 _REN	=	0x009c
                           00009D   327 _SM2	=	0x009d
                           00009E   328 _SM1	=	0x009e
                           00009F   329 _SM0	=	0x009f
                           0000A0   330 _P2_0	=	0x00a0
                           0000A1   331 _P2_1	=	0x00a1
                           0000A2   332 _P2_2	=	0x00a2
                           0000A3   333 _P2_3	=	0x00a3
                           0000A4   334 _P2_4	=	0x00a4
                           0000A5   335 _P2_5	=	0x00a5
                           0000A6   336 _P2_6	=	0x00a6
                           0000A7   337 _P2_7	=	0x00a7
                           0000A8   338 _EX0	=	0x00a8
                           0000A9   339 _ET0	=	0x00a9
                           0000AA   340 _EX1	=	0x00aa
                           0000AB   341 _ET1	=	0x00ab
                           0000AC   342 _ES	=	0x00ac
                           0000AF   343 _EA	=	0x00af
                           0000B0   344 _P3_0	=	0x00b0
                           0000B1   345 _P3_1	=	0x00b1
                           0000B2   346 _P3_2	=	0x00b2
                           0000B3   347 _P3_3	=	0x00b3
                           0000B4   348 _P3_4	=	0x00b4
                           0000B5   349 _P3_5	=	0x00b5
                           0000B6   350 _P3_6	=	0x00b6
                           0000B7   351 _P3_7	=	0x00b7
                           0000B0   352 _RXD	=	0x00b0
                           0000B1   353 _TXD	=	0x00b1
                           0000B2   354 _INT0	=	0x00b2
                           0000B3   355 _INT1	=	0x00b3
                           0000B4   356 _T0	=	0x00b4
                           0000B5   357 _T1	=	0x00b5
                           0000B6   358 _WR	=	0x00b6
                           0000B7   359 _RD	=	0x00b7
                           0000B8   360 _PX0	=	0x00b8
                           0000B9   361 _PT0	=	0x00b9
                           0000BA   362 _PX1	=	0x00ba
                           0000BB   363 _PT1	=	0x00bb
                           0000BC   364 _PS	=	0x00bc
                           0000D0   365 _P	=	0x00d0
                           0000D1   366 _F1	=	0x00d1
                           0000D2   367 _OV	=	0x00d2
                           0000D3   368 _RS0	=	0x00d3
                           0000D4   369 _RS1	=	0x00d4
                           0000D5   370 _F0	=	0x00d5
                           0000D6   371 _AC	=	0x00d6
                           0000D7   372 _CY	=	0x00d7
                           0000AD   373 _ET2	=	0x00ad
                           0000BD   374 _PT2	=	0x00bd
                           0000C8   375 _T2CON_0	=	0x00c8
                           0000C9   376 _T2CON_1	=	0x00c9
                           0000CA   377 _T2CON_2	=	0x00ca
                           0000CB   378 _T2CON_3	=	0x00cb
                           0000CC   379 _T2CON_4	=	0x00cc
                           0000CD   380 _T2CON_5	=	0x00cd
                           0000CE   381 _T2CON_6	=	0x00ce
                           0000CF   382 _T2CON_7	=	0x00cf
                           0000C8   383 _CP_RL2	=	0x00c8
                           0000C9   384 _C_T2	=	0x00c9
                           0000CA   385 _TR2	=	0x00ca
                           0000CB   386 _EXEN2	=	0x00cb
                           0000CC   387 _TCLK	=	0x00cc
                           0000CD   388 _RCLK	=	0x00cd
                           0000CE   389 _EXF2	=	0x00ce
                           0000CF   390 _TF2	=	0x00cf
                           0000DF   391 _CF	=	0x00df
                           0000DE   392 _CR	=	0x00de
                           0000DC   393 _CCF4	=	0x00dc
                           0000DB   394 _CCF3	=	0x00db
                           0000DA   395 _CCF2	=	0x00da
                           0000D9   396 _CCF1	=	0x00d9
                           0000D8   397 _CCF0	=	0x00d8
                           0000AE   398 _EC	=	0x00ae
                           0000BE   399 _PPCL	=	0x00be
                           0000BD   400 _PT2L	=	0x00bd
                           0000BC   401 _PSL	=	0x00bc
                           0000BB   402 _PT1L	=	0x00bb
                           0000BA   403 _PX1L	=	0x00ba
                           0000B9   404 _PT0L	=	0x00b9
                           0000B8   405 _PX0L	=	0x00b8
                           0000C0   406 _P4_0	=	0x00c0
                           0000C1   407 _P4_1	=	0x00c1
                           0000C2   408 _P4_2	=	0x00c2
                           0000C3   409 _P4_3	=	0x00c3
                           0000C4   410 _P4_4	=	0x00c4
                           0000C5   411 _P4_5	=	0x00c5
                           0000C6   412 _P4_6	=	0x00c6
                           0000C7   413 _P4_7	=	0x00c7
                           0000E8   414 _P5_0	=	0x00e8
                           0000E9   415 _P5_1	=	0x00e9
                           0000EA   416 _P5_2	=	0x00ea
                           0000EB   417 _P5_3	=	0x00eb
                           0000EC   418 _P5_4	=	0x00ec
                           0000ED   419 _P5_5	=	0x00ed
                           0000EE   420 _P5_6	=	0x00ee
                           0000EF   421 _P5_7	=	0x00ef
                                    422 ;--------------------------------------------------------
                                    423 ; overlayable register banks
                                    424 ;--------------------------------------------------------
                                    425 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        426 	.ds 8
                                    427 ;--------------------------------------------------------
                                    428 ; internal ram data
                                    429 ;--------------------------------------------------------
                                    430 	.area DSEG    (DATA)
                                    431 ;--------------------------------------------------------
                                    432 ; overlayable items in internal ram 
                                    433 ;--------------------------------------------------------
                                    434 ;--------------------------------------------------------
                                    435 ; indirectly addressable internal ram data
                                    436 ;--------------------------------------------------------
                                    437 	.area ISEG    (DATA)
                                    438 ;--------------------------------------------------------
                                    439 ; absolute internal ram data
                                    440 ;--------------------------------------------------------
                                    441 	.area IABS    (ABS,DATA)
                                    442 	.area IABS    (ABS,DATA)
                                    443 ;--------------------------------------------------------
                                    444 ; bit data
                                    445 ;--------------------------------------------------------
                                    446 	.area BSEG    (BIT)
                                    447 ;--------------------------------------------------------
                                    448 ; paged external ram data
                                    449 ;--------------------------------------------------------
                                    450 	.area PSEG    (PAG,XDATA)
                                    451 ;--------------------------------------------------------
                                    452 ; external ram data
                                    453 ;--------------------------------------------------------
                                    454 	.area XSEG    (XDATA)
      000024                        455 _i2c_write_Byte_65536_39:
      000024                        456 	.ds 1
      000025                        457 _i2c_read_RxData_65536_44:
      000025                        458 	.ds 1
                                    459 ;--------------------------------------------------------
                                    460 ; absolute external ram data
                                    461 ;--------------------------------------------------------
                                    462 	.area XABS    (ABS,XDATA)
                                    463 ;--------------------------------------------------------
                                    464 ; external initialized ram data
                                    465 ;--------------------------------------------------------
                                    466 	.area XISEG   (XDATA)
                                    467 	.area HOME    (CODE)
                                    468 	.area GSINIT0 (CODE)
                                    469 	.area GSINIT1 (CODE)
                                    470 	.area GSINIT2 (CODE)
                                    471 	.area GSINIT3 (CODE)
                                    472 	.area GSINIT4 (CODE)
                                    473 	.area GSINIT5 (CODE)
                                    474 	.area GSINIT  (CODE)
                                    475 	.area GSFINAL (CODE)
                                    476 	.area CSEG    (CODE)
                                    477 ;--------------------------------------------------------
                                    478 ; global & static initialisations
                                    479 ;--------------------------------------------------------
                                    480 	.area HOME    (CODE)
                                    481 	.area GSINIT  (CODE)
                                    482 	.area GSFINAL (CODE)
                                    483 	.area GSINIT  (CODE)
                                    484 ;--------------------------------------------------------
                                    485 ; Home
                                    486 ;--------------------------------------------------------
                                    487 	.area HOME    (CODE)
                                    488 	.area HOME    (CODE)
                                    489 ;--------------------------------------------------------
                                    490 ; code
                                    491 ;--------------------------------------------------------
                                    492 	.area CSEG    (CODE)
                                    493 ;------------------------------------------------------------
                                    494 ;Allocation info for local variables in function 'init_i2c'
                                    495 ;------------------------------------------------------------
                                    496 ;	i2c.c:4: void init_i2c(void){
                                    497 ;	-----------------------------------------
                                    498 ;	 function init_i2c
                                    499 ;	-----------------------------------------
      00166D                        500 _init_i2c:
                           000007   501 	ar7 = 0x07
                           000006   502 	ar6 = 0x06
                           000005   503 	ar5 = 0x05
                           000004   504 	ar4 = 0x04
                           000003   505 	ar3 = 0x03
                           000002   506 	ar2 = 0x02
                           000001   507 	ar1 = 0x01
                           000000   508 	ar0 = 0x00
                                    509 ;	i2c.c:5: SDA_HIGH;
                                    510 ;	assignBit
      00166D D2 95            [12]  511 	setb	_P1_5
                                    512 ;	i2c.c:6: SCL_HIGH;
                                    513 ;	assignBit
      00166F D2 94            [12]  514 	setb	_P1_4
                                    515 ;	i2c.c:7: }
      001671 22               [24]  516 	ret
                                    517 ;------------------------------------------------------------
                                    518 ;Allocation info for local variables in function 'delay_i2c'
                                    519 ;------------------------------------------------------------
                                    520 ;d                         Allocated with name '_delay_i2c_d_65536_26'
                                    521 ;i                         Allocated with name '_delay_i2c_i_65536_27'
                                    522 ;limit                     Allocated with name '_delay_i2c_limit_65536_27'
                                    523 ;------------------------------------------------------------
                                    524 ;	i2c.c:13: void delay_i2c(int d)
                                    525 ;	-----------------------------------------
                                    526 ;	 function delay_i2c
                                    527 ;	-----------------------------------------
      001672                        528 _delay_i2c:
                                    529 ;	i2c.c:18: for(i=0;i<1;i++);
      001672 7E 01            [12]  530 	mov	r6,#0x01
      001674 7F 00            [12]  531 	mov	r7,#0x00
      001676                        532 00104$:
      001676 1E               [12]  533 	dec	r6
      001677 BE FF 01         [24]  534 	cjne	r6,#0xff,00113$
      00167A 1F               [12]  535 	dec	r7
      00167B                        536 00113$:
      00167B EE               [12]  537 	mov	a,r6
      00167C 4F               [12]  538 	orl	a,r7
      00167D 70 F7            [24]  539 	jnz	00104$
                                    540 ;	i2c.c:19: }
      00167F 22               [24]  541 	ret
                                    542 ;------------------------------------------------------------
                                    543 ;Allocation info for local variables in function 'i2c_start_bit'
                                    544 ;------------------------------------------------------------
                                    545 ;	i2c.c:26: void i2c_start_bit(void)
                                    546 ;	-----------------------------------------
                                    547 ;	 function i2c_start_bit
                                    548 ;	-----------------------------------------
      001680                        549 _i2c_start_bit:
                                    550 ;	i2c.c:28: SCL_HIGH;          // Set SCL to high
                                    551 ;	assignBit
      001680 D2 94            [12]  552 	setb	_P1_4
                                    553 ;	i2c.c:29: SDA_HIGH;          // Set SDA to high
                                    554 ;	assignBit
      001682 D2 95            [12]  555 	setb	_P1_5
                                    556 ;	i2c.c:30: delay_i2c(Delay);  // Wait for half bit time
      001684 90 00 0F         [24]  557 	mov	dptr,#0x000f
      001687 12 16 72         [24]  558 	lcall	_delay_i2c
                                    559 ;	i2c.c:31: SDA_LOW;           // Create a high-to-low transition on SDA
                                    560 ;	assignBit
      00168A C2 95            [12]  561 	clr	_P1_5
                                    562 ;	i2c.c:32: delay_i2c(Delay);  // Hold the condition for half bit time
      00168C 90 00 0F         [24]  563 	mov	dptr,#0x000f
                                    564 ;	i2c.c:33: }
      00168F 02 16 72         [24]  565 	ljmp	_delay_i2c
                                    566 ;------------------------------------------------------------
                                    567 ;Allocation info for local variables in function 'i2c_restart_bit'
                                    568 ;------------------------------------------------------------
                                    569 ;	i2c.c:40: void i2c_restart_bit(void)
                                    570 ;	-----------------------------------------
                                    571 ;	 function i2c_restart_bit
                                    572 ;	-----------------------------------------
      001692                        573 _i2c_restart_bit:
                                    574 ;	i2c.c:42: SCL_LOW;           // Make SCL low
                                    575 ;	assignBit
      001692 C2 94            [12]  576 	clr	_P1_4
                                    577 ;	i2c.c:43: delay_i2c(Delay/2); // Prepare to change SDA
      001694 90 00 07         [24]  578 	mov	dptr,#0x0007
      001697 12 16 72         [24]  579 	lcall	_delay_i2c
                                    580 ;	i2c.c:44: SDA_HIGH;          // Set SDA to high
                                    581 ;	assignBit
      00169A D2 95            [12]  582 	setb	_P1_5
                                    583 ;	i2c.c:45: delay_i2c(Delay/2); // Wait a quarter bit time
      00169C 90 00 07         [24]  584 	mov	dptr,#0x0007
      00169F 12 16 72         [24]  585 	lcall	_delay_i2c
                                    586 ;	i2c.c:46: SCL_HIGH;          // Set SCL to high
                                    587 ;	assignBit
      0016A2 D2 94            [12]  588 	setb	_P1_4
                                    589 ;	i2c.c:47: delay_i2c(Delay/2); // Wait a quarter bit time
      0016A4 90 00 07         [24]  590 	mov	dptr,#0x0007
      0016A7 12 16 72         [24]  591 	lcall	_delay_i2c
                                    592 ;	i2c.c:48: SDA_LOW;           // Set SDA to low
                                    593 ;	assignBit
      0016AA C2 95            [12]  594 	clr	_P1_5
                                    595 ;	i2c.c:49: delay_i2c(Delay/2); // Hold the condition for a quarter bit time
      0016AC 90 00 07         [24]  596 	mov	dptr,#0x0007
                                    597 ;	i2c.c:50: }
      0016AF 02 16 72         [24]  598 	ljmp	_delay_i2c
                                    599 ;------------------------------------------------------------
                                    600 ;Allocation info for local variables in function 'i2c_stop_bit'
                                    601 ;------------------------------------------------------------
                                    602 ;	i2c.c:58: void i2c_stop_bit(void)
                                    603 ;	-----------------------------------------
                                    604 ;	 function i2c_stop_bit
                                    605 ;	-----------------------------------------
      0016B2                        606 _i2c_stop_bit:
                                    607 ;	i2c.c:60: SCL_LOW;           // Make SCL low
                                    608 ;	assignBit
      0016B2 C2 94            [12]  609 	clr	_P1_4
                                    610 ;	i2c.c:61: delay_i2c(Delay/2); // Prepare to change SDA
      0016B4 90 00 07         [24]  611 	mov	dptr,#0x0007
      0016B7 12 16 72         [24]  612 	lcall	_delay_i2c
                                    613 ;	i2c.c:62: SDA_LOW;           // Make SDA low
                                    614 ;	assignBit
      0016BA C2 95            [12]  615 	clr	_P1_5
                                    616 ;	i2c.c:63: delay_i2c(Delay/2); // Wait a quarter bit time
      0016BC 90 00 07         [24]  617 	mov	dptr,#0x0007
      0016BF 12 16 72         [24]  618 	lcall	_delay_i2c
                                    619 ;	i2c.c:64: SCL_HIGH;          // Set SCL to high
                                    620 ;	assignBit
      0016C2 D2 94            [12]  621 	setb	_P1_4
                                    622 ;	i2c.c:65: delay_i2c(Delay/2); // Wait a quarter bit time
      0016C4 90 00 07         [24]  623 	mov	dptr,#0x0007
      0016C7 12 16 72         [24]  624 	lcall	_delay_i2c
                                    625 ;	i2c.c:66: SDA_HIGH;          // Create a low-to-high transition on SDA
                                    626 ;	assignBit
      0016CA D2 95            [12]  627 	setb	_P1_5
                                    628 ;	i2c.c:68: }
      0016CC 22               [24]  629 	ret
                                    630 ;------------------------------------------------------------
                                    631 ;Allocation info for local variables in function 'i2c_send_ack'
                                    632 ;------------------------------------------------------------
                                    633 ;	i2c.c:76: void i2c_send_ack(void)
                                    634 ;	-----------------------------------------
                                    635 ;	 function i2c_send_ack
                                    636 ;	-----------------------------------------
      0016CD                        637 _i2c_send_ack:
                                    638 ;	i2c.c:78: SCL_LOW;           // Make SCL low
                                    639 ;	assignBit
      0016CD C2 94            [12]  640 	clr	_P1_4
                                    641 ;	i2c.c:79: delay_i2c(Delay/2); // Prepare to send ACK
      0016CF 90 00 07         [24]  642 	mov	dptr,#0x0007
      0016D2 12 16 72         [24]  643 	lcall	_delay_i2c
                                    644 ;	i2c.c:80: SDA_LOW;           // Pull SDA low to indicate ACK
                                    645 ;	assignBit
      0016D5 C2 95            [12]  646 	clr	_P1_5
                                    647 ;	i2c.c:81: delay_i2c(Delay/2); // Wait a quarter bit time
      0016D7 90 00 07         [24]  648 	mov	dptr,#0x0007
      0016DA 12 16 72         [24]  649 	lcall	_delay_i2c
                                    650 ;	i2c.c:82: SCL_HIGH;          // Make SCL high
                                    651 ;	assignBit
      0016DD D2 94            [12]  652 	setb	_P1_4
                                    653 ;	i2c.c:83: delay_i2c(Delay);  // Hold the condition for half bit time
      0016DF 90 00 0F         [24]  654 	mov	dptr,#0x000f
                                    655 ;	i2c.c:84: }
      0016E2 02 16 72         [24]  656 	ljmp	_delay_i2c
                                    657 ;------------------------------------------------------------
                                    658 ;Allocation info for local variables in function 'i2c_send_nack'
                                    659 ;------------------------------------------------------------
                                    660 ;	i2c.c:91: void i2c_send_nack(void)
                                    661 ;	-----------------------------------------
                                    662 ;	 function i2c_send_nack
                                    663 ;	-----------------------------------------
      0016E5                        664 _i2c_send_nack:
                                    665 ;	i2c.c:93: SCL_LOW;				// Make SCK pin low
                                    666 ;	assignBit
      0016E5 C2 94            [12]  667 	clr	_P1_4
                                    668 ;	i2c.c:94: delay_i2c(Delay/2);	// Data pin should change it's value,
      0016E7 90 00 07         [24]  669 	mov	dptr,#0x0007
      0016EA 12 16 72         [24]  670 	lcall	_delay_i2c
                                    671 ;	i2c.c:96: SDA_HIGH;				// Make SDA high
                                    672 ;	assignBit
      0016ED D2 95            [12]  673 	setb	_P1_5
                                    674 ;	i2c.c:97: delay_i2c(Delay/2);	// 1/4 bit delay
      0016EF 90 00 07         [24]  675 	mov	dptr,#0x0007
      0016F2 12 16 72         [24]  676 	lcall	_delay_i2c
                                    677 ;	i2c.c:98: SCL_HIGH;				// Make SCK pin high
                                    678 ;	assignBit
      0016F5 D2 94            [12]  679 	setb	_P1_4
                                    680 ;	i2c.c:99: delay_i2c(Delay);	// Half bit delay
      0016F7 90 00 0F         [24]  681 	mov	dptr,#0x000f
                                    682 ;	i2c.c:100: }
      0016FA 02 16 72         [24]  683 	ljmp	_delay_i2c
                                    684 ;------------------------------------------------------------
                                    685 ;Allocation info for local variables in function 'i2c_write'
                                    686 ;------------------------------------------------------------
                                    687 ;Byte                      Allocated with name '_i2c_write_Byte_65536_39'
                                    688 ;i                         Allocated with name '_i2c_write_i_65536_40'
                                    689 ;------------------------------------------------------------
                                    690 ;	i2c.c:114: uint8_t i2c_write(unsigned char Byte)
                                    691 ;	-----------------------------------------
                                    692 ;	 function i2c_write
                                    693 ;	-----------------------------------------
      0016FD                        694 _i2c_write:
      0016FD E5 82            [12]  695 	mov	a,dpl
      0016FF 90 00 24         [24]  696 	mov	dptr,#_i2c_write_Byte_65536_39
      001702 F0               [24]  697 	movx	@dptr,a
                                    698 ;	i2c.c:118: for(i = 0; i < 8; i++) // Repeat for every bit
      001703 E0               [24]  699 	movx	a,@dptr
      001704 FF               [12]  700 	mov	r7,a
      001705 7E 00            [12]  701 	mov	r6,#0x00
      001707                        702 00105$:
                                    703 ;	i2c.c:120: SCL_LOW; // Make SCL pin low
                                    704 ;	assignBit
      001707 C2 94            [12]  705 	clr	_P1_4
                                    706 ;	i2c.c:121: delay_i2c(Delay/2); // Ensure SDA can change when SCL is low
      001709 90 00 07         [24]  707 	mov	dptr,#0x0007
      00170C C0 07            [24]  708 	push	ar7
      00170E C0 06            [24]  709 	push	ar6
      001710 12 16 72         [24]  710 	lcall	_delay_i2c
      001713 D0 06            [24]  711 	pop	ar6
      001715 D0 07            [24]  712 	pop	ar7
                                    713 ;	i2c.c:124: if((Byte << i) & 0x80) // If the current bit of Byte is 1, make SDA high
      001717 8F 04            [24]  714 	mov	ar4,r7
      001719 7D 00            [12]  715 	mov	r5,#0x00
      00171B 8E F0            [24]  716 	mov	b,r6
      00171D 05 F0            [12]  717 	inc	b
      00171F 80 06            [24]  718 	sjmp	00123$
      001721                        719 00122$:
      001721 EC               [12]  720 	mov	a,r4
      001722 2C               [12]  721 	add	a,r4
      001723 FC               [12]  722 	mov	r4,a
      001724 ED               [12]  723 	mov	a,r5
      001725 33               [12]  724 	rlc	a
      001726 FD               [12]  725 	mov	r5,a
      001727                        726 00123$:
      001727 D5 F0 F7         [24]  727 	djnz	b,00122$
      00172A EC               [12]  728 	mov	a,r4
      00172B 30 E7 04         [24]  729 	jnb	acc.7,00102$
                                    730 ;	i2c.c:125: SDA_HIGH;
                                    731 ;	assignBit
      00172E D2 95            [12]  732 	setb	_P1_5
      001730 80 02            [24]  733 	sjmp	00103$
      001732                        734 00102$:
                                    735 ;	i2c.c:127: SDA_LOW;
                                    736 ;	assignBit
      001732 C2 95            [12]  737 	clr	_P1_5
      001734                        738 00103$:
                                    739 ;	i2c.c:129: delay_i2c(Delay/2); // Wait for a short period
      001734 90 00 07         [24]  740 	mov	dptr,#0x0007
      001737 C0 07            [24]  741 	push	ar7
      001739 C0 06            [24]  742 	push	ar6
      00173B 12 16 72         [24]  743 	lcall	_delay_i2c
                                    744 ;	i2c.c:130: SCL_HIGH; // Make SCL high so that slave can latch the bit
                                    745 ;	assignBit
      00173E D2 94            [12]  746 	setb	_P1_4
                                    747 ;	i2c.c:131: delay_i2c(Delay); // Wait for the data bit to be latched by the slave
      001740 90 00 0F         [24]  748 	mov	dptr,#0x000f
      001743 12 16 72         [24]  749 	lcall	_delay_i2c
      001746 D0 06            [24]  750 	pop	ar6
      001748 D0 07            [24]  751 	pop	ar7
                                    752 ;	i2c.c:118: for(i = 0; i < 8; i++) // Repeat for every bit
      00174A 0E               [12]  753 	inc	r6
      00174B BE 08 00         [24]  754 	cjne	r6,#0x08,00125$
      00174E                        755 00125$:
      00174E 40 B7            [24]  756 	jc	00105$
                                    757 ;	i2c.c:135: SCL_LOW; // Make SCL low
                                    758 ;	assignBit
      001750 C2 94            [12]  759 	clr	_P1_4
                                    760 ;	i2c.c:136: SDA_HIGH; // SDA must be high to act as an input
                                    761 ;	assignBit
      001752 D2 95            [12]  762 	setb	_P1_5
                                    763 ;	i2c.c:137: delay_i2c(Delay); // Wait for a short period
      001754 90 00 0F         [24]  764 	mov	dptr,#0x000f
      001757 12 16 72         [24]  765 	lcall	_delay_i2c
                                    766 ;	i2c.c:138: SCL_HIGH; // Make SCL high to clock out the ACK bit
                                    767 ;	assignBit
      00175A D2 94            [12]  768 	setb	_P1_4
                                    769 ;	i2c.c:139: delay_i2c(Delay); // Wait for the ACK bit to be received
      00175C 90 00 0F         [24]  770 	mov	dptr,#0x000f
      00175F 12 16 72         [24]  771 	lcall	_delay_i2c
                                    772 ;	i2c.c:141: return SDA; // Return the state of SDA, which is the ACK bit
      001762 A2 95            [12]  773 	mov	c,_P1_5
      001764 E4               [12]  774 	clr	a
      001765 33               [12]  775 	rlc	a
                                    776 ;	i2c.c:142: }
      001766 F5 82            [12]  777 	mov	dpl,a
      001768 22               [24]  778 	ret
                                    779 ;------------------------------------------------------------
                                    780 ;Allocation info for local variables in function 'i2c_read'
                                    781 ;------------------------------------------------------------
                                    782 ;i                         Allocated with name '_i2c_read_i_65536_44'
                                    783 ;d                         Allocated with name '_i2c_read_d_65536_44'
                                    784 ;RxData                    Allocated with name '_i2c_read_RxData_65536_44'
                                    785 ;------------------------------------------------------------
                                    786 ;	i2c.c:153: uint8_t i2c_read(void)
                                    787 ;	-----------------------------------------
                                    788 ;	 function i2c_read
                                    789 ;	-----------------------------------------
      001769                        790 _i2c_read:
                                    791 ;	i2c.c:155: uint8_t i = 0, d = 0, RxData = 0;
      001769 90 00 25         [24]  792 	mov	dptr,#_i2c_read_RxData_65536_44
      00176C E4               [12]  793 	clr	a
      00176D F0               [24]  794 	movx	@dptr,a
                                    795 ;	i2c.c:157: for(i = 0; i < 8; i++) // Loop to read each bit
      00176E 7F 00            [12]  796 	mov	r7,#0x00
      001770                        797 00102$:
                                    798 ;	i2c.c:159: SCL_LOW;			// Ensure SCL is low before changing SDA
                                    799 ;	assignBit
      001770 C2 94            [12]  800 	clr	_P1_4
                                    801 ;	i2c.c:160: SDA_HIGH;			// Set SDA to input mode by making it high (not driving the line)
                                    802 ;	assignBit
      001772 D2 95            [12]  803 	setb	_P1_5
                                    804 ;	i2c.c:161: delay_i2c(Delay);	// Wait for half bit duration
      001774 90 00 0F         [24]  805 	mov	dptr,#0x000f
      001777 C0 07            [24]  806 	push	ar7
      001779 12 16 72         [24]  807 	lcall	_delay_i2c
                                    808 ;	i2c.c:162: SCL_HIGH;			// Clock the SCL line high to read the bit
                                    809 ;	assignBit
      00177C D2 94            [12]  810 	setb	_P1_4
                                    811 ;	i2c.c:163: delay_i2c(Delay/2);	// Wait a quarter bit duration
      00177E 90 00 07         [24]  812 	mov	dptr,#0x0007
      001781 12 16 72         [24]  813 	lcall	_delay_i2c
      001784 D0 07            [24]  814 	pop	ar7
                                    815 ;	i2c.c:164: d = SDA;			// Read the current bit from SDA
      001786 A2 95            [12]  816 	mov	c,_P1_5
      001788 E4               [12]  817 	clr	a
      001789 33               [12]  818 	rlc	a
      00178A FE               [12]  819 	mov	r6,a
                                    820 ;	i2c.c:165: RxData = RxData | (d << (7 - i)); // Shift the bit to its proper position in RxData
      00178B 8F 05            [24]  821 	mov	ar5,r7
      00178D 74 07            [12]  822 	mov	a,#0x07
      00178F C3               [12]  823 	clr	c
      001790 9D               [12]  824 	subb	a,r5
      001791 FD               [12]  825 	mov	r5,a
      001792 8D F0            [24]  826 	mov	b,r5
      001794 05 F0            [12]  827 	inc	b
      001796 EE               [12]  828 	mov	a,r6
      001797 80 02            [24]  829 	sjmp	00117$
      001799                        830 00115$:
      001799 25 E0            [12]  831 	add	a,acc
      00179B                        832 00117$:
      00179B D5 F0 FB         [24]  833 	djnz	b,00115$
      00179E FD               [12]  834 	mov	r5,a
      00179F 90 00 25         [24]  835 	mov	dptr,#_i2c_read_RxData_65536_44
      0017A2 E0               [24]  836 	movx	a,@dptr
      0017A3 4D               [12]  837 	orl	a,r5
      0017A4 F0               [24]  838 	movx	@dptr,a
                                    839 ;	i2c.c:166: delay_i2c(Delay/2);	// Wait a quarter bit duration
      0017A5 90 00 07         [24]  840 	mov	dptr,#0x0007
      0017A8 C0 07            [24]  841 	push	ar7
      0017AA 12 16 72         [24]  842 	lcall	_delay_i2c
      0017AD D0 07            [24]  843 	pop	ar7
                                    844 ;	i2c.c:157: for(i = 0; i < 8; i++) // Loop to read each bit
      0017AF 0F               [12]  845 	inc	r7
      0017B0 BF 08 00         [24]  846 	cjne	r7,#0x08,00118$
      0017B3                        847 00118$:
      0017B3 40 BB            [24]  848 	jc	00102$
                                    849 ;	i2c.c:169: i2c_send_nack(); // Send NACK after reading the last bit
      0017B5 12 16 E5         [24]  850 	lcall	_i2c_send_nack
                                    851 ;	i2c.c:171: return RxData; // Return the assembled byte
      0017B8 90 00 25         [24]  852 	mov	dptr,#_i2c_read_RxData_65536_44
      0017BB E0               [24]  853 	movx	a,@dptr
                                    854 ;	i2c.c:172: }
      0017BC F5 82            [12]  855 	mov	dpl,a
      0017BE 22               [24]  856 	ret
                                    857 	.area CSEG    (CODE)
                                    858 	.area CONST   (CODE)
                                    859 	.area XINIT   (CODE)
                                    860 	.area CABS    (ABS,CODE)
