                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _lcdcreatechar
                                     13 	.globl _send_addr_read_data
                                     14 	.globl _init_uart
                                     15 	.globl _init_timer0
                                     16 	.globl _get_cursor_address
                                     17 	.globl __sdcc_external_startup
                                     18 	.globl _printf_tiny
                                     19 	.globl _printf
                                     20 	.globl _P5_7
                                     21 	.globl _P5_6
                                     22 	.globl _P5_5
                                     23 	.globl _P5_4
                                     24 	.globl _P5_3
                                     25 	.globl _P5_2
                                     26 	.globl _P5_1
                                     27 	.globl _P5_0
                                     28 	.globl _P4_7
                                     29 	.globl _P4_6
                                     30 	.globl _P4_5
                                     31 	.globl _P4_4
                                     32 	.globl _P4_3
                                     33 	.globl _P4_2
                                     34 	.globl _P4_1
                                     35 	.globl _P4_0
                                     36 	.globl _PX0L
                                     37 	.globl _PT0L
                                     38 	.globl _PX1L
                                     39 	.globl _PT1L
                                     40 	.globl _PSL
                                     41 	.globl _PT2L
                                     42 	.globl _PPCL
                                     43 	.globl _EC
                                     44 	.globl _CCF0
                                     45 	.globl _CCF1
                                     46 	.globl _CCF2
                                     47 	.globl _CCF3
                                     48 	.globl _CCF4
                                     49 	.globl _CR
                                     50 	.globl _CF
                                     51 	.globl _TF2
                                     52 	.globl _EXF2
                                     53 	.globl _RCLK
                                     54 	.globl _TCLK
                                     55 	.globl _EXEN2
                                     56 	.globl _TR2
                                     57 	.globl _C_T2
                                     58 	.globl _CP_RL2
                                     59 	.globl _T2CON_7
                                     60 	.globl _T2CON_6
                                     61 	.globl _T2CON_5
                                     62 	.globl _T2CON_4
                                     63 	.globl _T2CON_3
                                     64 	.globl _T2CON_2
                                     65 	.globl _T2CON_1
                                     66 	.globl _T2CON_0
                                     67 	.globl _PT2
                                     68 	.globl _ET2
                                     69 	.globl _CY
                                     70 	.globl _AC
                                     71 	.globl _F0
                                     72 	.globl _RS1
                                     73 	.globl _RS0
                                     74 	.globl _OV
                                     75 	.globl _F1
                                     76 	.globl _P
                                     77 	.globl _PS
                                     78 	.globl _PT1
                                     79 	.globl _PX1
                                     80 	.globl _PT0
                                     81 	.globl _PX0
                                     82 	.globl _RD
                                     83 	.globl _WR
                                     84 	.globl _T1
                                     85 	.globl _T0
                                     86 	.globl _INT1
                                     87 	.globl _INT0
                                     88 	.globl _TXD
                                     89 	.globl _RXD
                                     90 	.globl _P3_7
                                     91 	.globl _P3_6
                                     92 	.globl _P3_5
                                     93 	.globl _P3_4
                                     94 	.globl _P3_3
                                     95 	.globl _P3_2
                                     96 	.globl _P3_1
                                     97 	.globl _P3_0
                                     98 	.globl _EA
                                     99 	.globl _ES
                                    100 	.globl _ET1
                                    101 	.globl _EX1
                                    102 	.globl _ET0
                                    103 	.globl _EX0
                                    104 	.globl _P2_7
                                    105 	.globl _P2_6
                                    106 	.globl _P2_5
                                    107 	.globl _P2_4
                                    108 	.globl _P2_3
                                    109 	.globl _P2_2
                                    110 	.globl _P2_1
                                    111 	.globl _P2_0
                                    112 	.globl _SM0
                                    113 	.globl _SM1
                                    114 	.globl _SM2
                                    115 	.globl _REN
                                    116 	.globl _TB8
                                    117 	.globl _RB8
                                    118 	.globl _TI
                                    119 	.globl _RI
                                    120 	.globl _P1_7
                                    121 	.globl _P1_6
                                    122 	.globl _P1_5
                                    123 	.globl _P1_4
                                    124 	.globl _P1_3
                                    125 	.globl _P1_2
                                    126 	.globl _P1_1
                                    127 	.globl _P1_0
                                    128 	.globl _TF1
                                    129 	.globl _TR1
                                    130 	.globl _TF0
                                    131 	.globl _TR0
                                    132 	.globl _IE1
                                    133 	.globl _IT1
                                    134 	.globl _IE0
                                    135 	.globl _IT0
                                    136 	.globl _P0_7
                                    137 	.globl _P0_6
                                    138 	.globl _P0_5
                                    139 	.globl _P0_4
                                    140 	.globl _P0_3
                                    141 	.globl _P0_2
                                    142 	.globl _P0_1
                                    143 	.globl _P0_0
                                    144 	.globl _EECON
                                    145 	.globl _KBF
                                    146 	.globl _KBE
                                    147 	.globl _KBLS
                                    148 	.globl _BRL
                                    149 	.globl _BDRCON
                                    150 	.globl _T2MOD
                                    151 	.globl _SPDAT
                                    152 	.globl _SPSTA
                                    153 	.globl _SPCON
                                    154 	.globl _SADEN
                                    155 	.globl _SADDR
                                    156 	.globl _WDTPRG
                                    157 	.globl _WDTRST
                                    158 	.globl _P5
                                    159 	.globl _P4
                                    160 	.globl _IPH1
                                    161 	.globl _IPL1
                                    162 	.globl _IPH0
                                    163 	.globl _IPL0
                                    164 	.globl _IEN1
                                    165 	.globl _IEN0
                                    166 	.globl _CMOD
                                    167 	.globl _CL
                                    168 	.globl _CH
                                    169 	.globl _CCON
                                    170 	.globl _CCAPM4
                                    171 	.globl _CCAPM3
                                    172 	.globl _CCAPM2
                                    173 	.globl _CCAPM1
                                    174 	.globl _CCAPM0
                                    175 	.globl _CCAP4L
                                    176 	.globl _CCAP3L
                                    177 	.globl _CCAP2L
                                    178 	.globl _CCAP1L
                                    179 	.globl _CCAP0L
                                    180 	.globl _CCAP4H
                                    181 	.globl _CCAP3H
                                    182 	.globl _CCAP2H
                                    183 	.globl _CCAP1H
                                    184 	.globl _CCAP0H
                                    185 	.globl _CKCON1
                                    186 	.globl _CKCON0
                                    187 	.globl _CKRL
                                    188 	.globl _AUXR1
                                    189 	.globl _AUXR
                                    190 	.globl _TH2
                                    191 	.globl _TL2
                                    192 	.globl _RCAP2H
                                    193 	.globl _RCAP2L
                                    194 	.globl _T2CON
                                    195 	.globl _B
                                    196 	.globl _ACC
                                    197 	.globl _PSW
                                    198 	.globl _IP
                                    199 	.globl _P3
                                    200 	.globl _IE
                                    201 	.globl _P2
                                    202 	.globl _SBUF
                                    203 	.globl _SCON
                                    204 	.globl _P1
                                    205 	.globl _TH1
                                    206 	.globl _TH0
                                    207 	.globl _TL1
                                    208 	.globl _TL0
                                    209 	.globl _TMOD
                                    210 	.globl _TCON
                                    211 	.globl _PCON
                                    212 	.globl _DPH
                                    213 	.globl _DPL
                                    214 	.globl _SP
                                    215 	.globl _P0
                                    216 	.globl _minute_two
                                    217 	.globl _minute_one
                                    218 	.globl _second_two
                                    219 	.globl _second_one
                                    220 	.globl _one_tenth_second
                                    221 	.globl _counter
                                    222 	.globl _lcdcreatechar_PARM_2
                                    223 	.globl _send_addr_read_data_PARM_2
                                    224 	.globl _lcdgotoxy_PARM_2
                                    225 	.globl _save_cursor_address
                                    226 	.globl _lcd_ptr
                                    227 	.globl _putchar
                                    228 	.globl _getchar
                                    229 	.globl _delay
                                    230 	.globl _lcdinit
                                    231 	.globl _lcdbusywait
                                    232 	.globl _lcdgotoaddr
                                    233 	.globl _lcdgotoxy
                                    234 	.globl _lcdputch
                                    235 	.globl _lcdputstr
                                    236 	.globl _lcdclear
                                    237 	.globl _valid_input
                                    238 	.globl _timer0_ISR
                                    239 ;--------------------------------------------------------
                                    240 ; special function registers
                                    241 ;--------------------------------------------------------
                                    242 	.area RSEG    (ABS,DATA)
      000000                        243 	.org 0x0000
                           000080   244 _P0	=	0x0080
                           000081   245 _SP	=	0x0081
                           000082   246 _DPL	=	0x0082
                           000083   247 _DPH	=	0x0083
                           000087   248 _PCON	=	0x0087
                           000088   249 _TCON	=	0x0088
                           000089   250 _TMOD	=	0x0089
                           00008A   251 _TL0	=	0x008a
                           00008B   252 _TL1	=	0x008b
                           00008C   253 _TH0	=	0x008c
                           00008D   254 _TH1	=	0x008d
                           000090   255 _P1	=	0x0090
                           000098   256 _SCON	=	0x0098
                           000099   257 _SBUF	=	0x0099
                           0000A0   258 _P2	=	0x00a0
                           0000A8   259 _IE	=	0x00a8
                           0000B0   260 _P3	=	0x00b0
                           0000B8   261 _IP	=	0x00b8
                           0000D0   262 _PSW	=	0x00d0
                           0000E0   263 _ACC	=	0x00e0
                           0000F0   264 _B	=	0x00f0
                           0000C8   265 _T2CON	=	0x00c8
                           0000CA   266 _RCAP2L	=	0x00ca
                           0000CB   267 _RCAP2H	=	0x00cb
                           0000CC   268 _TL2	=	0x00cc
                           0000CD   269 _TH2	=	0x00cd
                           00008E   270 _AUXR	=	0x008e
                           0000A2   271 _AUXR1	=	0x00a2
                           000097   272 _CKRL	=	0x0097
                           00008F   273 _CKCON0	=	0x008f
                           0000AF   274 _CKCON1	=	0x00af
                           0000FA   275 _CCAP0H	=	0x00fa
                           0000FB   276 _CCAP1H	=	0x00fb
                           0000FC   277 _CCAP2H	=	0x00fc
                           0000FD   278 _CCAP3H	=	0x00fd
                           0000FE   279 _CCAP4H	=	0x00fe
                           0000EA   280 _CCAP0L	=	0x00ea
                           0000EB   281 _CCAP1L	=	0x00eb
                           0000EC   282 _CCAP2L	=	0x00ec
                           0000ED   283 _CCAP3L	=	0x00ed
                           0000EE   284 _CCAP4L	=	0x00ee
                           0000DA   285 _CCAPM0	=	0x00da
                           0000DB   286 _CCAPM1	=	0x00db
                           0000DC   287 _CCAPM2	=	0x00dc
                           0000DD   288 _CCAPM3	=	0x00dd
                           0000DE   289 _CCAPM4	=	0x00de
                           0000D8   290 _CCON	=	0x00d8
                           0000F9   291 _CH	=	0x00f9
                           0000E9   292 _CL	=	0x00e9
                           0000D9   293 _CMOD	=	0x00d9
                           0000A8   294 _IEN0	=	0x00a8
                           0000B1   295 _IEN1	=	0x00b1
                           0000B8   296 _IPL0	=	0x00b8
                           0000B7   297 _IPH0	=	0x00b7
                           0000B2   298 _IPL1	=	0x00b2
                           0000B3   299 _IPH1	=	0x00b3
                           0000C0   300 _P4	=	0x00c0
                           0000E8   301 _P5	=	0x00e8
                           0000A6   302 _WDTRST	=	0x00a6
                           0000A7   303 _WDTPRG	=	0x00a7
                           0000A9   304 _SADDR	=	0x00a9
                           0000B9   305 _SADEN	=	0x00b9
                           0000C3   306 _SPCON	=	0x00c3
                           0000C4   307 _SPSTA	=	0x00c4
                           0000C5   308 _SPDAT	=	0x00c5
                           0000C9   309 _T2MOD	=	0x00c9
                           00009B   310 _BDRCON	=	0x009b
                           00009A   311 _BRL	=	0x009a
                           00009C   312 _KBLS	=	0x009c
                           00009D   313 _KBE	=	0x009d
                           00009E   314 _KBF	=	0x009e
                           0000D2   315 _EECON	=	0x00d2
                                    316 ;--------------------------------------------------------
                                    317 ; special function bits
                                    318 ;--------------------------------------------------------
                                    319 	.area RSEG    (ABS,DATA)
      000000                        320 	.org 0x0000
                           000080   321 _P0_0	=	0x0080
                           000081   322 _P0_1	=	0x0081
                           000082   323 _P0_2	=	0x0082
                           000083   324 _P0_3	=	0x0083
                           000084   325 _P0_4	=	0x0084
                           000085   326 _P0_5	=	0x0085
                           000086   327 _P0_6	=	0x0086
                           000087   328 _P0_7	=	0x0087
                           000088   329 _IT0	=	0x0088
                           000089   330 _IE0	=	0x0089
                           00008A   331 _IT1	=	0x008a
                           00008B   332 _IE1	=	0x008b
                           00008C   333 _TR0	=	0x008c
                           00008D   334 _TF0	=	0x008d
                           00008E   335 _TR1	=	0x008e
                           00008F   336 _TF1	=	0x008f
                           000090   337 _P1_0	=	0x0090
                           000091   338 _P1_1	=	0x0091
                           000092   339 _P1_2	=	0x0092
                           000093   340 _P1_3	=	0x0093
                           000094   341 _P1_4	=	0x0094
                           000095   342 _P1_5	=	0x0095
                           000096   343 _P1_6	=	0x0096
                           000097   344 _P1_7	=	0x0097
                           000098   345 _RI	=	0x0098
                           000099   346 _TI	=	0x0099
                           00009A   347 _RB8	=	0x009a
                           00009B   348 _TB8	=	0x009b
                           00009C   349 _REN	=	0x009c
                           00009D   350 _SM2	=	0x009d
                           00009E   351 _SM1	=	0x009e
                           00009F   352 _SM0	=	0x009f
                           0000A0   353 _P2_0	=	0x00a0
                           0000A1   354 _P2_1	=	0x00a1
                           0000A2   355 _P2_2	=	0x00a2
                           0000A3   356 _P2_3	=	0x00a3
                           0000A4   357 _P2_4	=	0x00a4
                           0000A5   358 _P2_5	=	0x00a5
                           0000A6   359 _P2_6	=	0x00a6
                           0000A7   360 _P2_7	=	0x00a7
                           0000A8   361 _EX0	=	0x00a8
                           0000A9   362 _ET0	=	0x00a9
                           0000AA   363 _EX1	=	0x00aa
                           0000AB   364 _ET1	=	0x00ab
                           0000AC   365 _ES	=	0x00ac
                           0000AF   366 _EA	=	0x00af
                           0000B0   367 _P3_0	=	0x00b0
                           0000B1   368 _P3_1	=	0x00b1
                           0000B2   369 _P3_2	=	0x00b2
                           0000B3   370 _P3_3	=	0x00b3
                           0000B4   371 _P3_4	=	0x00b4
                           0000B5   372 _P3_5	=	0x00b5
                           0000B6   373 _P3_6	=	0x00b6
                           0000B7   374 _P3_7	=	0x00b7
                           0000B0   375 _RXD	=	0x00b0
                           0000B1   376 _TXD	=	0x00b1
                           0000B2   377 _INT0	=	0x00b2
                           0000B3   378 _INT1	=	0x00b3
                           0000B4   379 _T0	=	0x00b4
                           0000B5   380 _T1	=	0x00b5
                           0000B6   381 _WR	=	0x00b6
                           0000B7   382 _RD	=	0x00b7
                           0000B8   383 _PX0	=	0x00b8
                           0000B9   384 _PT0	=	0x00b9
                           0000BA   385 _PX1	=	0x00ba
                           0000BB   386 _PT1	=	0x00bb
                           0000BC   387 _PS	=	0x00bc
                           0000D0   388 _P	=	0x00d0
                           0000D1   389 _F1	=	0x00d1
                           0000D2   390 _OV	=	0x00d2
                           0000D3   391 _RS0	=	0x00d3
                           0000D4   392 _RS1	=	0x00d4
                           0000D5   393 _F0	=	0x00d5
                           0000D6   394 _AC	=	0x00d6
                           0000D7   395 _CY	=	0x00d7
                           0000AD   396 _ET2	=	0x00ad
                           0000BD   397 _PT2	=	0x00bd
                           0000C8   398 _T2CON_0	=	0x00c8
                           0000C9   399 _T2CON_1	=	0x00c9
                           0000CA   400 _T2CON_2	=	0x00ca
                           0000CB   401 _T2CON_3	=	0x00cb
                           0000CC   402 _T2CON_4	=	0x00cc
                           0000CD   403 _T2CON_5	=	0x00cd
                           0000CE   404 _T2CON_6	=	0x00ce
                           0000CF   405 _T2CON_7	=	0x00cf
                           0000C8   406 _CP_RL2	=	0x00c8
                           0000C9   407 _C_T2	=	0x00c9
                           0000CA   408 _TR2	=	0x00ca
                           0000CB   409 _EXEN2	=	0x00cb
                           0000CC   410 _TCLK	=	0x00cc
                           0000CD   411 _RCLK	=	0x00cd
                           0000CE   412 _EXF2	=	0x00ce
                           0000CF   413 _TF2	=	0x00cf
                           0000DF   414 _CF	=	0x00df
                           0000DE   415 _CR	=	0x00de
                           0000DC   416 _CCF4	=	0x00dc
                           0000DB   417 _CCF3	=	0x00db
                           0000DA   418 _CCF2	=	0x00da
                           0000D9   419 _CCF1	=	0x00d9
                           0000D8   420 _CCF0	=	0x00d8
                           0000AE   421 _EC	=	0x00ae
                           0000BE   422 _PPCL	=	0x00be
                           0000BD   423 _PT2L	=	0x00bd
                           0000BC   424 _PSL	=	0x00bc
                           0000BB   425 _PT1L	=	0x00bb
                           0000BA   426 _PX1L	=	0x00ba
                           0000B9   427 _PT0L	=	0x00b9
                           0000B8   428 _PX0L	=	0x00b8
                           0000C0   429 _P4_0	=	0x00c0
                           0000C1   430 _P4_1	=	0x00c1
                           0000C2   431 _P4_2	=	0x00c2
                           0000C3   432 _P4_3	=	0x00c3
                           0000C4   433 _P4_4	=	0x00c4
                           0000C5   434 _P4_5	=	0x00c5
                           0000C6   435 _P4_6	=	0x00c6
                           0000C7   436 _P4_7	=	0x00c7
                           0000E8   437 _P5_0	=	0x00e8
                           0000E9   438 _P5_1	=	0x00e9
                           0000EA   439 _P5_2	=	0x00ea
                           0000EB   440 _P5_3	=	0x00eb
                           0000EC   441 _P5_4	=	0x00ec
                           0000ED   442 _P5_5	=	0x00ed
                           0000EE   443 _P5_6	=	0x00ee
                           0000EF   444 _P5_7	=	0x00ef
                                    445 ;--------------------------------------------------------
                                    446 ; overlayable register banks
                                    447 ;--------------------------------------------------------
                                    448 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        449 	.ds 8
                                    450 ;--------------------------------------------------------
                                    451 ; overlayable bit register bank
                                    452 ;--------------------------------------------------------
                                    453 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        454 bits:
      000021                        455 	.ds 1
                           008000   456 	b0 = bits[0]
                           008100   457 	b1 = bits[1]
                           008200   458 	b2 = bits[2]
                           008300   459 	b3 = bits[3]
                           008400   460 	b4 = bits[4]
                           008500   461 	b5 = bits[5]
                           008600   462 	b6 = bits[6]
                           008700   463 	b7 = bits[7]
                                    464 ;--------------------------------------------------------
                                    465 ; internal ram data
                                    466 ;--------------------------------------------------------
                                    467 	.area DSEG    (DATA)
      000008                        468 _lcdcreatechar_sloc0_1_0:
      000008                        469 	.ds 3
      00000B                        470 _main_sloc1_1_0:
      00000B                        471 	.ds 3
                                    472 ;--------------------------------------------------------
                                    473 ; overlayable items in internal ram 
                                    474 ;--------------------------------------------------------
                                    475 ;--------------------------------------------------------
                                    476 ; Stack segment in internal ram 
                                    477 ;--------------------------------------------------------
                                    478 	.area	SSEG
      000022                        479 __start__stack:
      000022                        480 	.ds	1
                                    481 
                                    482 ;--------------------------------------------------------
                                    483 ; indirectly addressable internal ram data
                                    484 ;--------------------------------------------------------
                                    485 	.area ISEG    (DATA)
                                    486 ;--------------------------------------------------------
                                    487 ; absolute internal ram data
                                    488 ;--------------------------------------------------------
                                    489 	.area IABS    (ABS,DATA)
                                    490 	.area IABS    (ABS,DATA)
                                    491 ;--------------------------------------------------------
                                    492 ; bit data
                                    493 ;--------------------------------------------------------
                                    494 	.area BSEG    (BIT)
      000000                        495 _main_sloc0_1_0:
      000000                        496 	.ds 1
                                    497 ;--------------------------------------------------------
                                    498 ; paged external ram data
                                    499 ;--------------------------------------------------------
                                    500 	.area PSEG    (PAG,XDATA)
                                    501 ;--------------------------------------------------------
                                    502 ; external ram data
                                    503 ;--------------------------------------------------------
                                    504 	.area XSEG    (XDATA)
                           008000   505 _lcd_ptr	=	0x8000
      000400                        506 _save_cursor_address::
      000400                        507 	.ds 1
      000401                        508 _putchar_c_65536_27:
      000401                        509 	.ds 2
      000403                        510 _delay_milliseconds_65536_31:
      000403                        511 	.ds 2
      000405                        512 _lcdgotoaddr_addr_65536_41:
      000405                        513 	.ds 1
      000406                        514 _lcdgotoxy_PARM_2:
      000406                        515 	.ds 1
      000407                        516 _lcdgotoxy_row_65536_43:
      000407                        517 	.ds 1
      000408                        518 _lcdgotoxy_address_65536_44:
      000408                        519 	.ds 1
      000409                        520 _lcdputch_cc_65536_45:
      000409                        521 	.ds 1
      00040A                        522 _lcdputstr_ss_65536_52:
      00040A                        523 	.ds 3
      00040D                        524 _valid_input_hex_val_65536_58:
      00040D                        525 	.ds 1
      00040E                        526 _send_addr_read_data_PARM_2:
      00040E                        527 	.ds 1
      00040F                        528 _send_addr_read_data_ddram_flag_65536_72:
      00040F                        529 	.ds 1
      000410                        530 _lcdcreatechar_PARM_2:
      000410                        531 	.ds 3
      000413                        532 _lcdcreatechar_ccode_65536_76:
      000413                        533 	.ds 1
      000414                        534 _main_string_65537_82:
      000414                        535 	.ds 3
      000417                        536 _main_k_196613_91:
      000417                        537 	.ds 2
      000419                        538 _main_row_vals_196615_105:
      000419                        539 	.ds 8
                                    540 ;--------------------------------------------------------
                                    541 ; absolute external ram data
                                    542 ;--------------------------------------------------------
                                    543 	.area XABS    (ABS,XDATA)
                                    544 ;--------------------------------------------------------
                                    545 ; external initialized ram data
                                    546 ;--------------------------------------------------------
                                    547 	.area XISEG   (XDATA)
      000464                        548 _counter::
      000464                        549 	.ds 2
      000466                        550 _one_tenth_second::
      000466                        551 	.ds 1
      000467                        552 _second_one::
      000467                        553 	.ds 1
      000468                        554 _second_two::
      000468                        555 	.ds 1
      000469                        556 _minute_one::
      000469                        557 	.ds 1
      00046A                        558 _minute_two::
      00046A                        559 	.ds 1
                                    560 	.area HOME    (CODE)
                                    561 	.area GSINIT0 (CODE)
                                    562 	.area GSINIT1 (CODE)
                                    563 	.area GSINIT2 (CODE)
                                    564 	.area GSINIT3 (CODE)
                                    565 	.area GSINIT4 (CODE)
                                    566 	.area GSINIT5 (CODE)
                                    567 	.area GSINIT  (CODE)
                                    568 	.area GSFINAL (CODE)
                                    569 	.area CSEG    (CODE)
                                    570 ;--------------------------------------------------------
                                    571 ; interrupt vector 
                                    572 ;--------------------------------------------------------
                                    573 	.area HOME    (CODE)
      000000                        574 __interrupt_vect:
      000000 02 00 11         [24]  575 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  576 	reti
      000004                        577 	.ds	7
      00000B 02 03 CB         [24]  578 	ljmp	_timer0_ISR
                                    579 ;--------------------------------------------------------
                                    580 ; global & static initialisations
                                    581 ;--------------------------------------------------------
                                    582 	.area HOME    (CODE)
                                    583 	.area GSINIT  (CODE)
                                    584 	.area GSFINAL (CODE)
                                    585 	.area GSINIT  (CODE)
                                    586 	.globl __sdcc_gsinit_startup
                                    587 	.globl __sdcc_program_startup
                                    588 	.globl __start__stack
                                    589 	.globl __mcs51_genXINIT
                                    590 	.globl __mcs51_genXRAMCLEAR
                                    591 	.globl __mcs51_genRAMCLEAR
                                    592 	.area GSFINAL (CODE)
      00006A 02 00 0E         [24]  593 	ljmp	__sdcc_program_startup
                                    594 ;--------------------------------------------------------
                                    595 ; Home
                                    596 ;--------------------------------------------------------
                                    597 	.area HOME    (CODE)
                                    598 	.area HOME    (CODE)
      00000E                        599 __sdcc_program_startup:
      00000E 02 06 0B         [24]  600 	ljmp	_main
                                    601 ;	return from main will return to caller
                                    602 ;--------------------------------------------------------
                                    603 ; code
                                    604 ;--------------------------------------------------------
                                    605 	.area CSEG    (CODE)
                                    606 ;------------------------------------------------------------
                                    607 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    608 ;------------------------------------------------------------
                                    609 ;	main.c:76: _sdcc_external_startup()
                                    610 ;	-----------------------------------------
                                    611 ;	 function _sdcc_external_startup
                                    612 ;	-----------------------------------------
      00006D                        613 __sdcc_external_startup:
                           000007   614 	ar7 = 0x07
                           000006   615 	ar6 = 0x06
                           000005   616 	ar5 = 0x05
                           000004   617 	ar4 = 0x04
                           000003   618 	ar3 = 0x03
                           000002   619 	ar2 = 0x02
                           000001   620 	ar1 = 0x01
                           000000   621 	ar0 = 0x00
                                    622 ;	main.c:78: AUXR|=0x0C; //for 1kB memory
      00006D 43 8E 0C         [24]  623 	orl	_AUXR,#0x0c
                                    624 ;	main.c:79: return 0;
      000070 90 00 00         [24]  625 	mov	dptr,#0x0000
                                    626 ;	main.c:80: }
      000073 22               [24]  627 	ret
                                    628 ;------------------------------------------------------------
                                    629 ;Allocation info for local variables in function 'putchar'
                                    630 ;------------------------------------------------------------
                                    631 ;c                         Allocated with name '_putchar_c_65536_27'
                                    632 ;------------------------------------------------------------
                                    633 ;	main.c:95: int putchar (int c)
                                    634 ;	-----------------------------------------
                                    635 ;	 function putchar
                                    636 ;	-----------------------------------------
      000074                        637 _putchar:
      000074 AF 83            [24]  638 	mov	r7,dph
      000076 E5 82            [12]  639 	mov	a,dpl
      000078 90 04 01         [24]  640 	mov	dptr,#_putchar_c_65536_27
      00007B F0               [24]  641 	movx	@dptr,a
      00007C EF               [12]  642 	mov	a,r7
      00007D A3               [24]  643 	inc	dptr
      00007E F0               [24]  644 	movx	@dptr,a
                                    645 ;	main.c:97: while (!TI);
      00007F                        646 00101$:
      00007F 30 99 FD         [24]  647 	jnb	_TI,00101$
                                    648 ;	main.c:99: SBUF = c;
      000082 90 04 01         [24]  649 	mov	dptr,#_putchar_c_65536_27
      000085 E0               [24]  650 	movx	a,@dptr
      000086 FE               [12]  651 	mov	r6,a
      000087 A3               [24]  652 	inc	dptr
      000088 E0               [24]  653 	movx	a,@dptr
      000089 FF               [12]  654 	mov	r7,a
      00008A 8E 99            [24]  655 	mov	_SBUF,r6
                                    656 ;	main.c:100: TI = 0;
                                    657 ;	assignBit
      00008C C2 99            [12]  658 	clr	_TI
                                    659 ;	main.c:102: return c;
      00008E 8E 82            [24]  660 	mov	dpl,r6
      000090 8F 83            [24]  661 	mov	dph,r7
                                    662 ;	main.c:103: }
      000092 22               [24]  663 	ret
                                    664 ;------------------------------------------------------------
                                    665 ;Allocation info for local variables in function 'getchar'
                                    666 ;------------------------------------------------------------
                                    667 ;	main.c:114: int getchar (void)
                                    668 ;	-----------------------------------------
                                    669 ;	 function getchar
                                    670 ;	-----------------------------------------
      000093                        671 _getchar:
                                    672 ;	main.c:116: while (!RI);
      000093                        673 00101$:
                                    674 ;	main.c:118: RI = 0;
                                    675 ;	assignBit
      000093 10 98 02         [24]  676 	jbc	_RI,00114$
      000096 80 FB            [24]  677 	sjmp	00101$
      000098                        678 00114$:
                                    679 ;	main.c:119: return SBUF;
      000098 AE 99            [24]  680 	mov	r6,_SBUF
      00009A 7F 00            [12]  681 	mov	r7,#0x00
      00009C 8E 82            [24]  682 	mov	dpl,r6
      00009E 8F 83            [24]  683 	mov	dph,r7
                                    684 ;	main.c:120: }
      0000A0 22               [24]  685 	ret
                                    686 ;------------------------------------------------------------
                                    687 ;Allocation info for local variables in function 'delay'
                                    688 ;------------------------------------------------------------
                                    689 ;milliseconds              Allocated with name '_delay_milliseconds_65536_31'
                                    690 ;j                         Allocated with name '_delay_j_131072_33'
                                    691 ;i                         Allocated with name '_delay_i_262144_35'
                                    692 ;------------------------------------------------------------
                                    693 ;	main.c:128: void delay(int milliseconds){
                                    694 ;	-----------------------------------------
                                    695 ;	 function delay
                                    696 ;	-----------------------------------------
      0000A1                        697 _delay:
      0000A1 AF 83            [24]  698 	mov	r7,dph
      0000A3 E5 82            [12]  699 	mov	a,dpl
      0000A5 90 04 03         [24]  700 	mov	dptr,#_delay_milliseconds_65536_31
      0000A8 F0               [24]  701 	movx	@dptr,a
      0000A9 EF               [12]  702 	mov	a,r7
      0000AA A3               [24]  703 	inc	dptr
      0000AB F0               [24]  704 	movx	@dptr,a
                                    705 ;	main.c:129: for(int j=0;j<milliseconds;j++){
      0000AC 90 04 03         [24]  706 	mov	dptr,#_delay_milliseconds_65536_31
      0000AF E0               [24]  707 	movx	a,@dptr
      0000B0 FE               [12]  708 	mov	r6,a
      0000B1 A3               [24]  709 	inc	dptr
      0000B2 E0               [24]  710 	movx	a,@dptr
      0000B3 FF               [12]  711 	mov	r7,a
      0000B4 7C 00            [12]  712 	mov	r4,#0x00
      0000B6 7D 00            [12]  713 	mov	r5,#0x00
      0000B8                        714 00107$:
      0000B8 C3               [12]  715 	clr	c
      0000B9 EC               [12]  716 	mov	a,r4
      0000BA 9E               [12]  717 	subb	a,r6
      0000BB ED               [12]  718 	mov	a,r5
      0000BC 64 80            [12]  719 	xrl	a,#0x80
      0000BE 8F F0            [24]  720 	mov	b,r7
      0000C0 63 F0 80         [24]  721 	xrl	b,#0x80
      0000C3 95 F0            [12]  722 	subb	a,b
      0000C5 50 1D            [24]  723 	jnc	00109$
                                    724 ;	main.c:130: for(int i=0;i<COUNT_ONE_MILLISECOND;i++);
      0000C7 7A 00            [12]  725 	mov	r2,#0x00
      0000C9 7B 00            [12]  726 	mov	r3,#0x00
      0000CB                        727 00104$:
      0000CB C3               [12]  728 	clr	c
      0000CC EA               [12]  729 	mov	a,r2
      0000CD 94 52            [12]  730 	subb	a,#0x52
      0000CF EB               [12]  731 	mov	a,r3
      0000D0 64 80            [12]  732 	xrl	a,#0x80
      0000D2 94 80            [12]  733 	subb	a,#0x80
      0000D4 50 07            [24]  734 	jnc	00108$
      0000D6 0A               [12]  735 	inc	r2
      0000D7 BA 00 F1         [24]  736 	cjne	r2,#0x00,00104$
      0000DA 0B               [12]  737 	inc	r3
      0000DB 80 EE            [24]  738 	sjmp	00104$
      0000DD                        739 00108$:
                                    740 ;	main.c:129: for(int j=0;j<milliseconds;j++){
      0000DD 0C               [12]  741 	inc	r4
      0000DE BC 00 D7         [24]  742 	cjne	r4,#0x00,00107$
      0000E1 0D               [12]  743 	inc	r5
      0000E2 80 D4            [24]  744 	sjmp	00107$
      0000E4                        745 00109$:
                                    746 ;	main.c:132: }
      0000E4 22               [24]  747 	ret
                                    748 ;------------------------------------------------------------
                                    749 ;Allocation info for local variables in function 'get_cursor_address'
                                    750 ;------------------------------------------------------------
                                    751 ;	main.c:140: uint8_t get_cursor_address(){
                                    752 ;	-----------------------------------------
                                    753 ;	 function get_cursor_address
                                    754 ;	-----------------------------------------
      0000E5                        755 _get_cursor_address:
                                    756 ;	main.c:142: RS=0;
                                    757 ;	assignBit
      0000E5 C2 94            [12]  758 	clr	_P1_4
                                    759 ;	main.c:143: RW=1;
                                    760 ;	assignBit
      0000E7 D2 95            [12]  761 	setb	_P1_5
                                    762 ;	main.c:144: return lcd_ptr&(~0x80);
      0000E9 90 80 00         [24]  763 	mov	dptr,#_lcd_ptr
      0000EC E0               [24]  764 	movx	a,@dptr
      0000ED 54 7F            [12]  765 	anl	a,#0x7f
                                    766 ;	main.c:145: }
      0000EF F5 82            [12]  767 	mov	dpl,a
      0000F1 22               [24]  768 	ret
                                    769 ;------------------------------------------------------------
                                    770 ;Allocation info for local variables in function 'lcdinit'
                                    771 ;------------------------------------------------------------
                                    772 ;	main.c:153: void lcdinit(void){
                                    773 ;	-----------------------------------------
                                    774 ;	 function lcdinit
                                    775 ;	-----------------------------------------
      0000F2                        776 _lcdinit:
                                    777 ;	main.c:155: RS=0;
                                    778 ;	assignBit
      0000F2 C2 94            [12]  779 	clr	_P1_4
                                    780 ;	main.c:156: RW=0;
                                    781 ;	assignBit
      0000F4 C2 95            [12]  782 	clr	_P1_5
                                    783 ;	main.c:158: delay(160);
      0000F6 90 00 A0         [24]  784 	mov	dptr,#0x00a0
      0000F9 12 00 A1         [24]  785 	lcall	_delay
                                    786 ;	main.c:160: lcd_ptr=0x30;
      0000FC 90 80 00         [24]  787 	mov	dptr,#_lcd_ptr
      0000FF 74 30            [12]  788 	mov	a,#0x30
      000101 F0               [24]  789 	movx	@dptr,a
                                    790 ;	main.c:162: delay(170);
      000102 90 00 AA         [24]  791 	mov	dptr,#0x00aa
      000105 12 00 A1         [24]  792 	lcall	_delay
                                    793 ;	main.c:164: lcd_ptr=0x30;
      000108 90 80 00         [24]  794 	mov	dptr,#_lcd_ptr
      00010B 74 30            [12]  795 	mov	a,#0x30
      00010D F0               [24]  796 	movx	@dptr,a
                                    797 ;	main.c:166: delay(150);
      00010E 90 00 96         [24]  798 	mov	dptr,#0x0096
      000111 12 00 A1         [24]  799 	lcall	_delay
                                    800 ;	main.c:168: lcd_ptr=0x30;
      000114 90 80 00         [24]  801 	mov	dptr,#_lcd_ptr
      000117 74 30            [12]  802 	mov	a,#0x30
      000119 F0               [24]  803 	movx	@dptr,a
                                    804 ;	main.c:170: lcdbusywait();
      00011A 12 01 68         [24]  805 	lcall	_lcdbusywait
                                    806 ;	main.c:172: RS=0;
                                    807 ;	assignBit
      00011D C2 94            [12]  808 	clr	_P1_4
                                    809 ;	main.c:173: RW=0;
                                    810 ;	assignBit
      00011F C2 95            [12]  811 	clr	_P1_5
                                    812 ;	main.c:175: lcd_ptr=0x38;
      000121 90 80 00         [24]  813 	mov	dptr,#_lcd_ptr
      000124 74 38            [12]  814 	mov	a,#0x38
      000126 F0               [24]  815 	movx	@dptr,a
                                    816 ;	main.c:177: lcdbusywait();
      000127 12 01 68         [24]  817 	lcall	_lcdbusywait
                                    818 ;	main.c:179: RS=0;
                                    819 ;	assignBit
      00012A C2 94            [12]  820 	clr	_P1_4
                                    821 ;	main.c:180: RW=0;
                                    822 ;	assignBit
      00012C C2 95            [12]  823 	clr	_P1_5
                                    824 ;	main.c:182: lcd_ptr=0x0F;
      00012E 90 80 00         [24]  825 	mov	dptr,#_lcd_ptr
      000131 74 0F            [12]  826 	mov	a,#0x0f
      000133 F0               [24]  827 	movx	@dptr,a
                                    828 ;	main.c:184: lcdbusywait();
      000134 12 01 68         [24]  829 	lcall	_lcdbusywait
                                    830 ;	main.c:186: RS=0;
                                    831 ;	assignBit
      000137 C2 94            [12]  832 	clr	_P1_4
                                    833 ;	main.c:187: RW=0;
                                    834 ;	assignBit
      000139 C2 95            [12]  835 	clr	_P1_5
                                    836 ;	main.c:189: lcd_ptr=0x01;
      00013B 90 80 00         [24]  837 	mov	dptr,#_lcd_ptr
      00013E 74 01            [12]  838 	mov	a,#0x01
      000140 F0               [24]  839 	movx	@dptr,a
                                    840 ;	main.c:191: lcdbusywait();
      000141 12 01 68         [24]  841 	lcall	_lcdbusywait
                                    842 ;	main.c:193: RS=0;
                                    843 ;	assignBit
      000144 C2 94            [12]  844 	clr	_P1_4
                                    845 ;	main.c:194: RW=0;
                                    846 ;	assignBit
      000146 C2 95            [12]  847 	clr	_P1_5
                                    848 ;	main.c:196: lcd_ptr=0x06;
      000148 90 80 00         [24]  849 	mov	dptr,#_lcd_ptr
      00014B 74 06            [12]  850 	mov	a,#0x06
      00014D F0               [24]  851 	movx	@dptr,a
                                    852 ;	main.c:198: lcdbusywait();
      00014E 12 01 68         [24]  853 	lcall	_lcdbusywait
                                    854 ;	main.c:200: one_tenth_second='0';
      000151 90 04 66         [24]  855 	mov	dptr,#_one_tenth_second
      000154 74 30            [12]  856 	mov	a,#0x30
      000156 F0               [24]  857 	movx	@dptr,a
                                    858 ;	main.c:201: second_one='0';
      000157 90 04 67         [24]  859 	mov	dptr,#_second_one
      00015A F0               [24]  860 	movx	@dptr,a
                                    861 ;	main.c:202: second_two='0';
      00015B 90 04 68         [24]  862 	mov	dptr,#_second_two
      00015E F0               [24]  863 	movx	@dptr,a
                                    864 ;	main.c:203: minute_one='0';
      00015F 90 04 69         [24]  865 	mov	dptr,#_minute_one
      000162 F0               [24]  866 	movx	@dptr,a
                                    867 ;	main.c:204: minute_two='0';
      000163 90 04 6A         [24]  868 	mov	dptr,#_minute_two
      000166 F0               [24]  869 	movx	@dptr,a
                                    870 ;	main.c:205: }
      000167 22               [24]  871 	ret
                                    872 ;------------------------------------------------------------
                                    873 ;Allocation info for local variables in function 'lcdbusywait'
                                    874 ;------------------------------------------------------------
                                    875 ;	main.c:213: void lcdbusywait(void)
                                    876 ;	-----------------------------------------
                                    877 ;	 function lcdbusywait
                                    878 ;	-----------------------------------------
      000168                        879 _lcdbusywait:
                                    880 ;	main.c:216: RS=0;
                                    881 ;	assignBit
      000168 C2 94            [12]  882 	clr	_P1_4
                                    883 ;	main.c:217: RW=1;
                                    884 ;	assignBit
      00016A D2 95            [12]  885 	setb	_P1_5
                                    886 ;	main.c:219: while(lcd_ptr&0x80);
      00016C                        887 00101$:
      00016C 90 80 00         [24]  888 	mov	dptr,#_lcd_ptr
      00016F E0               [24]  889 	movx	a,@dptr
      000170 20 E7 F9         [24]  890 	jb	acc.7,00101$
                                    891 ;	main.c:220: }
      000173 22               [24]  892 	ret
                                    893 ;------------------------------------------------------------
                                    894 ;Allocation info for local variables in function 'lcdgotoaddr'
                                    895 ;------------------------------------------------------------
                                    896 ;addr                      Allocated with name '_lcdgotoaddr_addr_65536_41'
                                    897 ;------------------------------------------------------------
                                    898 ;	main.c:228: void lcdgotoaddr(unsigned char addr){
                                    899 ;	-----------------------------------------
                                    900 ;	 function lcdgotoaddr
                                    901 ;	-----------------------------------------
      000174                        902 _lcdgotoaddr:
      000174 E5 82            [12]  903 	mov	a,dpl
      000176 90 04 05         [24]  904 	mov	dptr,#_lcdgotoaddr_addr_65536_41
      000179 F0               [24]  905 	movx	@dptr,a
                                    906 ;	main.c:230: RS=0;
                                    907 ;	assignBit
      00017A C2 94            [12]  908 	clr	_P1_4
                                    909 ;	main.c:231: RW=0;
                                    910 ;	assignBit
      00017C C2 95            [12]  911 	clr	_P1_5
                                    912 ;	main.c:233: addr=addr|0x80;
      00017E 90 04 05         [24]  913 	mov	dptr,#_lcdgotoaddr_addr_65536_41
      000181 E0               [24]  914 	movx	a,@dptr
      000182 43 E0 80         [24]  915 	orl	acc,#0x80
      000185 F0               [24]  916 	movx	@dptr,a
                                    917 ;	main.c:235: lcd_ptr=addr;
      000186 90 04 05         [24]  918 	mov	dptr,#_lcdgotoaddr_addr_65536_41
      000189 E0               [24]  919 	movx	a,@dptr
      00018A 90 80 00         [24]  920 	mov	dptr,#_lcd_ptr
      00018D F0               [24]  921 	movx	@dptr,a
                                    922 ;	main.c:237: lcdbusywait();
                                    923 ;	main.c:238: }
      00018E 02 01 68         [24]  924 	ljmp	_lcdbusywait
                                    925 ;------------------------------------------------------------
                                    926 ;Allocation info for local variables in function 'lcdgotoxy'
                                    927 ;------------------------------------------------------------
                                    928 ;column                    Allocated with name '_lcdgotoxy_PARM_2'
                                    929 ;row                       Allocated with name '_lcdgotoxy_row_65536_43'
                                    930 ;address                   Allocated with name '_lcdgotoxy_address_65536_44'
                                    931 ;------------------------------------------------------------
                                    932 ;	main.c:246: void lcdgotoxy(unsigned char row, unsigned char column){
                                    933 ;	-----------------------------------------
                                    934 ;	 function lcdgotoxy
                                    935 ;	-----------------------------------------
      000191                        936 _lcdgotoxy:
      000191 E5 82            [12]  937 	mov	a,dpl
      000193 90 04 07         [24]  938 	mov	dptr,#_lcdgotoxy_row_65536_43
      000196 F0               [24]  939 	movx	@dptr,a
                                    940 ;	main.c:249: if(row=='0')
      000197 E0               [24]  941 	movx	a,@dptr
      000198 FF               [12]  942 	mov	r7,a
      000199 BF 30 07         [24]  943 	cjne	r7,#0x30,00108$
                                    944 ;	main.c:250: address=(0<<4);
      00019C 90 04 08         [24]  945 	mov	dptr,#_lcdgotoxy_address_65536_44
      00019F E4               [12]  946 	clr	a
      0001A0 F0               [24]  947 	movx	@dptr,a
      0001A1 80 1C            [24]  948 	sjmp	00109$
      0001A3                        949 00108$:
                                    950 ;	main.c:251: else if(row=='1')
      0001A3 BF 31 08         [24]  951 	cjne	r7,#0x31,00105$
                                    952 ;	main.c:252: address=(4<<4);
      0001A6 90 04 08         [24]  953 	mov	dptr,#_lcdgotoxy_address_65536_44
      0001A9 74 40            [12]  954 	mov	a,#0x40
      0001AB F0               [24]  955 	movx	@dptr,a
      0001AC 80 11            [24]  956 	sjmp	00109$
      0001AE                        957 00105$:
                                    958 ;	main.c:253: else if(row=='2')
      0001AE BF 32 08         [24]  959 	cjne	r7,#0x32,00102$
                                    960 ;	main.c:254: address=(1<<4);
      0001B1 90 04 08         [24]  961 	mov	dptr,#_lcdgotoxy_address_65536_44
      0001B4 74 10            [12]  962 	mov	a,#0x10
      0001B6 F0               [24]  963 	movx	@dptr,a
      0001B7 80 06            [24]  964 	sjmp	00109$
      0001B9                        965 00102$:
                                    966 ;	main.c:256: address=(5<<4);
      0001B9 90 04 08         [24]  967 	mov	dptr,#_lcdgotoxy_address_65536_44
      0001BC 74 50            [12]  968 	mov	a,#0x50
      0001BE F0               [24]  969 	movx	@dptr,a
      0001BF                        970 00109$:
                                    971 ;	main.c:258: if(row>'2' && column>='A' && column<='F')
      0001BF 90 04 07         [24]  972 	mov	dptr,#_lcdgotoxy_row_65536_43
      0001C2 E0               [24]  973 	movx	a,@dptr
      0001C3 FF               [12]  974 	mov  r7,a
      0001C4 24 CD            [12]  975 	add	a,#0xff - 0x32
      0001C6 50 19            [24]  976 	jnc	00119$
      0001C8 90 04 06         [24]  977 	mov	dptr,#_lcdgotoxy_PARM_2
      0001CB E0               [24]  978 	movx	a,@dptr
      0001CC FF               [12]  979 	mov	r7,a
      0001CD BF 41 00         [24]  980 	cjne	r7,#0x41,00172$
      0001D0                        981 00172$:
      0001D0 40 0F            [24]  982 	jc	00119$
      0001D2 EF               [12]  983 	mov	a,r7
      0001D3 24 B9            [12]  984 	add	a,#0xff - 0x46
      0001D5 40 0A            [24]  985 	jc	00119$
                                    986 ;	main.c:259: address|=('8'-'0');
      0001D7 90 04 08         [24]  987 	mov	dptr,#_lcdgotoxy_address_65536_44
      0001DA E0               [24]  988 	movx	a,@dptr
      0001DB 43 E0 08         [24]  989 	orl	acc,#0x08
      0001DE F0               [24]  990 	movx	@dptr,a
      0001DF 80 3B            [24]  991 	sjmp	00120$
      0001E1                        992 00119$:
                                    993 ;	main.c:260: else if(column>='A' && column<='F')
      0001E1 90 04 06         [24]  994 	mov	dptr,#_lcdgotoxy_PARM_2
      0001E4 E0               [24]  995 	movx	a,@dptr
      0001E5 FF               [12]  996 	mov	r7,a
      0001E6 BF 41 00         [24]  997 	cjne	r7,#0x41,00175$
      0001E9                        998 00175$:
      0001E9 40 13            [24]  999 	jc	00115$
      0001EB EF               [12] 1000 	mov	a,r7
      0001EC 24 B9            [12] 1001 	add	a,#0xff - 0x46
      0001EE 40 0E            [24] 1002 	jc	00115$
                                   1003 ;	main.c:261: address|=(column-'7');
      0001F0 8F 06            [24] 1004 	mov	ar6,r7
      0001F2 EE               [12] 1005 	mov	a,r6
      0001F3 24 C9            [12] 1006 	add	a,#0xc9
      0001F5 FE               [12] 1007 	mov	r6,a
      0001F6 90 04 08         [24] 1008 	mov	dptr,#_lcdgotoxy_address_65536_44
      0001F9 E0               [24] 1009 	movx	a,@dptr
      0001FA 4E               [12] 1010 	orl	a,r6
      0001FB F0               [24] 1011 	movx	@dptr,a
      0001FC 80 1E            [24] 1012 	sjmp	00120$
      0001FE                       1013 00115$:
                                   1014 ;	main.c:262: else if(column>='0' && column<='9')
      0001FE BF 30 00         [24] 1015 	cjne	r7,#0x30,00178$
      000201                       1016 00178$:
      000201 40 11            [24] 1017 	jc	00111$
      000203 EF               [12] 1018 	mov	a,r7
      000204 24 C6            [12] 1019 	add	a,#0xff - 0x39
      000206 40 0C            [24] 1020 	jc	00111$
                                   1021 ;	main.c:263: address|=(column-'0');
      000208 EF               [12] 1022 	mov	a,r7
      000209 24 D0            [12] 1023 	add	a,#0xd0
      00020B FF               [12] 1024 	mov	r7,a
      00020C 90 04 08         [24] 1025 	mov	dptr,#_lcdgotoxy_address_65536_44
      00020F E0               [24] 1026 	movx	a,@dptr
      000210 4F               [12] 1027 	orl	a,r7
      000211 F0               [24] 1028 	movx	@dptr,a
      000212 80 08            [24] 1029 	sjmp	00120$
      000214                       1030 00111$:
                                   1031 ;	main.c:265: address|=('8'-48);
      000214 90 04 08         [24] 1032 	mov	dptr,#_lcdgotoxy_address_65536_44
      000217 E0               [24] 1033 	movx	a,@dptr
      000218 43 E0 08         [24] 1034 	orl	acc,#0x08
      00021B F0               [24] 1035 	movx	@dptr,a
      00021C                       1036 00120$:
                                   1037 ;	main.c:267: lcdgotoaddr(address);
      00021C 90 04 08         [24] 1038 	mov	dptr,#_lcdgotoxy_address_65536_44
      00021F E0               [24] 1039 	movx	a,@dptr
      000220 F5 82            [12] 1040 	mov	dpl,a
      000222 12 01 74         [24] 1041 	lcall	_lcdgotoaddr
                                   1042 ;	main.c:269: lcdbusywait();
                                   1043 ;	main.c:270: }
      000225 02 01 68         [24] 1044 	ljmp	_lcdbusywait
                                   1045 ;------------------------------------------------------------
                                   1046 ;Allocation info for local variables in function 'lcdputch'
                                   1047 ;------------------------------------------------------------
                                   1048 ;cc                        Allocated with name '_lcdputch_cc_65536_45'
                                   1049 ;------------------------------------------------------------
                                   1050 ;	main.c:278: void lcdputch(char cc){
                                   1051 ;	-----------------------------------------
                                   1052 ;	 function lcdputch
                                   1053 ;	-----------------------------------------
      000228                       1054 _lcdputch:
      000228 E5 82            [12] 1055 	mov	a,dpl
      00022A 90 04 09         [24] 1056 	mov	dptr,#_lcdputch_cc_65536_45
      00022D F0               [24] 1057 	movx	@dptr,a
                                   1058 ;	main.c:279: if(get_cursor_address()==0x0F){
      00022E 12 00 E5         [24] 1059 	lcall	_get_cursor_address
      000231 AF 82            [24] 1060 	mov	r7,dpl
      000233 BF 0F 1B         [24] 1061 	cjne	r7,#0x0f,00111$
                                   1062 ;	main.c:281: RS=1;
                                   1063 ;	assignBit
      000236 D2 94            [12] 1064 	setb	_P1_4
                                   1065 ;	main.c:282: RW=0;
                                   1066 ;	assignBit
      000238 C2 95            [12] 1067 	clr	_P1_5
                                   1068 ;	main.c:285: lcd_ptr=cc;
      00023A 90 04 09         [24] 1069 	mov	dptr,#_lcdputch_cc_65536_45
      00023D E0               [24] 1070 	movx	a,@dptr
      00023E 90 80 00         [24] 1071 	mov	dptr,#_lcd_ptr
      000241 F0               [24] 1072 	movx	@dptr,a
                                   1073 ;	main.c:287: lcdbusywait();
      000242 12 01 68         [24] 1074 	lcall	_lcdbusywait
                                   1075 ;	main.c:289: lcdgotoxy('1','0');
      000245 90 04 06         [24] 1076 	mov	dptr,#_lcdgotoxy_PARM_2
      000248 74 30            [12] 1077 	mov	a,#0x30
      00024A F0               [24] 1078 	movx	@dptr,a
      00024B 75 82 31         [24] 1079 	mov	dpl,#0x31
      00024E 02 01 91         [24] 1080 	ljmp	_lcdgotoxy
      000251                       1081 00111$:
                                   1082 ;	main.c:291: else if(get_cursor_address()==0x4F){
      000251 12 00 E5         [24] 1083 	lcall	_get_cursor_address
      000254 AF 82            [24] 1084 	mov	r7,dpl
      000256 BF 4F 1B         [24] 1085 	cjne	r7,#0x4f,00108$
                                   1086 ;	main.c:293: RS=1;
                                   1087 ;	assignBit
      000259 D2 94            [12] 1088 	setb	_P1_4
                                   1089 ;	main.c:294: RW=0;
                                   1090 ;	assignBit
      00025B C2 95            [12] 1091 	clr	_P1_5
                                   1092 ;	main.c:297: lcd_ptr=cc;
      00025D 90 04 09         [24] 1093 	mov	dptr,#_lcdputch_cc_65536_45
      000260 E0               [24] 1094 	movx	a,@dptr
      000261 90 80 00         [24] 1095 	mov	dptr,#_lcd_ptr
      000264 F0               [24] 1096 	movx	@dptr,a
                                   1097 ;	main.c:299: lcdbusywait();
      000265 12 01 68         [24] 1098 	lcall	_lcdbusywait
                                   1099 ;	main.c:301: lcdgotoxy('2','0');
      000268 90 04 06         [24] 1100 	mov	dptr,#_lcdgotoxy_PARM_2
      00026B 74 30            [12] 1101 	mov	a,#0x30
      00026D F0               [24] 1102 	movx	@dptr,a
      00026E 75 82 32         [24] 1103 	mov	dpl,#0x32
      000271 02 01 91         [24] 1104 	ljmp	_lcdgotoxy
      000274                       1105 00108$:
                                   1106 ;	main.c:303: else if(get_cursor_address()==0x1F){
      000274 12 00 E5         [24] 1107 	lcall	_get_cursor_address
      000277 AF 82            [24] 1108 	mov	r7,dpl
      000279 BF 1F 1B         [24] 1109 	cjne	r7,#0x1f,00105$
                                   1110 ;	main.c:305: RS=1;
                                   1111 ;	assignBit
      00027C D2 94            [12] 1112 	setb	_P1_4
                                   1113 ;	main.c:306: RW=0;
                                   1114 ;	assignBit
      00027E C2 95            [12] 1115 	clr	_P1_5
                                   1116 ;	main.c:309: lcd_ptr=cc;
      000280 90 04 09         [24] 1117 	mov	dptr,#_lcdputch_cc_65536_45
      000283 E0               [24] 1118 	movx	a,@dptr
      000284 90 80 00         [24] 1119 	mov	dptr,#_lcd_ptr
      000287 F0               [24] 1120 	movx	@dptr,a
                                   1121 ;	main.c:311: lcdbusywait();
      000288 12 01 68         [24] 1122 	lcall	_lcdbusywait
                                   1123 ;	main.c:313: lcdgotoxy('3','0');
      00028B 90 04 06         [24] 1124 	mov	dptr,#_lcdgotoxy_PARM_2
      00028E 74 30            [12] 1125 	mov	a,#0x30
      000290 F0               [24] 1126 	movx	@dptr,a
      000291 75 82 33         [24] 1127 	mov	dpl,#0x33
      000294 02 01 91         [24] 1128 	ljmp	_lcdgotoxy
      000297                       1129 00105$:
                                   1130 ;	main.c:315: else if(get_cursor_address()==0x58){
      000297 12 00 E5         [24] 1131 	lcall	_get_cursor_address
      00029A AF 82            [24] 1132 	mov	r7,dpl
      00029C BF 58 1B         [24] 1133 	cjne	r7,#0x58,00102$
                                   1134 ;	main.c:317: RS=1;
                                   1135 ;	assignBit
      00029F D2 94            [12] 1136 	setb	_P1_4
                                   1137 ;	main.c:318: RW=0;
                                   1138 ;	assignBit
      0002A1 C2 95            [12] 1139 	clr	_P1_5
                                   1140 ;	main.c:321: lcd_ptr=cc;
      0002A3 90 04 09         [24] 1141 	mov	dptr,#_lcdputch_cc_65536_45
      0002A6 E0               [24] 1142 	movx	a,@dptr
      0002A7 90 80 00         [24] 1143 	mov	dptr,#_lcd_ptr
      0002AA F0               [24] 1144 	movx	@dptr,a
                                   1145 ;	main.c:323: lcdbusywait();
      0002AB 12 01 68         [24] 1146 	lcall	_lcdbusywait
                                   1147 ;	main.c:325: lcdgotoxy('0','0');
      0002AE 90 04 06         [24] 1148 	mov	dptr,#_lcdgotoxy_PARM_2
      0002B1 74 30            [12] 1149 	mov	a,#0x30
      0002B3 F0               [24] 1150 	movx	@dptr,a
      0002B4 75 82 30         [24] 1151 	mov	dpl,#0x30
      0002B7 02 01 91         [24] 1152 	ljmp	_lcdgotoxy
      0002BA                       1153 00102$:
                                   1154 ;	main.c:329: RS=1;
                                   1155 ;	assignBit
      0002BA D2 94            [12] 1156 	setb	_P1_4
                                   1157 ;	main.c:330: RW=0;
                                   1158 ;	assignBit
      0002BC C2 95            [12] 1159 	clr	_P1_5
                                   1160 ;	main.c:333: lcd_ptr=cc;
      0002BE 90 04 09         [24] 1161 	mov	dptr,#_lcdputch_cc_65536_45
      0002C1 E0               [24] 1162 	movx	a,@dptr
      0002C2 90 80 00         [24] 1163 	mov	dptr,#_lcd_ptr
      0002C5 F0               [24] 1164 	movx	@dptr,a
                                   1165 ;	main.c:335: lcdbusywait();
                                   1166 ;	main.c:337: }
      0002C6 02 01 68         [24] 1167 	ljmp	_lcdbusywait
                                   1168 ;------------------------------------------------------------
                                   1169 ;Allocation info for local variables in function 'lcdputstr'
                                   1170 ;------------------------------------------------------------
                                   1171 ;ss                        Allocated with name '_lcdputstr_ss_65536_52'
                                   1172 ;i                         Allocated with name '_lcdputstr_i_65536_53'
                                   1173 ;------------------------------------------------------------
                                   1174 ;	main.c:345: void lcdputstr(char *ss){
                                   1175 ;	-----------------------------------------
                                   1176 ;	 function lcdputstr
                                   1177 ;	-----------------------------------------
      0002C9                       1178 _lcdputstr:
      0002C9 AF F0            [24] 1179 	mov	r7,b
      0002CB AE 83            [24] 1180 	mov	r6,dph
      0002CD E5 82            [12] 1181 	mov	a,dpl
      0002CF 90 04 0A         [24] 1182 	mov	dptr,#_lcdputstr_ss_65536_52
      0002D2 F0               [24] 1183 	movx	@dptr,a
      0002D3 EE               [12] 1184 	mov	a,r6
      0002D4 A3               [24] 1185 	inc	dptr
      0002D5 F0               [24] 1186 	movx	@dptr,a
      0002D6 EF               [12] 1187 	mov	a,r7
      0002D7 A3               [24] 1188 	inc	dptr
      0002D8 F0               [24] 1189 	movx	@dptr,a
                                   1190 ;	main.c:347: while(ss[i]!='\0'){
      0002D9 90 04 0A         [24] 1191 	mov	dptr,#_lcdputstr_ss_65536_52
      0002DC E0               [24] 1192 	movx	a,@dptr
      0002DD FD               [12] 1193 	mov	r5,a
      0002DE A3               [24] 1194 	inc	dptr
      0002DF E0               [24] 1195 	movx	a,@dptr
      0002E0 FE               [12] 1196 	mov	r6,a
      0002E1 A3               [24] 1197 	inc	dptr
      0002E2 E0               [24] 1198 	movx	a,@dptr
      0002E3 FF               [12] 1199 	mov	r7,a
      0002E4 7B 00            [12] 1200 	mov	r3,#0x00
      0002E6 7C 00            [12] 1201 	mov	r4,#0x00
      0002E8                       1202 00101$:
      0002E8 EB               [12] 1203 	mov	a,r3
      0002E9 2D               [12] 1204 	add	a,r5
      0002EA F8               [12] 1205 	mov	r0,a
      0002EB EC               [12] 1206 	mov	a,r4
      0002EC 3E               [12] 1207 	addc	a,r6
      0002ED F9               [12] 1208 	mov	r1,a
      0002EE 8F 02            [24] 1209 	mov	ar2,r7
      0002F0 88 82            [24] 1210 	mov	dpl,r0
      0002F2 89 83            [24] 1211 	mov	dph,r1
      0002F4 8A F0            [24] 1212 	mov	b,r2
      0002F6 12 18 89         [24] 1213 	lcall	__gptrget
      0002F9 FA               [12] 1214 	mov	r2,a
      0002FA 60 20            [24] 1215 	jz	00104$
                                   1216 ;	main.c:348: lcdputch(ss[i]);
      0002FC 8A 82            [24] 1217 	mov	dpl,r2
      0002FE C0 07            [24] 1218 	push	ar7
      000300 C0 06            [24] 1219 	push	ar6
      000302 C0 05            [24] 1220 	push	ar5
      000304 C0 04            [24] 1221 	push	ar4
      000306 C0 03            [24] 1222 	push	ar3
      000308 12 02 28         [24] 1223 	lcall	_lcdputch
      00030B D0 03            [24] 1224 	pop	ar3
      00030D D0 04            [24] 1225 	pop	ar4
      00030F D0 05            [24] 1226 	pop	ar5
      000311 D0 06            [24] 1227 	pop	ar6
      000313 D0 07            [24] 1228 	pop	ar7
                                   1229 ;	main.c:349: i++;
      000315 0B               [12] 1230 	inc	r3
      000316 BB 00 CF         [24] 1231 	cjne	r3,#0x00,00101$
      000319 0C               [12] 1232 	inc	r4
      00031A 80 CC            [24] 1233 	sjmp	00101$
      00031C                       1234 00104$:
                                   1235 ;	main.c:351: }
      00031C 22               [24] 1236 	ret
                                   1237 ;------------------------------------------------------------
                                   1238 ;Allocation info for local variables in function 'lcdclear'
                                   1239 ;------------------------------------------------------------
                                   1240 ;	main.c:360: void lcdclear(void){
                                   1241 ;	-----------------------------------------
                                   1242 ;	 function lcdclear
                                   1243 ;	-----------------------------------------
      00031D                       1244 _lcdclear:
                                   1245 ;	main.c:362: RS=0;
                                   1246 ;	assignBit
      00031D C2 94            [12] 1247 	clr	_P1_4
                                   1248 ;	main.c:363: RW=0;
                                   1249 ;	assignBit
      00031F C2 95            [12] 1250 	clr	_P1_5
                                   1251 ;	main.c:365: lcd_ptr=0x01;
      000321 90 80 00         [24] 1252 	mov	dptr,#_lcd_ptr
      000324 74 01            [12] 1253 	mov	a,#0x01
      000326 F0               [24] 1254 	movx	@dptr,a
                                   1255 ;	main.c:367: lcdbusywait();
      000327 12 01 68         [24] 1256 	lcall	_lcdbusywait
                                   1257 ;	main.c:368: lcdgotoaddr(0x00);
      00032A 75 82 00         [24] 1258 	mov	dpl,#0x00
      00032D 12 01 74         [24] 1259 	lcall	_lcdgotoaddr
                                   1260 ;	main.c:369: lcdputstr("       ");
      000330 90 18 A5         [24] 1261 	mov	dptr,#___str_0
      000333 75 F0 80         [24] 1262 	mov	b,#0x80
      000336 12 02 C9         [24] 1263 	lcall	_lcdputstr
                                   1264 ;	main.c:370: lcdgotoaddr(0x00);
      000339 75 82 00         [24] 1265 	mov	dpl,#0x00
                                   1266 ;	main.c:371: }
      00033C 02 01 74         [24] 1267 	ljmp	_lcdgotoaddr
                                   1268 ;------------------------------------------------------------
                                   1269 ;Allocation info for local variables in function 'valid_input'
                                   1270 ;------------------------------------------------------------
                                   1271 ;place_ten                 Allocated with name '_valid_input_place_ten_65536_58'
                                   1272 ;place_one                 Allocated with name '_valid_input_place_one_65536_58'
                                   1273 ;hex_val                   Allocated with name '_valid_input_hex_val_65536_58'
                                   1274 ;------------------------------------------------------------
                                   1275 ;	main.c:382: unsigned char valid_input(void){
                                   1276 ;	-----------------------------------------
                                   1277 ;	 function valid_input
                                   1278 ;	-----------------------------------------
      00033F                       1279 _valid_input:
                                   1280 ;	main.c:383: unsigned char place_ten=putchar(getchar());
      00033F 12 00 93         [24] 1281 	lcall	_getchar
      000342 12 00 74         [24] 1282 	lcall	_putchar
      000345 AE 82            [24] 1283 	mov	r6,dpl
                                   1284 ;	main.c:384: unsigned char place_one=putchar(getchar());
      000347 C0 06            [24] 1285 	push	ar6
      000349 12 00 93         [24] 1286 	lcall	_getchar
      00034C 12 00 74         [24] 1287 	lcall	_putchar
      00034F AD 82            [24] 1288 	mov	r5,dpl
      000351 D0 06            [24] 1289 	pop	ar6
                                   1290 ;	main.c:386: if((place_ten=='0'||place_ten=='1'||place_ten=='4'||place_ten=='5')&&(place_one>='0'&&place_one<='9')){
      000353 E4               [12] 1291 	clr	a
      000354 BE 30 01         [24] 1292 	cjne	r6,#0x30,00159$
      000357 04               [12] 1293 	inc	a
      000358                       1294 00159$:
      000358 FF               [12] 1295 	mov	r7,a
      000359 70 0D            [24] 1296 	jnz	00116$
      00035B BE 31 02         [24] 1297 	cjne	r6,#0x31,00162$
      00035E 80 08            [24] 1298 	sjmp	00116$
      000360                       1299 00162$:
      000360 BE 34 02         [24] 1300 	cjne	r6,#0x34,00163$
      000363 80 03            [24] 1301 	sjmp	00116$
      000365                       1302 00163$:
      000365 BE 35 1F         [24] 1303 	cjne	r6,#0x35,00110$
      000368                       1304 00116$:
      000368 BD 30 00         [24] 1305 	cjne	r5,#0x30,00166$
      00036B                       1306 00166$:
      00036B 40 1A            [24] 1307 	jc	00110$
      00036D ED               [12] 1308 	mov	a,r5
      00036E 24 C6            [12] 1309 	add	a,#0xff - 0x39
      000370 40 15            [24] 1310 	jc	00110$
                                   1311 ;	main.c:387: hex_val=(((place_ten-'0')*16)+(place_one-'0'));
      000372 8E 04            [24] 1312 	mov	ar4,r6
      000374 EC               [12] 1313 	mov	a,r4
      000375 24 D0            [12] 1314 	add	a,#0xd0
      000377 C4               [12] 1315 	swap	a
      000378 54 F0            [12] 1316 	anl	a,#0xf0
      00037A FC               [12] 1317 	mov	r4,a
      00037B 8D 03            [24] 1318 	mov	ar3,r5
      00037D EB               [12] 1319 	mov	a,r3
      00037E 24 D0            [12] 1320 	add	a,#0xd0
      000380 90 04 0D         [24] 1321 	mov	dptr,#_valid_input_hex_val_65536_58
      000383 2C               [12] 1322 	add	a,r4
      000384 F0               [24] 1323 	movx	@dptr,a
      000385 80 3D            [24] 1324 	sjmp	00111$
      000387                       1325 00110$:
                                   1326 ;	main.c:389: else if((place_ten=='0'||place_ten=='1'||place_ten=='4'||place_ten=='5')&&(place_one>='A'&&place_one<='F')){
      000387 EF               [12] 1327 	mov	a,r7
      000388 70 0D            [24] 1328 	jnz	00108$
      00038A BE 31 02         [24] 1329 	cjne	r6,#0x31,00170$
      00038D 80 08            [24] 1330 	sjmp	00108$
      00038F                       1331 00170$:
      00038F BE 34 02         [24] 1332 	cjne	r6,#0x34,00171$
      000392 80 03            [24] 1333 	sjmp	00108$
      000394                       1334 00171$:
      000394 BE 35 1B         [24] 1335 	cjne	r6,#0x35,00102$
      000397                       1336 00108$:
      000397 BD 41 00         [24] 1337 	cjne	r5,#0x41,00174$
      00039A                       1338 00174$:
      00039A 40 16            [24] 1339 	jc	00102$
      00039C ED               [12] 1340 	mov	a,r5
      00039D 24 B9            [12] 1341 	add	a,#0xff - 0x46
      00039F 40 11            [24] 1342 	jc	00102$
                                   1343 ;	main.c:390: hex_val=(((place_ten-'0')*16)+(place_one-'7'));
      0003A1 EE               [12] 1344 	mov	a,r6
      0003A2 24 D0            [12] 1345 	add	a,#0xd0
      0003A4 C4               [12] 1346 	swap	a
      0003A5 54 F0            [12] 1347 	anl	a,#0xf0
      0003A7 FE               [12] 1348 	mov	r6,a
      0003A8 ED               [12] 1349 	mov	a,r5
      0003A9 24 C9            [12] 1350 	add	a,#0xc9
      0003AB 90 04 0D         [24] 1351 	mov	dptr,#_valid_input_hex_val_65536_58
      0003AE 2E               [12] 1352 	add	a,r6
      0003AF F0               [24] 1353 	movx	@dptr,a
      0003B0 80 12            [24] 1354 	sjmp	00111$
      0003B2                       1355 00102$:
                                   1356 ;	main.c:393: printf_tiny("\n\rEnter valid input between (00 to 1F) or (40 to 58): \n\r");
      0003B2 74 AD            [12] 1357 	mov	a,#___str_1
      0003B4 C0 E0            [24] 1358 	push	acc
      0003B6 74 18            [12] 1359 	mov	a,#(___str_1 >> 8)
      0003B8 C0 E0            [24] 1360 	push	acc
      0003BA 12 0B DF         [24] 1361 	lcall	_printf_tiny
      0003BD 15 81            [12] 1362 	dec	sp
      0003BF 15 81            [12] 1363 	dec	sp
                                   1364 ;	main.c:394: valid_input();
      0003C1 12 03 3F         [24] 1365 	lcall	_valid_input
      0003C4                       1366 00111$:
                                   1367 ;	main.c:396: return hex_val;
      0003C4 90 04 0D         [24] 1368 	mov	dptr,#_valid_input_hex_val_65536_58
      0003C7 E0               [24] 1369 	movx	a,@dptr
                                   1370 ;	main.c:397: }
      0003C8 F5 82            [12] 1371 	mov	dpl,a
      0003CA 22               [24] 1372 	ret
                                   1373 ;------------------------------------------------------------
                                   1374 ;Allocation info for local variables in function 'timer0_ISR'
                                   1375 ;------------------------------------------------------------
                                   1376 ;	main.c:409: void timer0_ISR()__interrupt(1)
                                   1377 ;	-----------------------------------------
                                   1378 ;	 function timer0_ISR
                                   1379 ;	-----------------------------------------
      0003CB                       1380 _timer0_ISR:
      0003CB C0 21            [24] 1381 	push	bits
      0003CD C0 E0            [24] 1382 	push	acc
      0003CF C0 F0            [24] 1383 	push	b
      0003D1 C0 82            [24] 1384 	push	dpl
      0003D3 C0 83            [24] 1385 	push	dph
      0003D5 C0 07            [24] 1386 	push	(0+7)
      0003D7 C0 06            [24] 1387 	push	(0+6)
      0003D9 C0 05            [24] 1388 	push	(0+5)
      0003DB C0 04            [24] 1389 	push	(0+4)
      0003DD C0 03            [24] 1390 	push	(0+3)
      0003DF C0 02            [24] 1391 	push	(0+2)
      0003E1 C0 01            [24] 1392 	push	(0+1)
      0003E3 C0 00            [24] 1393 	push	(0+0)
      0003E5 C0 D0            [24] 1394 	push	psw
      0003E7 75 D0 00         [24] 1395 	mov	psw,#0x00
                                   1396 ;	main.c:412: save_cursor_address=get_cursor_address();
      0003EA 12 00 E5         [24] 1397 	lcall	_get_cursor_address
      0003ED E5 82            [12] 1398 	mov	a,dpl
      0003EF 90 04 00         [24] 1399 	mov	dptr,#_save_cursor_address
      0003F2 F0               [24] 1400 	movx	@dptr,a
                                   1401 ;	main.c:413: if(counter==ONE_TENTH_SECOND){
      0003F3 90 04 64         [24] 1402 	mov	dptr,#_counter
      0003F6 E0               [24] 1403 	movx	a,@dptr
      0003F7 FE               [12] 1404 	mov	r6,a
      0003F8 A3               [24] 1405 	inc	dptr
      0003F9 E0               [24] 1406 	movx	a,@dptr
      0003FA FF               [12] 1407 	mov	r7,a
      0003FB BE 1E 12         [24] 1408 	cjne	r6,#0x1e,00102$
      0003FE BF 00 0F         [24] 1409 	cjne	r7,#0x00,00102$
                                   1410 ;	main.c:414: P1_1=P1_1^1;
      000401 B2 91            [12] 1411 	cpl	_P1_1
                                   1412 ;	main.c:415: counter=0;
      000403 90 04 64         [24] 1413 	mov	dptr,#_counter
      000406 E4               [12] 1414 	clr	a
      000407 F0               [24] 1415 	movx	@dptr,a
      000408 A3               [24] 1416 	inc	dptr
      000409 F0               [24] 1417 	movx	@dptr,a
                                   1418 ;	main.c:416: one_tenth_second++;
      00040A 90 04 66         [24] 1419 	mov	dptr,#_one_tenth_second
      00040D E0               [24] 1420 	movx	a,@dptr
      00040E 04               [12] 1421 	inc	a
      00040F F0               [24] 1422 	movx	@dptr,a
      000410                       1423 00102$:
                                   1424 ;	main.c:418: counter++;
      000410 90 04 64         [24] 1425 	mov	dptr,#_counter
      000413 E0               [24] 1426 	movx	a,@dptr
      000414 FE               [12] 1427 	mov	r6,a
      000415 A3               [24] 1428 	inc	dptr
      000416 E0               [24] 1429 	movx	a,@dptr
      000417 FF               [12] 1430 	mov	r7,a
      000418 90 04 64         [24] 1431 	mov	dptr,#_counter
      00041B 74 01            [12] 1432 	mov	a,#0x01
      00041D 2E               [12] 1433 	add	a,r6
      00041E F0               [24] 1434 	movx	@dptr,a
      00041F E4               [12] 1435 	clr	a
      000420 3F               [12] 1436 	addc	a,r7
      000421 A3               [24] 1437 	inc	dptr
      000422 F0               [24] 1438 	movx	@dptr,a
                                   1439 ;	main.c:419: TF0=0;
                                   1440 ;	assignBit
      000423 C2 8D            [12] 1441 	clr	_TF0
                                   1442 ;	main.c:420: TL0=0x00;
      000425 75 8A 00         [24] 1443 	mov	_TL0,#0x00
                                   1444 ;	main.c:421: TH0=0xF0;
      000428 75 8C F0         [24] 1445 	mov	_TH0,#0xf0
                                   1446 ;	main.c:422: lcdgotoaddr(0x59);
      00042B 75 82 59         [24] 1447 	mov	dpl,#0x59
      00042E 12 01 74         [24] 1448 	lcall	_lcdgotoaddr
                                   1449 ;	main.c:423: lcdputch(minute_two);
      000431 90 04 6A         [24] 1450 	mov	dptr,#_minute_two
      000434 E0               [24] 1451 	movx	a,@dptr
      000435 F5 82            [12] 1452 	mov	dpl,a
      000437 12 02 28         [24] 1453 	lcall	_lcdputch
                                   1454 ;	main.c:424: lcdputch(minute_one);
      00043A 90 04 69         [24] 1455 	mov	dptr,#_minute_one
      00043D E0               [24] 1456 	movx	a,@dptr
      00043E F5 82            [12] 1457 	mov	dpl,a
      000440 12 02 28         [24] 1458 	lcall	_lcdputch
                                   1459 ;	main.c:425: lcdputch(':');
      000443 75 82 3A         [24] 1460 	mov	dpl,#0x3a
      000446 12 02 28         [24] 1461 	lcall	_lcdputch
                                   1462 ;	main.c:426: lcdputch(second_two);
      000449 90 04 68         [24] 1463 	mov	dptr,#_second_two
      00044C E0               [24] 1464 	movx	a,@dptr
      00044D F5 82            [12] 1465 	mov	dpl,a
      00044F 12 02 28         [24] 1466 	lcall	_lcdputch
                                   1467 ;	main.c:427: lcdputch(second_one);
      000452 90 04 67         [24] 1468 	mov	dptr,#_second_one
      000455 E0               [24] 1469 	movx	a,@dptr
      000456 F5 82            [12] 1470 	mov	dpl,a
      000458 12 02 28         [24] 1471 	lcall	_lcdputch
                                   1472 ;	main.c:428: lcdputch('.');
      00045B 75 82 2E         [24] 1473 	mov	dpl,#0x2e
      00045E 12 02 28         [24] 1474 	lcall	_lcdputch
                                   1475 ;	main.c:429: lcdputch(one_tenth_second);
      000461 90 04 66         [24] 1476 	mov	dptr,#_one_tenth_second
      000464 E0               [24] 1477 	movx	a,@dptr
      000465 F5 82            [12] 1478 	mov	dpl,a
      000467 12 02 28         [24] 1479 	lcall	_lcdputch
                                   1480 ;	main.c:431: if(one_tenth_second==':'){
      00046A 90 04 66         [24] 1481 	mov	dptr,#_one_tenth_second
      00046D E0               [24] 1482 	movx	a,@dptr
      00046E FF               [12] 1483 	mov	r7,a
      00046F BF 3A 4A         [24] 1484 	cjne	r7,#0x3a,00112$
                                   1485 ;	main.c:432: one_tenth_second='0';
      000472 90 04 66         [24] 1486 	mov	dptr,#_one_tenth_second
      000475 74 30            [12] 1487 	mov	a,#0x30
      000477 F0               [24] 1488 	movx	@dptr,a
                                   1489 ;	main.c:433: second_one++;
      000478 90 04 67         [24] 1490 	mov	dptr,#_second_one
      00047B E0               [24] 1491 	movx	a,@dptr
      00047C 04               [12] 1492 	inc	a
      00047D F0               [24] 1493 	movx	@dptr,a
                                   1494 ;	main.c:434: if(second_one==':'){
      00047E E0               [24] 1495 	movx	a,@dptr
      00047F FF               [12] 1496 	mov	r7,a
      000480 BF 3A 39         [24] 1497 	cjne	r7,#0x3a,00112$
                                   1498 ;	main.c:435: second_one='0';
      000483 90 04 67         [24] 1499 	mov	dptr,#_second_one
      000486 74 30            [12] 1500 	mov	a,#0x30
      000488 F0               [24] 1501 	movx	@dptr,a
                                   1502 ;	main.c:436: second_two++;
      000489 90 04 68         [24] 1503 	mov	dptr,#_second_two
      00048C E0               [24] 1504 	movx	a,@dptr
      00048D 04               [12] 1505 	inc	a
      00048E F0               [24] 1506 	movx	@dptr,a
                                   1507 ;	main.c:437: if(second_two=='6'){
      00048F E0               [24] 1508 	movx	a,@dptr
      000490 FF               [12] 1509 	mov	r7,a
      000491 BF 36 28         [24] 1510 	cjne	r7,#0x36,00112$
                                   1511 ;	main.c:438: second_two='0';
      000494 90 04 68         [24] 1512 	mov	dptr,#_second_two
      000497 74 30            [12] 1513 	mov	a,#0x30
      000499 F0               [24] 1514 	movx	@dptr,a
                                   1515 ;	main.c:439: minute_one++;
      00049A 90 04 69         [24] 1516 	mov	dptr,#_minute_one
      00049D E0               [24] 1517 	movx	a,@dptr
      00049E 04               [12] 1518 	inc	a
      00049F F0               [24] 1519 	movx	@dptr,a
                                   1520 ;	main.c:440: if(minute_one==':'){
      0004A0 E0               [24] 1521 	movx	a,@dptr
      0004A1 FF               [12] 1522 	mov	r7,a
      0004A2 BF 3A 17         [24] 1523 	cjne	r7,#0x3a,00112$
                                   1524 ;	main.c:441: minute_one='0';
      0004A5 90 04 69         [24] 1525 	mov	dptr,#_minute_one
      0004A8 74 30            [12] 1526 	mov	a,#0x30
      0004AA F0               [24] 1527 	movx	@dptr,a
                                   1528 ;	main.c:442: minute_two++;
      0004AB 90 04 6A         [24] 1529 	mov	dptr,#_minute_two
      0004AE E0               [24] 1530 	movx	a,@dptr
      0004AF 04               [12] 1531 	inc	a
      0004B0 F0               [24] 1532 	movx	@dptr,a
                                   1533 ;	main.c:443: if(minute_two=='6'){
      0004B1 E0               [24] 1534 	movx	a,@dptr
      0004B2 FF               [12] 1535 	mov	r7,a
      0004B3 BF 36 06         [24] 1536 	cjne	r7,#0x36,00112$
                                   1537 ;	main.c:444: minute_two='0';
      0004B6 90 04 6A         [24] 1538 	mov	dptr,#_minute_two
      0004B9 74 30            [12] 1539 	mov	a,#0x30
      0004BB F0               [24] 1540 	movx	@dptr,a
      0004BC                       1541 00112$:
                                   1542 ;	main.c:450: lcdgotoaddr(save_cursor_address);
      0004BC 90 04 00         [24] 1543 	mov	dptr,#_save_cursor_address
      0004BF E0               [24] 1544 	movx	a,@dptr
      0004C0 F5 82            [12] 1545 	mov	dpl,a
      0004C2 12 01 74         [24] 1546 	lcall	_lcdgotoaddr
                                   1547 ;	main.c:451: }
      0004C5 D0 D0            [24] 1548 	pop	psw
      0004C7 D0 00            [24] 1549 	pop	(0+0)
      0004C9 D0 01            [24] 1550 	pop	(0+1)
      0004CB D0 02            [24] 1551 	pop	(0+2)
      0004CD D0 03            [24] 1552 	pop	(0+3)
      0004CF D0 04            [24] 1553 	pop	(0+4)
      0004D1 D0 05            [24] 1554 	pop	(0+5)
      0004D3 D0 06            [24] 1555 	pop	(0+6)
      0004D5 D0 07            [24] 1556 	pop	(0+7)
      0004D7 D0 83            [24] 1557 	pop	dph
      0004D9 D0 82            [24] 1558 	pop	dpl
      0004DB D0 F0            [24] 1559 	pop	b
      0004DD D0 E0            [24] 1560 	pop	acc
      0004DF D0 21            [24] 1561 	pop	bits
      0004E1 32               [24] 1562 	reti
                                   1563 ;------------------------------------------------------------
                                   1564 ;Allocation info for local variables in function 'init_timer0'
                                   1565 ;------------------------------------------------------------
                                   1566 ;	main.c:463: void init_timer0(void){
                                   1567 ;	-----------------------------------------
                                   1568 ;	 function init_timer0
                                   1569 ;	-----------------------------------------
      0004E2                       1570 _init_timer0:
                                   1571 ;	main.c:464: TCON=TCON&(~0x30);
      0004E2 53 88 CF         [24] 1572 	anl	_TCON,#0xcf
                                   1573 ;	main.c:465: TMOD=0x01;
      0004E5 75 89 01         [24] 1574 	mov	_TMOD,#0x01
                                   1575 ;	main.c:466: TL0=0x00;
      0004E8 75 8A 00         [24] 1576 	mov	_TL0,#0x00
                                   1577 ;	main.c:467: TH0=0xF0;
      0004EB 75 8C F0         [24] 1578 	mov	_TH0,#0xf0
                                   1579 ;	main.c:468: IE=0x82;
      0004EE 75 A8 82         [24] 1580 	mov	_IE,#0x82
                                   1581 ;	main.c:469: TCON|=0x10;
      0004F1 43 88 10         [24] 1582 	orl	_TCON,#0x10
                                   1583 ;	main.c:471: }
      0004F4 22               [24] 1584 	ret
                                   1585 ;------------------------------------------------------------
                                   1586 ;Allocation info for local variables in function 'init_uart'
                                   1587 ;------------------------------------------------------------
                                   1588 ;	main.c:474: void init_uart(){
                                   1589 ;	-----------------------------------------
                                   1590 ;	 function init_uart
                                   1591 ;	-----------------------------------------
      0004F5                       1592 _init_uart:
                                   1593 ;	main.c:475: SCON=0x52;
      0004F5 75 98 52         [24] 1594 	mov	_SCON,#0x52
                                   1595 ;	main.c:476: TMOD=0x20;
      0004F8 75 89 20         [24] 1596 	mov	_TMOD,#0x20
                                   1597 ;	main.c:477: TH1=0xFD;
      0004FB 75 8D FD         [24] 1598 	mov	_TH1,#0xfd
                                   1599 ;	main.c:478: TR1=1;
                                   1600 ;	assignBit
      0004FE D2 8E            [12] 1601 	setb	_TR1
                                   1602 ;	main.c:479: }
      000500 22               [24] 1603 	ret
                                   1604 ;------------------------------------------------------------
                                   1605 ;Allocation info for local variables in function 'send_addr_read_data'
                                   1606 ;------------------------------------------------------------
                                   1607 ;address                   Allocated with name '_send_addr_read_data_PARM_2'
                                   1608 ;ddram_flag                Allocated with name '_send_addr_read_data_ddram_flag_65536_72'
                                   1609 ;------------------------------------------------------------
                                   1610 ;	main.c:482: uint8_t send_addr_read_data(uint8_t ddram_flag, uint8_t address){
                                   1611 ;	-----------------------------------------
                                   1612 ;	 function send_addr_read_data
                                   1613 ;	-----------------------------------------
      000501                       1614 _send_addr_read_data:
      000501 E5 82            [12] 1615 	mov	a,dpl
      000503 90 04 0F         [24] 1616 	mov	dptr,#_send_addr_read_data_ddram_flag_65536_72
      000506 F0               [24] 1617 	movx	@dptr,a
                                   1618 ;	main.c:484: if(ddram_flag==1){
      000507 E0               [24] 1619 	movx	a,@dptr
      000508 FF               [12] 1620 	mov	r7,a
      000509 BF 01 0B         [24] 1621 	cjne	r7,#0x01,00102$
                                   1622 ;	main.c:485: lcdgotoaddr(address);
      00050C 90 04 0E         [24] 1623 	mov	dptr,#_send_addr_read_data_PARM_2
      00050F E0               [24] 1624 	movx	a,@dptr
      000510 F5 82            [12] 1625 	mov	dpl,a
      000512 12 01 74         [24] 1626 	lcall	_lcdgotoaddr
      000515 80 0F            [24] 1627 	sjmp	00103$
      000517                       1628 00102$:
                                   1629 ;	main.c:488: RS=0;
                                   1630 ;	assignBit
      000517 C2 94            [12] 1631 	clr	_P1_4
                                   1632 ;	main.c:489: RW=0;
                                   1633 ;	assignBit
      000519 C2 95            [12] 1634 	clr	_P1_5
                                   1635 ;	main.c:490: lcd_ptr=address;
      00051B 90 04 0E         [24] 1636 	mov	dptr,#_send_addr_read_data_PARM_2
      00051E E0               [24] 1637 	movx	a,@dptr
      00051F 90 80 00         [24] 1638 	mov	dptr,#_lcd_ptr
      000522 F0               [24] 1639 	movx	@dptr,a
                                   1640 ;	main.c:491: lcdbusywait();
      000523 12 01 68         [24] 1641 	lcall	_lcdbusywait
      000526                       1642 00103$:
                                   1643 ;	main.c:493: RS=1;
                                   1644 ;	assignBit
      000526 D2 94            [12] 1645 	setb	_P1_4
                                   1646 ;	main.c:494: RW=1;
                                   1647 ;	assignBit
      000528 D2 95            [12] 1648 	setb	_P1_5
                                   1649 ;	main.c:495: return lcd_ptr;
      00052A 90 80 00         [24] 1650 	mov	dptr,#_lcd_ptr
      00052D E0               [24] 1651 	movx	a,@dptr
                                   1652 ;	main.c:496: }
      00052E F5 82            [12] 1653 	mov	dpl,a
      000530 22               [24] 1654 	ret
                                   1655 ;------------------------------------------------------------
                                   1656 ;Allocation info for local variables in function 'lcdcreatechar'
                                   1657 ;------------------------------------------------------------
                                   1658 ;sloc0                     Allocated with name '_lcdcreatechar_sloc0_1_0'
                                   1659 ;row_vals                  Allocated with name '_lcdcreatechar_PARM_2'
                                   1660 ;ccode                     Allocated with name '_lcdcreatechar_ccode_65536_76'
                                   1661 ;cchar_num                 Allocated with name '_lcdcreatechar_cchar_num_65536_77'
                                   1662 ;m                         Allocated with name '_lcdcreatechar_m_131072_78'
                                   1663 ;------------------------------------------------------------
                                   1664 ;	main.c:498: void lcdcreatechar(unsigned char ccode, unsigned char row_vals[]){
                                   1665 ;	-----------------------------------------
                                   1666 ;	 function lcdcreatechar
                                   1667 ;	-----------------------------------------
      000531                       1668 _lcdcreatechar:
      000531 E5 82            [12] 1669 	mov	a,dpl
      000533 90 04 13         [24] 1670 	mov	dptr,#_lcdcreatechar_ccode_65536_76
      000536 F0               [24] 1671 	movx	@dptr,a
                                   1672 ;	main.c:499: unsigned char cchar_num=(0x40|((ccode-'0')<<3));
      000537 E0               [24] 1673 	movx	a,@dptr
      000538 24 D0            [12] 1674 	add	a,#0xd0
      00053A C4               [12] 1675 	swap	a
      00053B 03               [12] 1676 	rr	a
      00053C 54 F8            [12] 1677 	anl	a,#0xf8
      00053E FF               [12] 1678 	mov	r7,a
      00053F 43 07 40         [24] 1679 	orl	ar7,#0x40
                                   1680 ;	main.c:500: printf("\n\rcustom character number %x",cchar_num);
      000542 8F 05            [24] 1681 	mov	ar5,r7
      000544 7E 00            [12] 1682 	mov	r6,#0x00
      000546 C0 07            [24] 1683 	push	ar7
      000548 C0 06            [24] 1684 	push	ar6
      00054A C0 05            [24] 1685 	push	ar5
      00054C C0 05            [24] 1686 	push	ar5
      00054E C0 06            [24] 1687 	push	ar6
      000550 74 E6            [12] 1688 	mov	a,#___str_2
      000552 C0 E0            [24] 1689 	push	acc
      000554 74 18            [12] 1690 	mov	a,#(___str_2 >> 8)
      000556 C0 E0            [24] 1691 	push	acc
      000558 74 80            [12] 1692 	mov	a,#0x80
      00055A C0 E0            [24] 1693 	push	acc
      00055C 12 0E 4A         [24] 1694 	lcall	_printf
      00055F E5 81            [12] 1695 	mov	a,sp
      000561 24 FB            [12] 1696 	add	a,#0xfb
      000563 F5 81            [12] 1697 	mov	sp,a
      000565 D0 05            [24] 1698 	pop	ar5
      000567 D0 06            [24] 1699 	pop	ar6
      000569 D0 07            [24] 1700 	pop	ar7
                                   1701 ;	main.c:501: for(int m=0;m<8;m++){
      00056B 90 04 10         [24] 1702 	mov	dptr,#_lcdcreatechar_PARM_2
      00056E E0               [24] 1703 	movx	a,@dptr
      00056F F5 08            [12] 1704 	mov	_lcdcreatechar_sloc0_1_0,a
      000571 A3               [24] 1705 	inc	dptr
      000572 E0               [24] 1706 	movx	a,@dptr
      000573 F5 09            [12] 1707 	mov	(_lcdcreatechar_sloc0_1_0 + 1),a
      000575 A3               [24] 1708 	inc	dptr
      000576 E0               [24] 1709 	movx	a,@dptr
      000577 F5 0A            [12] 1710 	mov	(_lcdcreatechar_sloc0_1_0 + 2),a
      000579 78 00            [12] 1711 	mov	r0,#0x00
      00057B 79 00            [12] 1712 	mov	r1,#0x00
      00057D                       1713 00103$:
      00057D C3               [12] 1714 	clr	c
      00057E E8               [12] 1715 	mov	a,r0
      00057F 94 08            [12] 1716 	subb	a,#0x08
      000581 E9               [12] 1717 	mov	a,r1
      000582 64 80            [12] 1718 	xrl	a,#0x80
      000584 94 80            [12] 1719 	subb	a,#0x80
      000586 50 71            [24] 1720 	jnc	00101$
                                   1721 ;	main.c:502: RS=0;
                                   1722 ;	assignBit
      000588 C2 94            [12] 1723 	clr	_P1_4
                                   1724 ;	main.c:503: RW=0;
                                   1725 ;	assignBit
      00058A C2 95            [12] 1726 	clr	_P1_5
                                   1727 ;	main.c:504: lcd_ptr=cchar_num+m;
      00058C 88 04            [24] 1728 	mov	ar4,r0
      00058E 8F 03            [24] 1729 	mov	ar3,r7
      000590 90 80 00         [24] 1730 	mov	dptr,#_lcd_ptr
      000593 EC               [12] 1731 	mov	a,r4
      000594 2B               [12] 1732 	add	a,r3
      000595 F0               [24] 1733 	movx	@dptr,a
                                   1734 ;	main.c:505: printf("\n\rlcd_ptr= %x",cchar_num+m);
      000596 E8               [12] 1735 	mov	a,r0
      000597 2D               [12] 1736 	add	a,r5
      000598 FB               [12] 1737 	mov	r3,a
      000599 E9               [12] 1738 	mov	a,r1
      00059A 3E               [12] 1739 	addc	a,r6
      00059B FC               [12] 1740 	mov	r4,a
      00059C C0 07            [24] 1741 	push	ar7
      00059E C0 06            [24] 1742 	push	ar6
      0005A0 C0 05            [24] 1743 	push	ar5
      0005A2 C0 01            [24] 1744 	push	ar1
      0005A4 C0 00            [24] 1745 	push	ar0
      0005A6 C0 03            [24] 1746 	push	ar3
      0005A8 C0 04            [24] 1747 	push	ar4
      0005AA 74 03            [12] 1748 	mov	a,#___str_3
      0005AC C0 E0            [24] 1749 	push	acc
      0005AE 74 19            [12] 1750 	mov	a,#(___str_3 >> 8)
      0005B0 C0 E0            [24] 1751 	push	acc
      0005B2 74 80            [12] 1752 	mov	a,#0x80
      0005B4 C0 E0            [24] 1753 	push	acc
      0005B6 12 0E 4A         [24] 1754 	lcall	_printf
      0005B9 E5 81            [12] 1755 	mov	a,sp
      0005BB 24 FB            [12] 1756 	add	a,#0xfb
      0005BD F5 81            [12] 1757 	mov	sp,a
                                   1758 ;	main.c:506: lcdbusywait();
      0005BF 12 01 68         [24] 1759 	lcall	_lcdbusywait
      0005C2 D0 00            [24] 1760 	pop	ar0
      0005C4 D0 01            [24] 1761 	pop	ar1
                                   1762 ;	main.c:507: RS=1;
                                   1763 ;	assignBit
      0005C6 D2 94            [12] 1764 	setb	_P1_4
                                   1765 ;	main.c:508: RW=0;
                                   1766 ;	assignBit
      0005C8 C2 95            [12] 1767 	clr	_P1_5
                                   1768 ;	main.c:509: lcd_ptr=row_vals[m];
      0005CA E8               [12] 1769 	mov	a,r0
      0005CB 25 08            [12] 1770 	add	a,_lcdcreatechar_sloc0_1_0
      0005CD FA               [12] 1771 	mov	r2,a
      0005CE E9               [12] 1772 	mov	a,r1
      0005CF 35 09            [12] 1773 	addc	a,(_lcdcreatechar_sloc0_1_0 + 1)
      0005D1 FB               [12] 1774 	mov	r3,a
      0005D2 AC 0A            [24] 1775 	mov	r4,(_lcdcreatechar_sloc0_1_0 + 2)
      0005D4 8A 82            [24] 1776 	mov	dpl,r2
      0005D6 8B 83            [24] 1777 	mov	dph,r3
      0005D8 8C F0            [24] 1778 	mov	b,r4
      0005DA 12 18 89         [24] 1779 	lcall	__gptrget
      0005DD 90 80 00         [24] 1780 	mov	dptr,#_lcd_ptr
      0005E0 F0               [24] 1781 	movx	@dptr,a
                                   1782 ;	main.c:510: lcdbusywait();
      0005E1 C0 01            [24] 1783 	push	ar1
      0005E3 C0 00            [24] 1784 	push	ar0
      0005E5 12 01 68         [24] 1785 	lcall	_lcdbusywait
      0005E8 D0 00            [24] 1786 	pop	ar0
      0005EA D0 01            [24] 1787 	pop	ar1
      0005EC D0 05            [24] 1788 	pop	ar5
      0005EE D0 06            [24] 1789 	pop	ar6
      0005F0 D0 07            [24] 1790 	pop	ar7
                                   1791 ;	main.c:501: for(int m=0;m<8;m++){
      0005F2 08               [12] 1792 	inc	r0
      0005F3 B8 00 87         [24] 1793 	cjne	r0,#0x00,00103$
      0005F6 09               [12] 1794 	inc	r1
      0005F7 80 84            [24] 1795 	sjmp	00103$
      0005F9                       1796 00101$:
                                   1797 ;	main.c:512: lcdgotoxy('0','4');
      0005F9 90 04 06         [24] 1798 	mov	dptr,#_lcdgotoxy_PARM_2
      0005FC 74 34            [12] 1799 	mov	a,#0x34
      0005FE F0               [24] 1800 	movx	@dptr,a
      0005FF 75 82 30         [24] 1801 	mov	dpl,#0x30
      000602 12 01 91         [24] 1802 	lcall	_lcdgotoxy
                                   1803 ;	main.c:513: lcdputch(0);
      000605 75 82 00         [24] 1804 	mov	dpl,#0x00
                                   1805 ;	main.c:514: }
      000608 02 02 28         [24] 1806 	ljmp	_lcdputch
                                   1807 ;------------------------------------------------------------
                                   1808 ;Allocation info for local variables in function 'main'
                                   1809 ;------------------------------------------------------------
                                   1810 ;sloc1                     Allocated with name '_main_sloc1_1_0'
                                   1811 ;input                     Allocated with name '_main_input_65537_82'
                                   1812 ;lcd_input                 Allocated with name '_main_lcd_input_65537_82'
                                   1813 ;ch                        Allocated with name '_main_ch_65537_82'
                                   1814 ;string                    Allocated with name '_main_string_65537_82'
                                   1815 ;i                         Allocated with name '_main_i_65537_82'
                                   1816 ;j                         Allocated with name '_main_j_65537_82'
                                   1817 ;k                         Allocated with name '_main_k_65537_82'
                                   1818 ;goto_address              Allocated with name '_main_goto_address_196610_86'
                                   1819 ;row                       Allocated with name '_main_row_196611_88'
                                   1820 ;column                    Allocated with name '_main_column_196612_89'
                                   1821 ;k                         Allocated with name '_main_k_196613_91'
                                   1822 ;ccode                     Allocated with name '_main_ccode_196614_104'
                                   1823 ;row_vals                  Allocated with name '_main_row_vals_196615_105'
                                   1824 ;------------------------------------------------------------
                                   1825 ;	main.c:516: void main(void)
                                   1826 ;	-----------------------------------------
                                   1827 ;	 function main
                                   1828 ;	-----------------------------------------
      00060B                       1829 _main:
                                   1830 ;	main.c:518: init_uart();
      00060B 12 04 F5         [24] 1831 	lcall	_init_uart
                                   1832 ;	main.c:524: lcdinit();
      00060E 12 00 F2         [24] 1833 	lcall	_lcdinit
                                   1834 ;	main.c:525: init_timer0();
      000611 12 04 E2         [24] 1835 	lcall	_init_timer0
                                   1836 ;	main.c:526: while(1){
      000614                       1837 00136$:
                                   1838 ;	main.c:530: printf_tiny("\n\n\rPress # for to see the menu");
      000614 74 11            [12] 1839 	mov	a,#___str_4
      000616 C0 E0            [24] 1840 	push	acc
      000618 74 19            [12] 1841 	mov	a,#(___str_4 >> 8)
      00061A C0 E0            [24] 1842 	push	acc
      00061C 12 0B DF         [24] 1843 	lcall	_printf_tiny
      00061F 15 81            [12] 1844 	dec	sp
      000621 15 81            [12] 1845 	dec	sp
                                   1846 ;	main.c:531: printf_tiny("\n\n\rEnter a choice:    ");
      000623 74 30            [12] 1847 	mov	a,#___str_5
      000625 C0 E0            [24] 1848 	push	acc
      000627 74 19            [12] 1849 	mov	a,#(___str_5 >> 8)
      000629 C0 E0            [24] 1850 	push	acc
      00062B 12 0B DF         [24] 1851 	lcall	_printf_tiny
      00062E 15 81            [12] 1852 	dec	sp
      000630 15 81            [12] 1853 	dec	sp
                                   1854 ;	main.c:534: input=getchar();
      000632 12 00 93         [24] 1855 	lcall	_getchar
      000635 AE 82            [24] 1856 	mov	r6,dpl
                                   1857 ;	main.c:535: printf_tiny("%c\n\r",input);
      000637 8E 05            [24] 1858 	mov	ar5,r6
      000639 7F 00            [12] 1859 	mov	r7,#0x00
      00063B C0 06            [24] 1860 	push	ar6
      00063D C0 05            [24] 1861 	push	ar5
      00063F C0 07            [24] 1862 	push	ar7
      000641 74 47            [12] 1863 	mov	a,#___str_6
      000643 C0 E0            [24] 1864 	push	acc
      000645 74 19            [12] 1865 	mov	a,#(___str_6 >> 8)
      000647 C0 E0            [24] 1866 	push	acc
      000649 12 0B DF         [24] 1867 	lcall	_printf_tiny
      00064C E5 81            [12] 1868 	mov	a,sp
      00064E 24 FC            [12] 1869 	add	a,#0xfc
      000650 F5 81            [12] 1870 	mov	sp,a
      000652 D0 06            [24] 1871 	pop	ar6
                                   1872 ;	main.c:536: switch(input){
      000654 BE 23 02         [24] 1873 	cjne	r6,#0x23,00253$
      000657 80 3F            [24] 1874 	sjmp	00101$
      000659                       1875 00253$:
      000659 BE 42 03         [24] 1876 	cjne	r6,#0x42,00254$
      00065C 02 08 9A         [24] 1877 	ljmp	00115$
      00065F                       1878 00254$:
      00065F BE 43 03         [24] 1879 	cjne	r6,#0x43,00255$
      000662 02 07 84         [24] 1880 	ljmp	00104$
      000665                       1881 00255$:
      000665 BE 45 03         [24] 1882 	cjne	r6,#0x45,00256$
      000668 02 08 8E         [24] 1883 	ljmp	00113$
      00066B                       1884 00256$:
      00066B BE 48 03         [24] 1885 	cjne	r6,#0x48,00257$
      00066E 02 09 0F         [24] 1886 	ljmp	00116$
      000671                       1887 00257$:
      000671 BE 4A 03         [24] 1888 	cjne	r6,#0x4a,00258$
      000674 02 07 1E         [24] 1889 	ljmp	00102$
      000677                       1890 00258$:
      000677 BE 4F 03         [24] 1891 	cjne	r6,#0x4f,00259$
      00067A 02 08 7D         [24] 1892 	ljmp	00112$
      00067D                       1893 00259$:
      00067D BE 51 03         [24] 1894 	cjne	r6,#0x51,00260$
      000680 02 0A E3         [24] 1895 	ljmp	00131$
      000683                       1896 00260$:
      000683 BE 52 03         [24] 1897 	cjne	r6,#0x52,00261$
      000686 02 08 94         [24] 1898 	ljmp	00114$
      000689                       1899 00261$:
      000689 BE 53 03         [24] 1900 	cjne	r6,#0x53,00262$
      00068C 02 07 C8         [24] 1901 	ljmp	00105$
      00068F                       1902 00262$:
      00068F BE 58 03         [24] 1903 	cjne	r6,#0x58,00263$
      000692 02 07 45         [24] 1904 	ljmp	00103$
      000695                       1905 00263$:
      000695 02 06 14         [24] 1906 	ljmp	00136$
                                   1907 ;	main.c:537: case '#':
      000698                       1908 00101$:
                                   1909 ;	main.c:553: }
      000698 D2 00            [12] 1910 	setb	_main_sloc0_1_0
      00069A 10 AF 02         [24] 1911 	jbc	ea,00264$
      00069D C2 00            [12] 1912 	clr	_main_sloc0_1_0
      00069F                       1913 00264$:
                                   1914 ;	main.c:541: printf_tiny("*************ESD LAB 4 Part 2 Menu***************");
      00069F 74 4C            [12] 1915 	mov	a,#___str_7
      0006A1 C0 E0            [24] 1916 	push	acc
      0006A3 74 19            [12] 1917 	mov	a,#(___str_7 >> 8)
      0006A5 C0 E0            [24] 1918 	push	acc
      0006A7 12 0B DF         [24] 1919 	lcall	_printf_tiny
      0006AA 15 81            [12] 1920 	dec	sp
      0006AC 15 81            [12] 1921 	dec	sp
                                   1922 ;	main.c:544: printf_tiny("\n\rPress C to print desired character on LCD\n\r");
      0006AE 74 7E            [12] 1923 	mov	a,#___str_8
      0006B0 C0 E0            [24] 1924 	push	acc
      0006B2 74 19            [12] 1925 	mov	a,#(___str_8 >> 8)
      0006B4 C0 E0            [24] 1926 	push	acc
      0006B6 12 0B DF         [24] 1927 	lcall	_printf_tiny
      0006B9 15 81            [12] 1928 	dec	sp
      0006BB 15 81            [12] 1929 	dec	sp
                                   1930 ;	main.c:545: printf_tiny("\n\rPress S to print desired string on LCD\n\r");
      0006BD 74 AC            [12] 1931 	mov	a,#___str_9
      0006BF C0 E0            [24] 1932 	push	acc
      0006C1 74 19            [12] 1933 	mov	a,#(___str_9 >> 8)
      0006C3 C0 E0            [24] 1934 	push	acc
      0006C5 12 0B DF         [24] 1935 	lcall	_printf_tiny
      0006C8 15 81            [12] 1936 	dec	sp
      0006CA 15 81            [12] 1937 	dec	sp
                                   1938 ;	main.c:546: printf_tiny("\n\rPress O to clear LCD\n\r");
      0006CC 74 D7            [12] 1939 	mov	a,#___str_10
      0006CE C0 E0            [24] 1940 	push	acc
      0006D0 74 19            [12] 1941 	mov	a,#(___str_10 >> 8)
      0006D2 C0 E0            [24] 1942 	push	acc
      0006D4 12 0B DF         [24] 1943 	lcall	_printf_tiny
      0006D7 15 81            [12] 1944 	dec	sp
      0006D9 15 81            [12] 1945 	dec	sp
                                   1946 ;	main.c:547: printf_tiny("\n\rPress E to stop the elapsed time clock\n\r");
      0006DB 74 F0            [12] 1947 	mov	a,#___str_11
      0006DD C0 E0            [24] 1948 	push	acc
      0006DF 74 19            [12] 1949 	mov	a,#(___str_11 >> 8)
      0006E1 C0 E0            [24] 1950 	push	acc
      0006E3 12 0B DF         [24] 1951 	lcall	_printf_tiny
      0006E6 15 81            [12] 1952 	dec	sp
      0006E8 15 81            [12] 1953 	dec	sp
                                   1954 ;	main.c:548: printf_tiny("\n\rPress R to restart the clock\n\r");
      0006EA 74 1B            [12] 1955 	mov	a,#___str_12
      0006EC C0 E0            [24] 1956 	push	acc
      0006EE 74 1A            [12] 1957 	mov	a,#(___str_12 >> 8)
      0006F0 C0 E0            [24] 1958 	push	acc
      0006F2 12 0B DF         [24] 1959 	lcall	_printf_tiny
      0006F5 15 81            [12] 1960 	dec	sp
      0006F7 15 81            [12] 1961 	dec	sp
                                   1962 ;	main.c:549: printf_tiny("\n\rPress B to reset the clock back to '00:00.0'\n\r");
      0006F9 74 3C            [12] 1963 	mov	a,#___str_13
      0006FB C0 E0            [24] 1964 	push	acc
      0006FD 74 1A            [12] 1965 	mov	a,#(___str_13 >> 8)
      0006FF C0 E0            [24] 1966 	push	acc
      000701 12 0B DF         [24] 1967 	lcall	_printf_tiny
      000704 15 81            [12] 1968 	dec	sp
      000706 15 81            [12] 1969 	dec	sp
                                   1970 ;	main.c:550: printf_tiny("\n\r**************************************************\n\r");
      000708 74 6D            [12] 1971 	mov	a,#___str_14
      00070A C0 E0            [24] 1972 	push	acc
      00070C 74 1A            [12] 1973 	mov	a,#(___str_14 >> 8)
      00070E C0 E0            [24] 1974 	push	acc
      000710 12 0B DF         [24] 1975 	lcall	_printf_tiny
      000713 15 81            [12] 1976 	dec	sp
      000715 15 81            [12] 1977 	dec	sp
      000717 A2 00            [12] 1978 	mov	c,_main_sloc0_1_0
      000719 92 AF            [24] 1979 	mov	ea,c
                                   1980 ;	main.c:554: break;
      00071B 02 06 14         [24] 1981 	ljmp	00136$
                                   1982 ;	main.c:555: case 'J':
      00071E                       1983 00102$:
                                   1984 ;	main.c:558: printf_tiny("\n\rEnter address without prefix '0x': ");
      00071E 74 A4            [12] 1985 	mov	a,#___str_15
      000720 C0 E0            [24] 1986 	push	acc
      000722 74 1A            [12] 1987 	mov	a,#(___str_15 >> 8)
      000724 C0 E0            [24] 1988 	push	acc
      000726 12 0B DF         [24] 1989 	lcall	_printf_tiny
      000729 15 81            [12] 1990 	dec	sp
      00072B 15 81            [12] 1991 	dec	sp
                                   1992 ;	main.c:559: unsigned char goto_address=valid_input();
      00072D 12 03 3F         [24] 1993 	lcall	_valid_input
      000730 AF 82            [24] 1994 	mov	r7,dpl
                                   1995 ;	main.c:562: }
      000732 D2 00            [12] 1996 	setb	_main_sloc0_1_0
      000734 10 AF 02         [24] 1997 	jbc	ea,00265$
      000737 C2 00            [12] 1998 	clr	_main_sloc0_1_0
      000739                       1999 00265$:
                                   2000 ;	main.c:561: lcdgotoaddr(goto_address);
      000739 8F 82            [24] 2001 	mov	dpl,r7
      00073B 12 01 74         [24] 2002 	lcall	_lcdgotoaddr
      00073E A2 00            [12] 2003 	mov	c,_main_sloc0_1_0
      000740 92 AF            [24] 2004 	mov	ea,c
                                   2005 ;	main.c:563: break;
      000742 02 06 14         [24] 2006 	ljmp	00136$
                                   2007 ;	main.c:564: case 'X':
      000745                       2008 00103$:
                                   2009 ;	main.c:567: printf_tiny("\n\rEnter row: ");
      000745 74 CA            [12] 2010 	mov	a,#___str_16
      000747 C0 E0            [24] 2011 	push	acc
      000749 74 1A            [12] 2012 	mov	a,#(___str_16 >> 8)
      00074B C0 E0            [24] 2013 	push	acc
      00074D 12 0B DF         [24] 2014 	lcall	_printf_tiny
      000750 15 81            [12] 2015 	dec	sp
      000752 15 81            [12] 2016 	dec	sp
                                   2017 ;	main.c:568: unsigned char row=putchar(getchar());
      000754 12 00 93         [24] 2018 	lcall	_getchar
      000757 12 00 74         [24] 2019 	lcall	_putchar
      00075A AE 82            [24] 2020 	mov	r6,dpl
                                   2021 ;	main.c:569: printf_tiny("\n\rEnter column: ");
      00075C C0 06            [24] 2022 	push	ar6
      00075E 74 D8            [12] 2023 	mov	a,#___str_17
      000760 C0 E0            [24] 2024 	push	acc
      000762 74 1A            [12] 2025 	mov	a,#(___str_17 >> 8)
      000764 C0 E0            [24] 2026 	push	acc
      000766 12 0B DF         [24] 2027 	lcall	_printf_tiny
      000769 15 81            [12] 2028 	dec	sp
      00076B 15 81            [12] 2029 	dec	sp
                                   2030 ;	main.c:570: unsigned char column=putchar(getchar());
      00076D 12 00 93         [24] 2031 	lcall	_getchar
      000770 12 00 74         [24] 2032 	lcall	_putchar
      000773 AD 82            [24] 2033 	mov	r5,dpl
      000775 D0 06            [24] 2034 	pop	ar6
      000777 90 04 06         [24] 2035 	mov	dptr,#_lcdgotoxy_PARM_2
      00077A ED               [12] 2036 	mov	a,r5
      00077B F0               [24] 2037 	movx	@dptr,a
                                   2038 ;	main.c:571: lcdgotoxy(row,column);
      00077C 8E 82            [24] 2039 	mov	dpl,r6
      00077E 12 01 91         [24] 2040 	lcall	_lcdgotoxy
                                   2041 ;	main.c:573: break;
      000781 02 06 14         [24] 2042 	ljmp	00136$
                                   2043 ;	main.c:574: case 'C':
      000784                       2044 00104$:
                                   2045 ;	main.c:577: printf_tiny("\n\rEnter character to print on LCD: ");
      000784 74 E9            [12] 2046 	mov	a,#___str_18
      000786 C0 E0            [24] 2047 	push	acc
      000788 74 1A            [12] 2048 	mov	a,#(___str_18 >> 8)
      00078A C0 E0            [24] 2049 	push	acc
      00078C 12 0B DF         [24] 2050 	lcall	_printf_tiny
      00078F 15 81            [12] 2051 	dec	sp
      000791 15 81            [12] 2052 	dec	sp
                                   2053 ;	main.c:578: lcd_input=getchar();
      000793 12 00 93         [24] 2054 	lcall	_getchar
      000796 AE 82            [24] 2055 	mov	r6,dpl
                                   2056 ;	main.c:579: printf_tiny("%c\n\r",lcd_input);
      000798 8E 05            [24] 2057 	mov	ar5,r6
      00079A 7F 00            [12] 2058 	mov	r7,#0x00
      00079C C0 06            [24] 2059 	push	ar6
      00079E C0 05            [24] 2060 	push	ar5
      0007A0 C0 07            [24] 2061 	push	ar7
      0007A2 74 47            [12] 2062 	mov	a,#___str_6
      0007A4 C0 E0            [24] 2063 	push	acc
      0007A6 74 19            [12] 2064 	mov	a,#(___str_6 >> 8)
      0007A8 C0 E0            [24] 2065 	push	acc
      0007AA 12 0B DF         [24] 2066 	lcall	_printf_tiny
      0007AD E5 81            [12] 2067 	mov	a,sp
      0007AF 24 FC            [12] 2068 	add	a,#0xfc
      0007B1 F5 81            [12] 2069 	mov	sp,a
      0007B3 D0 06            [24] 2070 	pop	ar6
                                   2071 ;	main.c:582: }
      0007B5 D2 00            [12] 2072 	setb	_main_sloc0_1_0
      0007B7 10 AF 02         [24] 2073 	jbc	ea,00266$
      0007BA C2 00            [12] 2074 	clr	_main_sloc0_1_0
      0007BC                       2075 00266$:
                                   2076 ;	main.c:581: lcdputch(lcd_input);
      0007BC 8E 82            [24] 2077 	mov	dpl,r6
      0007BE 12 02 28         [24] 2078 	lcall	_lcdputch
      0007C1 A2 00            [12] 2079 	mov	c,_main_sloc0_1_0
      0007C3 92 AF            [24] 2080 	mov	ea,c
                                   2081 ;	main.c:583: break;
      0007C5 02 06 14         [24] 2082 	ljmp	00136$
                                   2083 ;	main.c:584: case 'S':
      0007C8                       2084 00105$:
                                   2085 ;	main.c:587: printf_tiny("\n\rEnter string to print on LCD: ");
      0007C8 74 0D            [12] 2086 	mov	a,#___str_19
      0007CA C0 E0            [24] 2087 	push	acc
      0007CC 74 1B            [12] 2088 	mov	a,#(___str_19 >> 8)
      0007CE C0 E0            [24] 2089 	push	acc
      0007D0 12 0B DF         [24] 2090 	lcall	_printf_tiny
      0007D3 15 81            [12] 2091 	dec	sp
      0007D5 15 81            [12] 2092 	dec	sp
                                   2093 ;	main.c:588: int k=1;
      0007D7 90 04 17         [24] 2094 	mov	dptr,#_main_k_196613_91
      0007DA 74 01            [12] 2095 	mov	a,#0x01
      0007DC F0               [24] 2096 	movx	@dptr,a
      0007DD E4               [12] 2097 	clr	a
      0007DE A3               [24] 2098 	inc	dptr
      0007DF F0               [24] 2099 	movx	@dptr,a
                                   2100 ;	main.c:590: while(k){
      0007E0 90 04 14         [24] 2101 	mov	dptr,#_main_string_65537_82
      0007E3 E0               [24] 2102 	movx	a,@dptr
      0007E4 F5 0B            [12] 2103 	mov	_main_sloc1_1_0,a
      0007E6 A3               [24] 2104 	inc	dptr
      0007E7 E0               [24] 2105 	movx	a,@dptr
      0007E8 F5 0C            [12] 2106 	mov	(_main_sloc1_1_0 + 1),a
      0007EA A3               [24] 2107 	inc	dptr
      0007EB E0               [24] 2108 	movx	a,@dptr
      0007EC F5 0D            [12] 2109 	mov	(_main_sloc1_1_0 + 2),a
      0007EE 7B 00            [12] 2110 	mov	r3,#0x00
      0007F0 7C 00            [12] 2111 	mov	r4,#0x00
      0007F2                       2112 00109$:
      0007F2 90 04 17         [24] 2113 	mov	dptr,#_main_k_196613_91
      0007F5 E0               [24] 2114 	movx	a,@dptr
      0007F6 F5 F0            [12] 2115 	mov	b,a
      0007F8 A3               [24] 2116 	inc	dptr
      0007F9 E0               [24] 2117 	movx	a,@dptr
      0007FA 45 F0            [12] 2118 	orl	a,b
      0007FC 60 51            [24] 2119 	jz	00111$
                                   2120 ;	main.c:591: ch=getchar();
      0007FE C0 04            [24] 2121 	push	ar4
      000800 C0 03            [24] 2122 	push	ar3
      000802 12 00 93         [24] 2123 	lcall	_getchar
      000805 A9 82            [24] 2124 	mov	r1,dpl
                                   2125 ;	main.c:593: printf_tiny("%c",ch);
      000807 89 00            [24] 2126 	mov	ar0,r1
      000809 7A 00            [12] 2127 	mov	r2,#0x00
      00080B C0 01            [24] 2128 	push	ar1
      00080D C0 00            [24] 2129 	push	ar0
      00080F C0 02            [24] 2130 	push	ar2
      000811 74 2E            [12] 2131 	mov	a,#___str_20
      000813 C0 E0            [24] 2132 	push	acc
      000815 74 1B            [12] 2133 	mov	a,#(___str_20 >> 8)
      000817 C0 E0            [24] 2134 	push	acc
      000819 12 0B DF         [24] 2135 	lcall	_printf_tiny
      00081C E5 81            [12] 2136 	mov	a,sp
      00081E 24 FC            [12] 2137 	add	a,#0xfc
      000820 F5 81            [12] 2138 	mov	sp,a
      000822 D0 01            [24] 2139 	pop	ar1
      000824 D0 03            [24] 2140 	pop	ar3
      000826 D0 04            [24] 2141 	pop	ar4
                                   2142 ;	main.c:594: if(ch==0xD)
      000828 B9 0D 09         [24] 2143 	cjne	r1,#0x0d,00107$
                                   2144 ;	main.c:595: k=0;
      00082B 90 04 17         [24] 2145 	mov	dptr,#_main_k_196613_91
      00082E E4               [12] 2146 	clr	a
      00082F F0               [24] 2147 	movx	@dptr,a
      000830 A3               [24] 2148 	inc	dptr
      000831 F0               [24] 2149 	movx	@dptr,a
      000832 80 BE            [24] 2150 	sjmp	00109$
      000834                       2151 00107$:
                                   2152 ;	main.c:597: *(string+i)=ch;
      000834 EB               [12] 2153 	mov	a,r3
      000835 25 0B            [12] 2154 	add	a,_main_sloc1_1_0
      000837 F8               [12] 2155 	mov	r0,a
      000838 EC               [12] 2156 	mov	a,r4
      000839 35 0C            [12] 2157 	addc	a,(_main_sloc1_1_0 + 1)
      00083B FA               [12] 2158 	mov	r2,a
      00083C AF 0D            [24] 2159 	mov	r7,(_main_sloc1_1_0 + 2)
      00083E 88 82            [24] 2160 	mov	dpl,r0
      000840 8A 83            [24] 2161 	mov	dph,r2
      000842 8F F0            [24] 2162 	mov	b,r7
      000844 E9               [12] 2163 	mov	a,r1
      000845 12 0B C4         [24] 2164 	lcall	__gptrput
                                   2165 ;	main.c:598: i++;
      000848 0B               [12] 2166 	inc	r3
      000849 BB 00 A6         [24] 2167 	cjne	r3,#0x00,00109$
      00084C 0C               [12] 2168 	inc	r4
      00084D 80 A3            [24] 2169 	sjmp	00109$
      00084F                       2170 00111$:
                                   2171 ;	main.c:601: *(string+i)='\0';
      00084F EB               [12] 2172 	mov	a,r3
      000850 25 0B            [12] 2173 	add	a,_main_sloc1_1_0
      000852 FB               [12] 2174 	mov	r3,a
      000853 EC               [12] 2175 	mov	a,r4
      000854 35 0C            [12] 2176 	addc	a,(_main_sloc1_1_0 + 1)
      000856 FC               [12] 2177 	mov	r4,a
      000857 AF 0D            [24] 2178 	mov	r7,(_main_sloc1_1_0 + 2)
      000859 8B 82            [24] 2179 	mov	dpl,r3
      00085B 8C 83            [24] 2180 	mov	dph,r4
      00085D 8F F0            [24] 2181 	mov	b,r7
      00085F E4               [12] 2182 	clr	a
      000860 12 0B C4         [24] 2183 	lcall	__gptrput
                                   2184 ;	main.c:604: }
      000863 D2 00            [12] 2185 	setb	_main_sloc0_1_0
      000865 10 AF 02         [24] 2186 	jbc	ea,00271$
      000868 C2 00            [12] 2187 	clr	_main_sloc0_1_0
      00086A                       2188 00271$:
                                   2189 ;	main.c:603: lcdputstr(string);
      00086A 85 0B 82         [24] 2190 	mov	dpl,_main_sloc1_1_0
      00086D 85 0C 83         [24] 2191 	mov	dph,(_main_sloc1_1_0 + 1)
      000870 85 0D F0         [24] 2192 	mov	b,(_main_sloc1_1_0 + 2)
      000873 12 02 C9         [24] 2193 	lcall	_lcdputstr
      000876 A2 00            [12] 2194 	mov	c,_main_sloc0_1_0
      000878 92 AF            [24] 2195 	mov	ea,c
                                   2196 ;	main.c:605: break;
      00087A 02 06 14         [24] 2197 	ljmp	00136$
                                   2198 ;	main.c:606: case 'O':
      00087D                       2199 00112$:
                                   2200 ;	main.c:610: }
      00087D D2 00            [12] 2201 	setb	_main_sloc0_1_0
      00087F 10 AF 02         [24] 2202 	jbc	ea,00272$
      000882 C2 00            [12] 2203 	clr	_main_sloc0_1_0
      000884                       2204 00272$:
                                   2205 ;	main.c:609: lcdclear();
      000884 12 03 1D         [24] 2206 	lcall	_lcdclear
      000887 A2 00            [12] 2207 	mov	c,_main_sloc0_1_0
      000889 92 AF            [24] 2208 	mov	ea,c
                                   2209 ;	main.c:611: break;
      00088B 02 06 14         [24] 2210 	ljmp	00136$
                                   2211 ;	main.c:612: case 'E':
      00088E                       2212 00113$:
                                   2213 ;	main.c:614: TCON&=~(0x10);
      00088E 53 88 EF         [24] 2214 	anl	_TCON,#0xef
                                   2215 ;	main.c:615: break;
      000891 02 06 14         [24] 2216 	ljmp	00136$
                                   2217 ;	main.c:616: case 'R':
      000894                       2218 00114$:
                                   2219 ;	main.c:618: TCON|=0x10;
      000894 43 88 10         [24] 2220 	orl	_TCON,#0x10
                                   2221 ;	main.c:619: break;
      000897 02 06 14         [24] 2222 	ljmp	00136$
                                   2223 ;	main.c:620: case 'B':
      00089A                       2224 00115$:
                                   2225 ;	main.c:638: }
      00089A D2 00            [12] 2226 	setb	_main_sloc0_1_0
      00089C 10 AF 02         [24] 2227 	jbc	ea,00273$
      00089F C2 00            [12] 2228 	clr	_main_sloc0_1_0
      0008A1                       2229 00273$:
                                   2230 ;	main.c:623: save_cursor_address=get_cursor_address();
      0008A1 12 00 E5         [24] 2231 	lcall	_get_cursor_address
      0008A4 E5 82            [12] 2232 	mov	a,dpl
      0008A6 90 04 00         [24] 2233 	mov	dptr,#_save_cursor_address
      0008A9 F0               [24] 2234 	movx	@dptr,a
                                   2235 ;	main.c:624: one_tenth_second='0';
      0008AA 90 04 66         [24] 2236 	mov	dptr,#_one_tenth_second
      0008AD 74 30            [12] 2237 	mov	a,#0x30
      0008AF F0               [24] 2238 	movx	@dptr,a
                                   2239 ;	main.c:625: second_one='0';
      0008B0 90 04 67         [24] 2240 	mov	dptr,#_second_one
      0008B3 F0               [24] 2241 	movx	@dptr,a
                                   2242 ;	main.c:626: second_two='0';
      0008B4 90 04 68         [24] 2243 	mov	dptr,#_second_two
      0008B7 F0               [24] 2244 	movx	@dptr,a
                                   2245 ;	main.c:627: minute_one='0';
      0008B8 90 04 69         [24] 2246 	mov	dptr,#_minute_one
      0008BB F0               [24] 2247 	movx	@dptr,a
                                   2248 ;	main.c:628: minute_two='0';
      0008BC 90 04 6A         [24] 2249 	mov	dptr,#_minute_two
      0008BF F0               [24] 2250 	movx	@dptr,a
                                   2251 ;	main.c:629: lcdgotoaddr(0x59);
      0008C0 75 82 59         [24] 2252 	mov	dpl,#0x59
      0008C3 12 01 74         [24] 2253 	lcall	_lcdgotoaddr
                                   2254 ;	main.c:630: lcdputch(minute_two);
      0008C6 90 04 6A         [24] 2255 	mov	dptr,#_minute_two
      0008C9 E0               [24] 2256 	movx	a,@dptr
      0008CA F5 82            [12] 2257 	mov	dpl,a
      0008CC 12 02 28         [24] 2258 	lcall	_lcdputch
                                   2259 ;	main.c:631: lcdputch(minute_one);
      0008CF 90 04 69         [24] 2260 	mov	dptr,#_minute_one
      0008D2 E0               [24] 2261 	movx	a,@dptr
      0008D3 F5 82            [12] 2262 	mov	dpl,a
      0008D5 12 02 28         [24] 2263 	lcall	_lcdputch
                                   2264 ;	main.c:632: lcdputch(':');
      0008D8 75 82 3A         [24] 2265 	mov	dpl,#0x3a
      0008DB 12 02 28         [24] 2266 	lcall	_lcdputch
                                   2267 ;	main.c:633: lcdputch(second_two);
      0008DE 90 04 68         [24] 2268 	mov	dptr,#_second_two
      0008E1 E0               [24] 2269 	movx	a,@dptr
      0008E2 F5 82            [12] 2270 	mov	dpl,a
      0008E4 12 02 28         [24] 2271 	lcall	_lcdputch
                                   2272 ;	main.c:634: lcdputch(second_one);
      0008E7 90 04 67         [24] 2273 	mov	dptr,#_second_one
      0008EA E0               [24] 2274 	movx	a,@dptr
      0008EB F5 82            [12] 2275 	mov	dpl,a
      0008ED 12 02 28         [24] 2276 	lcall	_lcdputch
                                   2277 ;	main.c:635: lcdputch('.');
      0008F0 75 82 2E         [24] 2278 	mov	dpl,#0x2e
      0008F3 12 02 28         [24] 2279 	lcall	_lcdputch
                                   2280 ;	main.c:636: lcdputch(one_tenth_second);
      0008F6 90 04 66         [24] 2281 	mov	dptr,#_one_tenth_second
      0008F9 E0               [24] 2282 	movx	a,@dptr
      0008FA F5 82            [12] 2283 	mov	dpl,a
      0008FC 12 02 28         [24] 2284 	lcall	_lcdputch
                                   2285 ;	main.c:637: lcdgotoaddr(save_cursor_address);
      0008FF 90 04 00         [24] 2286 	mov	dptr,#_save_cursor_address
      000902 E0               [24] 2287 	movx	a,@dptr
      000903 F5 82            [12] 2288 	mov	dpl,a
      000905 12 01 74         [24] 2289 	lcall	_lcdgotoaddr
      000908 A2 00            [12] 2290 	mov	c,_main_sloc0_1_0
      00090A 92 AF            [24] 2291 	mov	ea,c
                                   2292 ;	main.c:639: break;
      00090C 02 06 14         [24] 2293 	ljmp	00136$
                                   2294 ;	main.c:641: case 'H':
      00090F                       2295 00116$:
                                   2296 ;	main.c:670: }
      00090F D2 00            [12] 2297 	setb	_main_sloc0_1_0
      000911 10 AF 02         [24] 2298 	jbc	ea,00274$
      000914 C2 00            [12] 2299 	clr	_main_sloc0_1_0
      000916                       2300 00274$:
                                   2301 ;	main.c:644: save_cursor_address=get_cursor_address();
      000916 12 00 E5         [24] 2302 	lcall	_get_cursor_address
      000919 E5 82            [12] 2303 	mov	a,dpl
      00091B 90 04 00         [24] 2304 	mov	dptr,#_save_cursor_address
      00091E F0               [24] 2305 	movx	@dptr,a
                                   2306 ;	main.c:645: printf_tiny("\n\rPrinting Hexdump of DDRAM\n\r");
      00091F 74 31            [12] 2307 	mov	a,#___str_21
      000921 C0 E0            [24] 2308 	push	acc
      000923 74 1B            [12] 2309 	mov	a,#(___str_21 >> 8)
      000925 C0 E0            [24] 2310 	push	acc
      000927 12 0B DF         [24] 2311 	lcall	_printf_tiny
      00092A 15 81            [12] 2312 	dec	sp
      00092C 15 81            [12] 2313 	dec	sp
                                   2314 ;	main.c:646: for(k=0x00;k<=0x5F;k++){
      00092E 90 04 17         [24] 2315 	mov	dptr,#_main_k_196613_91
      000931 E4               [12] 2316 	clr	a
      000932 F0               [24] 2317 	movx	@dptr,a
      000933 A3               [24] 2318 	inc	dptr
      000934 F0               [24] 2319 	movx	@dptr,a
      000935                       2320 00138$:
                                   2321 ;	main.c:647: if(k==0x10)
      000935 90 04 17         [24] 2322 	mov	dptr,#_main_k_196613_91
      000938 E0               [24] 2323 	movx	a,@dptr
      000939 FE               [12] 2324 	mov	r6,a
      00093A A3               [24] 2325 	inc	dptr
      00093B E0               [24] 2326 	movx	a,@dptr
      00093C FF               [12] 2327 	mov	r7,a
      00093D BE 10 0E         [24] 2328 	cjne	r6,#0x10,00123$
      000940 BF 00 0B         [24] 2329 	cjne	r7,#0x00,00123$
                                   2330 ;	main.c:648: k=0x40;
      000943 90 04 17         [24] 2331 	mov	dptr,#_main_k_196613_91
      000946 74 40            [12] 2332 	mov	a,#0x40
      000948 F0               [24] 2333 	movx	@dptr,a
      000949 E4               [12] 2334 	clr	a
      00094A A3               [24] 2335 	inc	dptr
      00094B F0               [24] 2336 	movx	@dptr,a
      00094C 80 20            [24] 2337 	sjmp	00124$
      00094E                       2338 00123$:
                                   2339 ;	main.c:649: else if(k==0x50)
      00094E BE 50 0E         [24] 2340 	cjne	r6,#0x50,00120$
      000951 BF 00 0B         [24] 2341 	cjne	r7,#0x00,00120$
                                   2342 ;	main.c:650: k=0x10;
      000954 90 04 17         [24] 2343 	mov	dptr,#_main_k_196613_91
      000957 74 10            [12] 2344 	mov	a,#0x10
      000959 F0               [24] 2345 	movx	@dptr,a
      00095A E4               [12] 2346 	clr	a
      00095B A3               [24] 2347 	inc	dptr
      00095C F0               [24] 2348 	movx	@dptr,a
      00095D 80 0F            [24] 2349 	sjmp	00124$
      00095F                       2350 00120$:
                                   2351 ;	main.c:651: else if(k==0x20)
      00095F BE 20 0C         [24] 2352 	cjne	r6,#0x20,00124$
      000962 BF 00 09         [24] 2353 	cjne	r7,#0x00,00124$
                                   2354 ;	main.c:652: k=0x50;
      000965 90 04 17         [24] 2355 	mov	dptr,#_main_k_196613_91
      000968 74 50            [12] 2356 	mov	a,#0x50
      00096A F0               [24] 2357 	movx	@dptr,a
      00096B E4               [12] 2358 	clr	a
      00096C A3               [24] 2359 	inc	dptr
      00096D F0               [24] 2360 	movx	@dptr,a
      00096E                       2361 00124$:
                                   2362 ;	main.c:654: if(!(k%16)){
      00096E 90 04 17         [24] 2363 	mov	dptr,#_main_k_196613_91
      000971 E0               [24] 2364 	movx	a,@dptr
      000972 FE               [12] 2365 	mov	r6,a
      000973 A3               [24] 2366 	inc	dptr
      000974 E0               [24] 2367 	movx	a,@dptr
      000975 FF               [12] 2368 	mov	r7,a
      000976 90 04 22         [24] 2369 	mov	dptr,#__modsint_PARM_2
      000979 74 10            [12] 2370 	mov	a,#0x10
      00097B F0               [24] 2371 	movx	@dptr,a
      00097C E4               [12] 2372 	clr	a
      00097D A3               [24] 2373 	inc	dptr
      00097E F0               [24] 2374 	movx	@dptr,a
      00097F 8E 82            [24] 2375 	mov	dpl,r6
      000981 8F 83            [24] 2376 	mov	dph,r7
      000983 C0 07            [24] 2377 	push	ar7
      000985 C0 06            [24] 2378 	push	ar6
      000987 12 0C E8         [24] 2379 	lcall	__modsint
      00098A E5 82            [12] 2380 	mov	a,dpl
      00098C 85 83 F0         [24] 2381 	mov	b,dph
      00098F D0 06            [24] 2382 	pop	ar6
      000991 D0 07            [24] 2383 	pop	ar7
      000993 45 F0            [12] 2384 	orl	a,b
      000995 70 19            [24] 2385 	jnz	00126$
                                   2386 ;	main.c:655: printf("\n\r0x%02x: ",k);
      000997 C0 06            [24] 2387 	push	ar6
      000999 C0 07            [24] 2388 	push	ar7
      00099B 74 4F            [12] 2389 	mov	a,#___str_22
      00099D C0 E0            [24] 2390 	push	acc
      00099F 74 1B            [12] 2391 	mov	a,#(___str_22 >> 8)
      0009A1 C0 E0            [24] 2392 	push	acc
      0009A3 74 80            [12] 2393 	mov	a,#0x80
      0009A5 C0 E0            [24] 2394 	push	acc
      0009A7 12 0E 4A         [24] 2395 	lcall	_printf
      0009AA E5 81            [12] 2396 	mov	a,sp
      0009AC 24 FB            [12] 2397 	add	a,#0xfb
      0009AE F5 81            [12] 2398 	mov	sp,a
      0009B0                       2399 00126$:
                                   2400 ;	main.c:657: printf("0x%02x ",send_addr_read_data(1,k));
      0009B0 90 04 17         [24] 2401 	mov	dptr,#_main_k_196613_91
      0009B3 E0               [24] 2402 	movx	a,@dptr
      0009B4 FE               [12] 2403 	mov	r6,a
      0009B5 A3               [24] 2404 	inc	dptr
      0009B6 E0               [24] 2405 	movx	a,@dptr
      0009B7 FF               [12] 2406 	mov	r7,a
      0009B8 90 04 0E         [24] 2407 	mov	dptr,#_send_addr_read_data_PARM_2
      0009BB EE               [12] 2408 	mov	a,r6
      0009BC F0               [24] 2409 	movx	@dptr,a
      0009BD 75 82 01         [24] 2410 	mov	dpl,#0x01
      0009C0 C0 07            [24] 2411 	push	ar7
      0009C2 C0 06            [24] 2412 	push	ar6
      0009C4 12 05 01         [24] 2413 	lcall	_send_addr_read_data
      0009C7 AD 82            [24] 2414 	mov	r5,dpl
      0009C9 7C 00            [12] 2415 	mov	r4,#0x00
      0009CB C0 05            [24] 2416 	push	ar5
      0009CD C0 04            [24] 2417 	push	ar4
      0009CF 74 5A            [12] 2418 	mov	a,#___str_23
      0009D1 C0 E0            [24] 2419 	push	acc
      0009D3 74 1B            [12] 2420 	mov	a,#(___str_23 >> 8)
      0009D5 C0 E0            [24] 2421 	push	acc
      0009D7 74 80            [12] 2422 	mov	a,#0x80
      0009D9 C0 E0            [24] 2423 	push	acc
      0009DB 12 0E 4A         [24] 2424 	lcall	_printf
      0009DE E5 81            [12] 2425 	mov	a,sp
      0009E0 24 FB            [12] 2426 	add	a,#0xfb
      0009E2 F5 81            [12] 2427 	mov	sp,a
      0009E4 D0 06            [24] 2428 	pop	ar6
      0009E6 D0 07            [24] 2429 	pop	ar7
                                   2430 ;	main.c:646: for(k=0x00;k<=0x5F;k++){
      0009E8 90 04 17         [24] 2431 	mov	dptr,#_main_k_196613_91
      0009EB 74 01            [12] 2432 	mov	a,#0x01
      0009ED 2E               [12] 2433 	add	a,r6
      0009EE F0               [24] 2434 	movx	@dptr,a
      0009EF E4               [12] 2435 	clr	a
      0009F0 3F               [12] 2436 	addc	a,r7
      0009F1 A3               [24] 2437 	inc	dptr
      0009F2 F0               [24] 2438 	movx	@dptr,a
      0009F3 90 04 17         [24] 2439 	mov	dptr,#_main_k_196613_91
      0009F6 E0               [24] 2440 	movx	a,@dptr
      0009F7 FE               [12] 2441 	mov	r6,a
      0009F8 A3               [24] 2442 	inc	dptr
      0009F9 E0               [24] 2443 	movx	a,@dptr
      0009FA FF               [12] 2444 	mov	r7,a
      0009FB C3               [12] 2445 	clr	c
      0009FC 74 5F            [12] 2446 	mov	a,#0x5f
      0009FE 9E               [12] 2447 	subb	a,r6
      0009FF 74 80            [12] 2448 	mov	a,#(0x00 ^ 0x80)
      000A01 8F F0            [24] 2449 	mov	b,r7
      000A03 63 F0 80         [24] 2450 	xrl	b,#0x80
      000A06 95 F0            [12] 2451 	subb	a,b
      000A08 40 03            [24] 2452 	jc	00282$
      000A0A 02 09 35         [24] 2453 	ljmp	00138$
      000A0D                       2454 00282$:
                                   2455 ;	main.c:659: printf("\n\r");
      000A0D 74 62            [12] 2456 	mov	a,#___str_24
      000A0F C0 E0            [24] 2457 	push	acc
      000A11 74 1B            [12] 2458 	mov	a,#(___str_24 >> 8)
      000A13 C0 E0            [24] 2459 	push	acc
      000A15 74 80            [12] 2460 	mov	a,#0x80
      000A17 C0 E0            [24] 2461 	push	acc
      000A19 12 0E 4A         [24] 2462 	lcall	_printf
      000A1C 15 81            [12] 2463 	dec	sp
      000A1E 15 81            [12] 2464 	dec	sp
      000A20 15 81            [12] 2465 	dec	sp
                                   2466 ;	main.c:661: printf_tiny("\n\rPrinting Hexdump of CGRAM\n\r");
      000A22 74 65            [12] 2467 	mov	a,#___str_25
      000A24 C0 E0            [24] 2468 	push	acc
      000A26 74 1B            [12] 2469 	mov	a,#(___str_25 >> 8)
      000A28 C0 E0            [24] 2470 	push	acc
      000A2A 12 0B DF         [24] 2471 	lcall	_printf_tiny
      000A2D 15 81            [12] 2472 	dec	sp
      000A2F 15 81            [12] 2473 	dec	sp
                                   2474 ;	main.c:662: for(k=0x40;k<=0x7F;k++){
      000A31 7E 40            [12] 2475 	mov	r6,#0x40
      000A33 7F 00            [12] 2476 	mov	r7,#0x00
      000A35                       2477 00140$:
                                   2478 ;	main.c:663: if(!(k%16)){
      000A35 90 04 22         [24] 2479 	mov	dptr,#__modsint_PARM_2
      000A38 74 10            [12] 2480 	mov	a,#0x10
      000A3A F0               [24] 2481 	movx	@dptr,a
      000A3B E4               [12] 2482 	clr	a
      000A3C A3               [24] 2483 	inc	dptr
      000A3D F0               [24] 2484 	movx	@dptr,a
      000A3E 8E 82            [24] 2485 	mov	dpl,r6
      000A40 8F 83            [24] 2486 	mov	dph,r7
      000A42 C0 07            [24] 2487 	push	ar7
      000A44 C0 06            [24] 2488 	push	ar6
      000A46 12 0C E8         [24] 2489 	lcall	__modsint
      000A49 E5 82            [12] 2490 	mov	a,dpl
      000A4B 85 83 F0         [24] 2491 	mov	b,dph
      000A4E D0 06            [24] 2492 	pop	ar6
      000A50 D0 07            [24] 2493 	pop	ar7
      000A52 45 F0            [12] 2494 	orl	a,b
      000A54 70 21            [24] 2495 	jnz	00129$
                                   2496 ;	main.c:664: printf("\n\r0x%02x: ",k);
      000A56 C0 07            [24] 2497 	push	ar7
      000A58 C0 06            [24] 2498 	push	ar6
      000A5A C0 06            [24] 2499 	push	ar6
      000A5C C0 07            [24] 2500 	push	ar7
      000A5E 74 4F            [12] 2501 	mov	a,#___str_22
      000A60 C0 E0            [24] 2502 	push	acc
      000A62 74 1B            [12] 2503 	mov	a,#(___str_22 >> 8)
      000A64 C0 E0            [24] 2504 	push	acc
      000A66 74 80            [12] 2505 	mov	a,#0x80
      000A68 C0 E0            [24] 2506 	push	acc
      000A6A 12 0E 4A         [24] 2507 	lcall	_printf
      000A6D E5 81            [12] 2508 	mov	a,sp
      000A6F 24 FB            [12] 2509 	add	a,#0xfb
      000A71 F5 81            [12] 2510 	mov	sp,a
      000A73 D0 06            [24] 2511 	pop	ar6
      000A75 D0 07            [24] 2512 	pop	ar7
      000A77                       2513 00129$:
                                   2514 ;	main.c:666: printf("0x%02x ",send_addr_read_data(0,k));
      000A77 90 04 0E         [24] 2515 	mov	dptr,#_send_addr_read_data_PARM_2
      000A7A EE               [12] 2516 	mov	a,r6
      000A7B F0               [24] 2517 	movx	@dptr,a
      000A7C 75 82 00         [24] 2518 	mov	dpl,#0x00
      000A7F C0 07            [24] 2519 	push	ar7
      000A81 C0 06            [24] 2520 	push	ar6
      000A83 12 05 01         [24] 2521 	lcall	_send_addr_read_data
      000A86 AD 82            [24] 2522 	mov	r5,dpl
      000A88 7C 00            [12] 2523 	mov	r4,#0x00
      000A8A C0 05            [24] 2524 	push	ar5
      000A8C C0 04            [24] 2525 	push	ar4
      000A8E 74 5A            [12] 2526 	mov	a,#___str_23
      000A90 C0 E0            [24] 2527 	push	acc
      000A92 74 1B            [12] 2528 	mov	a,#(___str_23 >> 8)
      000A94 C0 E0            [24] 2529 	push	acc
      000A96 74 80            [12] 2530 	mov	a,#0x80
      000A98 C0 E0            [24] 2531 	push	acc
      000A9A 12 0E 4A         [24] 2532 	lcall	_printf
      000A9D E5 81            [12] 2533 	mov	a,sp
      000A9F 24 FB            [12] 2534 	add	a,#0xfb
      000AA1 F5 81            [12] 2535 	mov	sp,a
      000AA3 D0 06            [24] 2536 	pop	ar6
      000AA5 D0 07            [24] 2537 	pop	ar7
                                   2538 ;	main.c:662: for(k=0x40;k<=0x7F;k++){
      000AA7 0E               [12] 2539 	inc	r6
      000AA8 BE 00 01         [24] 2540 	cjne	r6,#0x00,00284$
      000AAB 0F               [12] 2541 	inc	r7
      000AAC                       2542 00284$:
      000AAC C3               [12] 2543 	clr	c
      000AAD 74 7F            [12] 2544 	mov	a,#0x7f
      000AAF 9E               [12] 2545 	subb	a,r6
      000AB0 74 80            [12] 2546 	mov	a,#(0x00 ^ 0x80)
      000AB2 8F F0            [24] 2547 	mov	b,r7
      000AB4 63 F0 80         [24] 2548 	xrl	b,#0x80
      000AB7 95 F0            [12] 2549 	subb	a,b
      000AB9 40 03            [24] 2550 	jc	00285$
      000ABB 02 0A 35         [24] 2551 	ljmp	00140$
      000ABE                       2552 00285$:
                                   2553 ;	main.c:668: printf("\n\r");
      000ABE 74 62            [12] 2554 	mov	a,#___str_24
      000AC0 C0 E0            [24] 2555 	push	acc
      000AC2 74 1B            [12] 2556 	mov	a,#(___str_24 >> 8)
      000AC4 C0 E0            [24] 2557 	push	acc
      000AC6 74 80            [12] 2558 	mov	a,#0x80
      000AC8 C0 E0            [24] 2559 	push	acc
      000ACA 12 0E 4A         [24] 2560 	lcall	_printf
      000ACD 15 81            [12] 2561 	dec	sp
      000ACF 15 81            [12] 2562 	dec	sp
      000AD1 15 81            [12] 2563 	dec	sp
                                   2564 ;	main.c:669: lcdgotoaddr(save_cursor_address);
      000AD3 90 04 00         [24] 2565 	mov	dptr,#_save_cursor_address
      000AD6 E0               [24] 2566 	movx	a,@dptr
      000AD7 F5 82            [12] 2567 	mov	dpl,a
      000AD9 12 01 74         [24] 2568 	lcall	_lcdgotoaddr
      000ADC A2 00            [12] 2569 	mov	c,_main_sloc0_1_0
      000ADE 92 AF            [24] 2570 	mov	ea,c
                                   2571 ;	main.c:671: break;
      000AE0 02 06 14         [24] 2572 	ljmp	00136$
                                   2573 ;	main.c:672: case 'Q':
      000AE3                       2574 00131$:
                                   2575 ;	main.c:674: save_cursor_address=get_cursor_address();
      000AE3 12 00 E5         [24] 2576 	lcall	_get_cursor_address
      000AE6 E5 82            [12] 2577 	mov	a,dpl
      000AE8 90 04 00         [24] 2578 	mov	dptr,#_save_cursor_address
      000AEB F0               [24] 2579 	movx	@dptr,a
                                   2580 ;	main.c:675: printf_tiny("\n\rCreate your own custom character\n\r");
      000AEC 74 83            [12] 2581 	mov	a,#___str_26
      000AEE C0 E0            [24] 2582 	push	acc
      000AF0 74 1B            [12] 2583 	mov	a,#(___str_26 >> 8)
      000AF2 C0 E0            [24] 2584 	push	acc
      000AF4 12 0B DF         [24] 2585 	lcall	_printf_tiny
      000AF7 15 81            [12] 2586 	dec	sp
      000AF9 15 81            [12] 2587 	dec	sp
                                   2588 ;	main.c:676: printf_tiny("Enter character code: ");
      000AFB 74 A8            [12] 2589 	mov	a,#___str_27
      000AFD C0 E0            [24] 2590 	push	acc
      000AFF 74 1B            [12] 2591 	mov	a,#(___str_27 >> 8)
      000B01 C0 E0            [24] 2592 	push	acc
      000B03 12 0B DF         [24] 2593 	lcall	_printf_tiny
      000B06 15 81            [12] 2594 	dec	sp
      000B08 15 81            [12] 2595 	dec	sp
                                   2596 ;	main.c:677: unsigned char ccode=getchar();
      000B0A 12 00 93         [24] 2597 	lcall	_getchar
      000B0D AE 82            [24] 2598 	mov	r6,dpl
                                   2599 ;	main.c:678: printf_tiny("%c\n\r",ccode);
      000B0F 8E 05            [24] 2600 	mov	ar5,r6
      000B11 7F 00            [12] 2601 	mov	r7,#0x00
      000B13 C0 06            [24] 2602 	push	ar6
      000B15 C0 05            [24] 2603 	push	ar5
      000B17 C0 07            [24] 2604 	push	ar7
      000B19 74 47            [12] 2605 	mov	a,#___str_6
      000B1B C0 E0            [24] 2606 	push	acc
      000B1D 74 19            [12] 2607 	mov	a,#(___str_6 >> 8)
      000B1F C0 E0            [24] 2608 	push	acc
      000B21 12 0B DF         [24] 2609 	lcall	_printf_tiny
      000B24 E5 81            [12] 2610 	mov	a,sp
      000B26 24 FC            [12] 2611 	add	a,#0xfc
      000B28 F5 81            [12] 2612 	mov	sp,a
                                   2613 ;	main.c:680: printf_tiny("\n\rEnter row values: ");
      000B2A 74 BF            [12] 2614 	mov	a,#___str_28
      000B2C C0 E0            [24] 2615 	push	acc
      000B2E 74 1B            [12] 2616 	mov	a,#(___str_28 >> 8)
      000B30 C0 E0            [24] 2617 	push	acc
      000B32 12 0B DF         [24] 2618 	lcall	_printf_tiny
      000B35 15 81            [12] 2619 	dec	sp
      000B37 15 81            [12] 2620 	dec	sp
      000B39 D0 06            [24] 2621 	pop	ar6
                                   2622 ;	main.c:681: for(j=0;j<8;j++){
      000B3B 7D 00            [12] 2623 	mov	r5,#0x00
      000B3D 7F 00            [12] 2624 	mov	r7,#0x00
      000B3F                       2625 00142$:
                                   2626 ;	main.c:682: printf("\n\rEnter no. %d row value: ",j);
      000B3F C0 07            [24] 2627 	push	ar7
      000B41 C0 06            [24] 2628 	push	ar6
      000B43 C0 05            [24] 2629 	push	ar5
      000B45 C0 05            [24] 2630 	push	ar5
      000B47 C0 07            [24] 2631 	push	ar7
      000B49 74 D4            [12] 2632 	mov	a,#___str_29
      000B4B C0 E0            [24] 2633 	push	acc
      000B4D 74 1B            [12] 2634 	mov	a,#(___str_29 >> 8)
      000B4F C0 E0            [24] 2635 	push	acc
      000B51 74 80            [12] 2636 	mov	a,#0x80
      000B53 C0 E0            [24] 2637 	push	acc
      000B55 12 0E 4A         [24] 2638 	lcall	_printf
      000B58 E5 81            [12] 2639 	mov	a,sp
      000B5A 24 FB            [12] 2640 	add	a,#0xfb
      000B5C F5 81            [12] 2641 	mov	sp,a
      000B5E D0 05            [24] 2642 	pop	ar5
      000B60 D0 06            [24] 2643 	pop	ar6
      000B62 D0 07            [24] 2644 	pop	ar7
                                   2645 ;	main.c:683: row_vals[j]=valid_input();
      000B64 ED               [12] 2646 	mov	a,r5
      000B65 24 19            [12] 2647 	add	a,#_main_row_vals_196615_105
      000B67 FB               [12] 2648 	mov	r3,a
      000B68 EF               [12] 2649 	mov	a,r7
      000B69 34 04            [12] 2650 	addc	a,#(_main_row_vals_196615_105 >> 8)
      000B6B FC               [12] 2651 	mov	r4,a
      000B6C C0 07            [24] 2652 	push	ar7
      000B6E C0 06            [24] 2653 	push	ar6
      000B70 C0 05            [24] 2654 	push	ar5
      000B72 C0 04            [24] 2655 	push	ar4
      000B74 C0 03            [24] 2656 	push	ar3
      000B76 12 03 3F         [24] 2657 	lcall	_valid_input
      000B79 AA 82            [24] 2658 	mov	r2,dpl
      000B7B D0 03            [24] 2659 	pop	ar3
      000B7D D0 04            [24] 2660 	pop	ar4
      000B7F D0 05            [24] 2661 	pop	ar5
      000B81 D0 06            [24] 2662 	pop	ar6
      000B83 D0 07            [24] 2663 	pop	ar7
      000B85 8B 82            [24] 2664 	mov	dpl,r3
      000B87 8C 83            [24] 2665 	mov	dph,r4
      000B89 EA               [12] 2666 	mov	a,r2
      000B8A F0               [24] 2667 	movx	@dptr,a
                                   2668 ;	main.c:681: for(j=0;j<8;j++){
      000B8B 0D               [12] 2669 	inc	r5
      000B8C BD 00 01         [24] 2670 	cjne	r5,#0x00,00286$
      000B8F 0F               [12] 2671 	inc	r7
      000B90                       2672 00286$:
      000B90 C3               [12] 2673 	clr	c
      000B91 ED               [12] 2674 	mov	a,r5
      000B92 94 08            [12] 2675 	subb	a,#0x08
      000B94 EF               [12] 2676 	mov	a,r7
      000B95 64 80            [12] 2677 	xrl	a,#0x80
      000B97 94 80            [12] 2678 	subb	a,#0x80
      000B99 40 A4            [24] 2679 	jc	00142$
                                   2680 ;	main.c:688: }
      000B9B D2 00            [12] 2681 	setb	_main_sloc0_1_0
      000B9D 10 AF 02         [24] 2682 	jbc	ea,00288$
      000BA0 C2 00            [12] 2683 	clr	_main_sloc0_1_0
      000BA2                       2684 00288$:
                                   2685 ;	main.c:686: lcdcreatechar(ccode,row_vals);
      000BA2 90 04 10         [24] 2686 	mov	dptr,#_lcdcreatechar_PARM_2
      000BA5 74 19            [12] 2687 	mov	a,#_main_row_vals_196615_105
      000BA7 F0               [24] 2688 	movx	@dptr,a
      000BA8 74 04            [12] 2689 	mov	a,#(_main_row_vals_196615_105 >> 8)
      000BAA A3               [24] 2690 	inc	dptr
      000BAB F0               [24] 2691 	movx	@dptr,a
      000BAC E4               [12] 2692 	clr	a
      000BAD A3               [24] 2693 	inc	dptr
      000BAE F0               [24] 2694 	movx	@dptr,a
      000BAF 8E 82            [24] 2695 	mov	dpl,r6
      000BB1 12 05 31         [24] 2696 	lcall	_lcdcreatechar
                                   2697 ;	main.c:687: lcdgotoaddr(save_cursor_address);
      000BB4 90 04 00         [24] 2698 	mov	dptr,#_save_cursor_address
      000BB7 E0               [24] 2699 	movx	a,@dptr
      000BB8 F5 82            [12] 2700 	mov	dpl,a
      000BBA 12 01 74         [24] 2701 	lcall	_lcdgotoaddr
      000BBD A2 00            [12] 2702 	mov	c,_main_sloc0_1_0
      000BBF 92 AF            [24] 2703 	mov	ea,c
                                   2704 ;	main.c:689: break;
                                   2705 ;	main.c:692: }
                                   2706 ;	main.c:695: }
      000BC1 02 06 14         [24] 2707 	ljmp	00136$
                                   2708 	.area CSEG    (CODE)
                                   2709 	.area CONST   (CODE)
                                   2710 	.area CONST   (CODE)
      0018A5                       2711 ___str_0:
      0018A5 20 20 20 20 20 20 20  2712 	.ascii "       "
      0018AC 00                    2713 	.db 0x00
                                   2714 	.area CSEG    (CODE)
                                   2715 	.area CONST   (CODE)
      0018AD                       2716 ___str_1:
      0018AD 0A                    2717 	.db 0x0a
      0018AE 0D                    2718 	.db 0x0d
      0018AF 45 6E 74 65 72 20 76  2719 	.ascii "Enter valid input between (00 to 1F) or (40 to 58): "
             61 6C 69 64 20 69 6E
             70 75 74 20 62 65 74
             77 65 65 6E 20 28 30
             30 20 74 6F 20 31 46
             29 20 6F 72 20 28 34
             30 20 74 6F 20 35 38
             29 3A 20
      0018E3 0A                    2720 	.db 0x0a
      0018E4 0D                    2721 	.db 0x0d
      0018E5 00                    2722 	.db 0x00
                                   2723 	.area CSEG    (CODE)
                                   2724 	.area CONST   (CODE)
      0018E6                       2725 ___str_2:
      0018E6 0A                    2726 	.db 0x0a
      0018E7 0D                    2727 	.db 0x0d
      0018E8 63 75 73 74 6F 6D 20  2728 	.ascii "custom character number %x"
             63 68 61 72 61 63 74
             65 72 20 6E 75 6D 62
             65 72 20 25 78
      001902 00                    2729 	.db 0x00
                                   2730 	.area CSEG    (CODE)
                                   2731 	.area CONST   (CODE)
      001903                       2732 ___str_3:
      001903 0A                    2733 	.db 0x0a
      001904 0D                    2734 	.db 0x0d
      001905 6C 63 64 5F 70 74 72  2735 	.ascii "lcd_ptr= %x"
             3D 20 25 78
      001910 00                    2736 	.db 0x00
                                   2737 	.area CSEG    (CODE)
                                   2738 	.area CONST   (CODE)
      001911                       2739 ___str_4:
      001911 0A                    2740 	.db 0x0a
      001912 0A                    2741 	.db 0x0a
      001913 0D                    2742 	.db 0x0d
      001914 50 72 65 73 73 20 23  2743 	.ascii "Press # for to see the menu"
             20 66 6F 72 20 74 6F
             20 73 65 65 20 74 68
             65 20 6D 65 6E 75
      00192F 00                    2744 	.db 0x00
                                   2745 	.area CSEG    (CODE)
                                   2746 	.area CONST   (CODE)
      001930                       2747 ___str_5:
      001930 0A                    2748 	.db 0x0a
      001931 0A                    2749 	.db 0x0a
      001932 0D                    2750 	.db 0x0d
      001933 45 6E 74 65 72 20 61  2751 	.ascii "Enter a choice:    "
             20 63 68 6F 69 63 65
             3A 20 20 20 20
      001946 00                    2752 	.db 0x00
                                   2753 	.area CSEG    (CODE)
                                   2754 	.area CONST   (CODE)
      001947                       2755 ___str_6:
      001947 25 63                 2756 	.ascii "%c"
      001949 0A                    2757 	.db 0x0a
      00194A 0D                    2758 	.db 0x0d
      00194B 00                    2759 	.db 0x00
                                   2760 	.area CSEG    (CODE)
                                   2761 	.area CONST   (CODE)
      00194C                       2762 ___str_7:
      00194C 2A 2A 2A 2A 2A 2A 2A  2763 	.ascii "*************ESD LAB 4 Part 2 Menu***************"
             2A 2A 2A 2A 2A 2A 45
             53 44 20 4C 41 42 20
             34 20 50 61 72 74 20
             32 20 4D 65 6E 75 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
      00197D 00                    2764 	.db 0x00
                                   2765 	.area CSEG    (CODE)
                                   2766 	.area CONST   (CODE)
      00197E                       2767 ___str_8:
      00197E 0A                    2768 	.db 0x0a
      00197F 0D                    2769 	.db 0x0d
      001980 50 72 65 73 73 20 43  2770 	.ascii "Press C to print desired character on LCD"
             20 74 6F 20 70 72 69
             6E 74 20 64 65 73 69
             72 65 64 20 63 68 61
             72 61 63 74 65 72 20
             6F 6E 20 4C 43 44
      0019A9 0A                    2771 	.db 0x0a
      0019AA 0D                    2772 	.db 0x0d
      0019AB 00                    2773 	.db 0x00
                                   2774 	.area CSEG    (CODE)
                                   2775 	.area CONST   (CODE)
      0019AC                       2776 ___str_9:
      0019AC 0A                    2777 	.db 0x0a
      0019AD 0D                    2778 	.db 0x0d
      0019AE 50 72 65 73 73 20 53  2779 	.ascii "Press S to print desired string on LCD"
             20 74 6F 20 70 72 69
             6E 74 20 64 65 73 69
             72 65 64 20 73 74 72
             69 6E 67 20 6F 6E 20
             4C 43 44
      0019D4 0A                    2780 	.db 0x0a
      0019D5 0D                    2781 	.db 0x0d
      0019D6 00                    2782 	.db 0x00
                                   2783 	.area CSEG    (CODE)
                                   2784 	.area CONST   (CODE)
      0019D7                       2785 ___str_10:
      0019D7 0A                    2786 	.db 0x0a
      0019D8 0D                    2787 	.db 0x0d
      0019D9 50 72 65 73 73 20 4F  2788 	.ascii "Press O to clear LCD"
             20 74 6F 20 63 6C 65
             61 72 20 4C 43 44
      0019ED 0A                    2789 	.db 0x0a
      0019EE 0D                    2790 	.db 0x0d
      0019EF 00                    2791 	.db 0x00
                                   2792 	.area CSEG    (CODE)
                                   2793 	.area CONST   (CODE)
      0019F0                       2794 ___str_11:
      0019F0 0A                    2795 	.db 0x0a
      0019F1 0D                    2796 	.db 0x0d
      0019F2 50 72 65 73 73 20 45  2797 	.ascii "Press E to stop the elapsed time clock"
             20 74 6F 20 73 74 6F
             70 20 74 68 65 20 65
             6C 61 70 73 65 64 20
             74 69 6D 65 20 63 6C
             6F 63 6B
      001A18 0A                    2798 	.db 0x0a
      001A19 0D                    2799 	.db 0x0d
      001A1A 00                    2800 	.db 0x00
                                   2801 	.area CSEG    (CODE)
                                   2802 	.area CONST   (CODE)
      001A1B                       2803 ___str_12:
      001A1B 0A                    2804 	.db 0x0a
      001A1C 0D                    2805 	.db 0x0d
      001A1D 50 72 65 73 73 20 52  2806 	.ascii "Press R to restart the clock"
             20 74 6F 20 72 65 73
             74 61 72 74 20 74 68
             65 20 63 6C 6F 63 6B
      001A39 0A                    2807 	.db 0x0a
      001A3A 0D                    2808 	.db 0x0d
      001A3B 00                    2809 	.db 0x00
                                   2810 	.area CSEG    (CODE)
                                   2811 	.area CONST   (CODE)
      001A3C                       2812 ___str_13:
      001A3C 0A                    2813 	.db 0x0a
      001A3D 0D                    2814 	.db 0x0d
      001A3E 50 72 65 73 73 20 42  2815 	.ascii "Press B to reset the clock back to '00:00.0'"
             20 74 6F 20 72 65 73
             65 74 20 74 68 65 20
             63 6C 6F 63 6B 20 62
             61 63 6B 20 74 6F 20
             27 30 30 3A 30 30 2E
             30 27
      001A6A 0A                    2816 	.db 0x0a
      001A6B 0D                    2817 	.db 0x0d
      001A6C 00                    2818 	.db 0x00
                                   2819 	.area CSEG    (CODE)
                                   2820 	.area CONST   (CODE)
      001A6D                       2821 ___str_14:
      001A6D 0A                    2822 	.db 0x0a
      001A6E 0D                    2823 	.db 0x0d
      001A6F 2A 2A 2A 2A 2A 2A 2A  2824 	.ascii "**************************************************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A
      001AA1 0A                    2825 	.db 0x0a
      001AA2 0D                    2826 	.db 0x0d
      001AA3 00                    2827 	.db 0x00
                                   2828 	.area CSEG    (CODE)
                                   2829 	.area CONST   (CODE)
      001AA4                       2830 ___str_15:
      001AA4 0A                    2831 	.db 0x0a
      001AA5 0D                    2832 	.db 0x0d
      001AA6 45 6E 74 65 72 20 61  2833 	.ascii "Enter address without prefix '0x': "
             64 64 72 65 73 73 20
             77 69 74 68 6F 75 74
             20 70 72 65 66 69 78
             20 27 30 78 27 3A 20
      001AC9 00                    2834 	.db 0x00
                                   2835 	.area CSEG    (CODE)
                                   2836 	.area CONST   (CODE)
      001ACA                       2837 ___str_16:
      001ACA 0A                    2838 	.db 0x0a
      001ACB 0D                    2839 	.db 0x0d
      001ACC 45 6E 74 65 72 20 72  2840 	.ascii "Enter row: "
             6F 77 3A 20
      001AD7 00                    2841 	.db 0x00
                                   2842 	.area CSEG    (CODE)
                                   2843 	.area CONST   (CODE)
      001AD8                       2844 ___str_17:
      001AD8 0A                    2845 	.db 0x0a
      001AD9 0D                    2846 	.db 0x0d
      001ADA 45 6E 74 65 72 20 63  2847 	.ascii "Enter column: "
             6F 6C 75 6D 6E 3A 20
      001AE8 00                    2848 	.db 0x00
                                   2849 	.area CSEG    (CODE)
                                   2850 	.area CONST   (CODE)
      001AE9                       2851 ___str_18:
      001AE9 0A                    2852 	.db 0x0a
      001AEA 0D                    2853 	.db 0x0d
      001AEB 45 6E 74 65 72 20 63  2854 	.ascii "Enter character to print on LCD: "
             68 61 72 61 63 74 65
             72 20 74 6F 20 70 72
             69 6E 74 20 6F 6E 20
             4C 43 44 3A 20
      001B0C 00                    2855 	.db 0x00
                                   2856 	.area CSEG    (CODE)
                                   2857 	.area CONST   (CODE)
      001B0D                       2858 ___str_19:
      001B0D 0A                    2859 	.db 0x0a
      001B0E 0D                    2860 	.db 0x0d
      001B0F 45 6E 74 65 72 20 73  2861 	.ascii "Enter string to print on LCD: "
             74 72 69 6E 67 20 74
             6F 20 70 72 69 6E 74
             20 6F 6E 20 4C 43 44
             3A 20
      001B2D 00                    2862 	.db 0x00
                                   2863 	.area CSEG    (CODE)
                                   2864 	.area CONST   (CODE)
      001B2E                       2865 ___str_20:
      001B2E 25 63                 2866 	.ascii "%c"
      001B30 00                    2867 	.db 0x00
                                   2868 	.area CSEG    (CODE)
                                   2869 	.area CONST   (CODE)
      001B31                       2870 ___str_21:
      001B31 0A                    2871 	.db 0x0a
      001B32 0D                    2872 	.db 0x0d
      001B33 50 72 69 6E 74 69 6E  2873 	.ascii "Printing Hexdump of DDRAM"
             67 20 48 65 78 64 75
             6D 70 20 6F 66 20 44
             44 52 41 4D
      001B4C 0A                    2874 	.db 0x0a
      001B4D 0D                    2875 	.db 0x0d
      001B4E 00                    2876 	.db 0x00
                                   2877 	.area CSEG    (CODE)
                                   2878 	.area CONST   (CODE)
      001B4F                       2879 ___str_22:
      001B4F 0A                    2880 	.db 0x0a
      001B50 0D                    2881 	.db 0x0d
      001B51 30 78 25 30 32 78 3A  2882 	.ascii "0x%02x: "
             20
      001B59 00                    2883 	.db 0x00
                                   2884 	.area CSEG    (CODE)
                                   2885 	.area CONST   (CODE)
      001B5A                       2886 ___str_23:
      001B5A 30 78 25 30 32 78 20  2887 	.ascii "0x%02x "
      001B61 00                    2888 	.db 0x00
                                   2889 	.area CSEG    (CODE)
                                   2890 	.area CONST   (CODE)
      001B62                       2891 ___str_24:
      001B62 0A                    2892 	.db 0x0a
      001B63 0D                    2893 	.db 0x0d
      001B64 00                    2894 	.db 0x00
                                   2895 	.area CSEG    (CODE)
                                   2896 	.area CONST   (CODE)
      001B65                       2897 ___str_25:
      001B65 0A                    2898 	.db 0x0a
      001B66 0D                    2899 	.db 0x0d
      001B67 50 72 69 6E 74 69 6E  2900 	.ascii "Printing Hexdump of CGRAM"
             67 20 48 65 78 64 75
             6D 70 20 6F 66 20 43
             47 52 41 4D
      001B80 0A                    2901 	.db 0x0a
      001B81 0D                    2902 	.db 0x0d
      001B82 00                    2903 	.db 0x00
                                   2904 	.area CSEG    (CODE)
                                   2905 	.area CONST   (CODE)
      001B83                       2906 ___str_26:
      001B83 0A                    2907 	.db 0x0a
      001B84 0D                    2908 	.db 0x0d
      001B85 43 72 65 61 74 65 20  2909 	.ascii "Create your own custom character"
             79 6F 75 72 20 6F 77
             6E 20 63 75 73 74 6F
             6D 20 63 68 61 72 61
             63 74 65 72
      001BA5 0A                    2910 	.db 0x0a
      001BA6 0D                    2911 	.db 0x0d
      001BA7 00                    2912 	.db 0x00
                                   2913 	.area CSEG    (CODE)
                                   2914 	.area CONST   (CODE)
      001BA8                       2915 ___str_27:
      001BA8 45 6E 74 65 72 20 63  2916 	.ascii "Enter character code: "
             68 61 72 61 63 74 65
             72 20 63 6F 64 65 3A
             20
      001BBE 00                    2917 	.db 0x00
                                   2918 	.area CSEG    (CODE)
                                   2919 	.area CONST   (CODE)
      001BBF                       2920 ___str_28:
      001BBF 0A                    2921 	.db 0x0a
      001BC0 0D                    2922 	.db 0x0d
      001BC1 45 6E 74 65 72 20 72  2923 	.ascii "Enter row values: "
             6F 77 20 76 61 6C 75
             65 73 3A 20
      001BD3 00                    2924 	.db 0x00
                                   2925 	.area CSEG    (CODE)
                                   2926 	.area CONST   (CODE)
      001BD4                       2927 ___str_29:
      001BD4 0A                    2928 	.db 0x0a
      001BD5 0D                    2929 	.db 0x0d
      001BD6 45 6E 74 65 72 20 6E  2930 	.ascii "Enter no. %d row value: "
             6F 2E 20 25 64 20 72
             6F 77 20 76 61 6C 75
             65 3A 20
      001BEE 00                    2931 	.db 0x00
                                   2932 	.area CSEG    (CODE)
                                   2933 	.area XINIT   (CODE)
      001BFA                       2934 __xinit__counter:
      001BFA 00 00                 2935 	.byte #0x00, #0x00	;  0
      001BFC                       2936 __xinit__one_tenth_second:
      001BFC 30                    2937 	.db #0x30	; 48	'0'
      001BFD                       2938 __xinit__second_one:
      001BFD 30                    2939 	.db #0x30	; 48	'0'
      001BFE                       2940 __xinit__second_two:
      001BFE 30                    2941 	.db #0x30	; 48	'0'
      001BFF                       2942 __xinit__minute_one:
      001BFF 30                    2943 	.db #0x30	; 48	'0'
      001C00                       2944 __xinit__minute_two:
      001C00 30                    2945 	.db #0x30	; 48	'0'
                                   2946 	.area CABS    (ABS,CODE)
