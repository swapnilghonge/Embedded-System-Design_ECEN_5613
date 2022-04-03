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
                                     12 	.globl _watchdog
                                     13 	.globl _watchdog_switch
                                     14 	.globl _high_speed_toggle
                                     15 	.globl _power_down_mode
                                     16 	.globl _idle_mode
                                     17 	.globl _max_freq
                                     18 	.globl _min_freq
                                     19 	.globl _stop_pwm
                                     20 	.globl _run_pwm
                                     21 	.globl _hardware_init
                                     22 	.globl _getinput
                                     23 	.globl __sdcc_external_startup
                                     24 	.globl _printf_tiny
                                     25 	.globl _TF1
                                     26 	.globl _TR1
                                     27 	.globl _TF0
                                     28 	.globl _TR0
                                     29 	.globl _IE1
                                     30 	.globl _IT1
                                     31 	.globl _IE0
                                     32 	.globl _IT0
                                     33 	.globl _SM0
                                     34 	.globl _SM1
                                     35 	.globl _SM2
                                     36 	.globl _REN
                                     37 	.globl _TB8
                                     38 	.globl _RB8
                                     39 	.globl _TI
                                     40 	.globl _RI
                                     41 	.globl _CY
                                     42 	.globl _AC
                                     43 	.globl _F0
                                     44 	.globl _RS1
                                     45 	.globl _RS0
                                     46 	.globl _OV
                                     47 	.globl _F1
                                     48 	.globl _P
                                     49 	.globl _RD
                                     50 	.globl _WR
                                     51 	.globl _T1
                                     52 	.globl _T0
                                     53 	.globl _INT1
                                     54 	.globl _INT0
                                     55 	.globl _TXD0
                                     56 	.globl _TXD
                                     57 	.globl _RXD0
                                     58 	.globl _RXD
                                     59 	.globl _P3_7
                                     60 	.globl _P3_6
                                     61 	.globl _P3_5
                                     62 	.globl _P3_4
                                     63 	.globl _P3_3
                                     64 	.globl _P3_2
                                     65 	.globl _P3_1
                                     66 	.globl _P3_0
                                     67 	.globl _P2_7
                                     68 	.globl _P2_6
                                     69 	.globl _P2_5
                                     70 	.globl _P2_4
                                     71 	.globl _P2_3
                                     72 	.globl _P2_2
                                     73 	.globl _P2_1
                                     74 	.globl _P2_0
                                     75 	.globl _P1_7
                                     76 	.globl _P1_6
                                     77 	.globl _P1_5
                                     78 	.globl _P1_4
                                     79 	.globl _P1_3
                                     80 	.globl _P1_2
                                     81 	.globl _P1_1
                                     82 	.globl _P1_0
                                     83 	.globl _P0_7
                                     84 	.globl _P0_6
                                     85 	.globl _P0_5
                                     86 	.globl _P0_4
                                     87 	.globl _P0_3
                                     88 	.globl _P0_2
                                     89 	.globl _P0_1
                                     90 	.globl _P0_0
                                     91 	.globl _PS
                                     92 	.globl _PT1
                                     93 	.globl _PX1
                                     94 	.globl _PT0
                                     95 	.globl _PX0
                                     96 	.globl _EA
                                     97 	.globl _ES
                                     98 	.globl _ET1
                                     99 	.globl _EX1
                                    100 	.globl _ET0
                                    101 	.globl _EX0
                                    102 	.globl _BREG_F7
                                    103 	.globl _BREG_F6
                                    104 	.globl _BREG_F5
                                    105 	.globl _BREG_F4
                                    106 	.globl _BREG_F3
                                    107 	.globl _BREG_F2
                                    108 	.globl _BREG_F1
                                    109 	.globl _BREG_F0
                                    110 	.globl _P5_7
                                    111 	.globl _P5_6
                                    112 	.globl _P5_5
                                    113 	.globl _P5_4
                                    114 	.globl _P5_3
                                    115 	.globl _P5_2
                                    116 	.globl _P5_1
                                    117 	.globl _P5_0
                                    118 	.globl _P4_7
                                    119 	.globl _P4_6
                                    120 	.globl _P4_5
                                    121 	.globl _P4_4
                                    122 	.globl _P4_3
                                    123 	.globl _P4_2
                                    124 	.globl _P4_1
                                    125 	.globl _P4_0
                                    126 	.globl _PX0L
                                    127 	.globl _PT0L
                                    128 	.globl _PX1L
                                    129 	.globl _PT1L
                                    130 	.globl _PSL
                                    131 	.globl _PT2L
                                    132 	.globl _PPCL
                                    133 	.globl _EC
                                    134 	.globl _CCF0
                                    135 	.globl _CCF1
                                    136 	.globl _CCF2
                                    137 	.globl _CCF3
                                    138 	.globl _CCF4
                                    139 	.globl _CR
                                    140 	.globl _CF
                                    141 	.globl _TF2
                                    142 	.globl _EXF2
                                    143 	.globl _RCLK
                                    144 	.globl _TCLK
                                    145 	.globl _EXEN2
                                    146 	.globl _TR2
                                    147 	.globl _C_T2
                                    148 	.globl _CP_RL2
                                    149 	.globl _T2CON_7
                                    150 	.globl _T2CON_6
                                    151 	.globl _T2CON_5
                                    152 	.globl _T2CON_4
                                    153 	.globl _T2CON_3
                                    154 	.globl _T2CON_2
                                    155 	.globl _T2CON_1
                                    156 	.globl _T2CON_0
                                    157 	.globl _PT2
                                    158 	.globl _ET2
                                    159 	.globl _TMOD
                                    160 	.globl _TL1
                                    161 	.globl _TL0
                                    162 	.globl _TH1
                                    163 	.globl _TH0
                                    164 	.globl _TCON
                                    165 	.globl _SP
                                    166 	.globl _SCON
                                    167 	.globl _SBUF0
                                    168 	.globl _SBUF
                                    169 	.globl _PSW
                                    170 	.globl _PCON
                                    171 	.globl _P3
                                    172 	.globl _P2
                                    173 	.globl _P1
                                    174 	.globl _P0
                                    175 	.globl _IP
                                    176 	.globl _IE
                                    177 	.globl _DP0L
                                    178 	.globl _DPL
                                    179 	.globl _DP0H
                                    180 	.globl _DPH
                                    181 	.globl _B
                                    182 	.globl _ACC
                                    183 	.globl _EECON
                                    184 	.globl _KBF
                                    185 	.globl _KBE
                                    186 	.globl _KBLS
                                    187 	.globl _BRL
                                    188 	.globl _BDRCON
                                    189 	.globl _T2MOD
                                    190 	.globl _SPDAT
                                    191 	.globl _SPSTA
                                    192 	.globl _SPCON
                                    193 	.globl _SADEN
                                    194 	.globl _SADDR
                                    195 	.globl _WDTPRG
                                    196 	.globl _WDTRST
                                    197 	.globl _P5
                                    198 	.globl _P4
                                    199 	.globl _IPH1
                                    200 	.globl _IPL1
                                    201 	.globl _IPH0
                                    202 	.globl _IPL0
                                    203 	.globl _IEN1
                                    204 	.globl _IEN0
                                    205 	.globl _CMOD
                                    206 	.globl _CL
                                    207 	.globl _CH
                                    208 	.globl _CCON
                                    209 	.globl _CCAPM4
                                    210 	.globl _CCAPM3
                                    211 	.globl _CCAPM2
                                    212 	.globl _CCAPM1
                                    213 	.globl _CCAPM0
                                    214 	.globl _CCAP4L
                                    215 	.globl _CCAP3L
                                    216 	.globl _CCAP2L
                                    217 	.globl _CCAP1L
                                    218 	.globl _CCAP0L
                                    219 	.globl _CCAP4H
                                    220 	.globl _CCAP3H
                                    221 	.globl _CCAP2H
                                    222 	.globl _CCAP1H
                                    223 	.globl _CCAP0H
                                    224 	.globl _CKCON1
                                    225 	.globl _CKCON0
                                    226 	.globl _CKRL
                                    227 	.globl _AUXR1
                                    228 	.globl _AUXR
                                    229 	.globl _TH2
                                    230 	.globl _TL2
                                    231 	.globl _RCAP2H
                                    232 	.globl _RCAP2L
                                    233 	.globl _T2CON
                                    234 	.globl _watchdog_flag
                                    235 	.globl _input_char
                                    236 	.globl _putchar
                                    237 	.globl _getchar
                                    238 ;--------------------------------------------------------
                                    239 ; special function registers
                                    240 ;--------------------------------------------------------
                                    241 	.area RSEG    (ABS,DATA)
      000000                        242 	.org 0x0000
                           0000C8   243 _T2CON	=	0x00c8
                           0000CA   244 _RCAP2L	=	0x00ca
                           0000CB   245 _RCAP2H	=	0x00cb
                           0000CC   246 _TL2	=	0x00cc
                           0000CD   247 _TH2	=	0x00cd
                           00008E   248 _AUXR	=	0x008e
                           0000A2   249 _AUXR1	=	0x00a2
                           000097   250 _CKRL	=	0x0097
                           00008F   251 _CKCON0	=	0x008f
                           0000AF   252 _CKCON1	=	0x00af
                           0000FA   253 _CCAP0H	=	0x00fa
                           0000FB   254 _CCAP1H	=	0x00fb
                           0000FC   255 _CCAP2H	=	0x00fc
                           0000FD   256 _CCAP3H	=	0x00fd
                           0000FE   257 _CCAP4H	=	0x00fe
                           0000EA   258 _CCAP0L	=	0x00ea
                           0000EB   259 _CCAP1L	=	0x00eb
                           0000EC   260 _CCAP2L	=	0x00ec
                           0000ED   261 _CCAP3L	=	0x00ed
                           0000EE   262 _CCAP4L	=	0x00ee
                           0000DA   263 _CCAPM0	=	0x00da
                           0000DB   264 _CCAPM1	=	0x00db
                           0000DC   265 _CCAPM2	=	0x00dc
                           0000DD   266 _CCAPM3	=	0x00dd
                           0000DE   267 _CCAPM4	=	0x00de
                           0000D8   268 _CCON	=	0x00d8
                           0000F9   269 _CH	=	0x00f9
                           0000E9   270 _CL	=	0x00e9
                           0000D9   271 _CMOD	=	0x00d9
                           0000A8   272 _IEN0	=	0x00a8
                           0000B1   273 _IEN1	=	0x00b1
                           0000B8   274 _IPL0	=	0x00b8
                           0000B7   275 _IPH0	=	0x00b7
                           0000B2   276 _IPL1	=	0x00b2
                           0000B3   277 _IPH1	=	0x00b3
                           0000C0   278 _P4	=	0x00c0
                           0000E8   279 _P5	=	0x00e8
                           0000A6   280 _WDTRST	=	0x00a6
                           0000A7   281 _WDTPRG	=	0x00a7
                           0000A9   282 _SADDR	=	0x00a9
                           0000B9   283 _SADEN	=	0x00b9
                           0000C3   284 _SPCON	=	0x00c3
                           0000C4   285 _SPSTA	=	0x00c4
                           0000C5   286 _SPDAT	=	0x00c5
                           0000C9   287 _T2MOD	=	0x00c9
                           00009B   288 _BDRCON	=	0x009b
                           00009A   289 _BRL	=	0x009a
                           00009C   290 _KBLS	=	0x009c
                           00009D   291 _KBE	=	0x009d
                           00009E   292 _KBF	=	0x009e
                           0000D2   293 _EECON	=	0x00d2
                           0000E0   294 _ACC	=	0x00e0
                           0000F0   295 _B	=	0x00f0
                           000083   296 _DPH	=	0x0083
                           000083   297 _DP0H	=	0x0083
                           000082   298 _DPL	=	0x0082
                           000082   299 _DP0L	=	0x0082
                           0000A8   300 _IE	=	0x00a8
                           0000B8   301 _IP	=	0x00b8
                           000080   302 _P0	=	0x0080
                           000090   303 _P1	=	0x0090
                           0000A0   304 _P2	=	0x00a0
                           0000B0   305 _P3	=	0x00b0
                           000087   306 _PCON	=	0x0087
                           0000D0   307 _PSW	=	0x00d0
                           000099   308 _SBUF	=	0x0099
                           000099   309 _SBUF0	=	0x0099
                           000098   310 _SCON	=	0x0098
                           000081   311 _SP	=	0x0081
                           000088   312 _TCON	=	0x0088
                           00008C   313 _TH0	=	0x008c
                           00008D   314 _TH1	=	0x008d
                           00008A   315 _TL0	=	0x008a
                           00008B   316 _TL1	=	0x008b
                           000089   317 _TMOD	=	0x0089
                                    318 ;--------------------------------------------------------
                                    319 ; special function bits
                                    320 ;--------------------------------------------------------
                                    321 	.area RSEG    (ABS,DATA)
      000000                        322 	.org 0x0000
                           0000AD   323 _ET2	=	0x00ad
                           0000BD   324 _PT2	=	0x00bd
                           0000C8   325 _T2CON_0	=	0x00c8
                           0000C9   326 _T2CON_1	=	0x00c9
                           0000CA   327 _T2CON_2	=	0x00ca
                           0000CB   328 _T2CON_3	=	0x00cb
                           0000CC   329 _T2CON_4	=	0x00cc
                           0000CD   330 _T2CON_5	=	0x00cd
                           0000CE   331 _T2CON_6	=	0x00ce
                           0000CF   332 _T2CON_7	=	0x00cf
                           0000C8   333 _CP_RL2	=	0x00c8
                           0000C9   334 _C_T2	=	0x00c9
                           0000CA   335 _TR2	=	0x00ca
                           0000CB   336 _EXEN2	=	0x00cb
                           0000CC   337 _TCLK	=	0x00cc
                           0000CD   338 _RCLK	=	0x00cd
                           0000CE   339 _EXF2	=	0x00ce
                           0000CF   340 _TF2	=	0x00cf
                           0000DF   341 _CF	=	0x00df
                           0000DE   342 _CR	=	0x00de
                           0000DC   343 _CCF4	=	0x00dc
                           0000DB   344 _CCF3	=	0x00db
                           0000DA   345 _CCF2	=	0x00da
                           0000D9   346 _CCF1	=	0x00d9
                           0000D8   347 _CCF0	=	0x00d8
                           0000AE   348 _EC	=	0x00ae
                           0000BE   349 _PPCL	=	0x00be
                           0000BD   350 _PT2L	=	0x00bd
                           0000BC   351 _PSL	=	0x00bc
                           0000BB   352 _PT1L	=	0x00bb
                           0000BA   353 _PX1L	=	0x00ba
                           0000B9   354 _PT0L	=	0x00b9
                           0000B8   355 _PX0L	=	0x00b8
                           0000C0   356 _P4_0	=	0x00c0
                           0000C1   357 _P4_1	=	0x00c1
                           0000C2   358 _P4_2	=	0x00c2
                           0000C3   359 _P4_3	=	0x00c3
                           0000C4   360 _P4_4	=	0x00c4
                           0000C5   361 _P4_5	=	0x00c5
                           0000C6   362 _P4_6	=	0x00c6
                           0000C7   363 _P4_7	=	0x00c7
                           0000E8   364 _P5_0	=	0x00e8
                           0000E9   365 _P5_1	=	0x00e9
                           0000EA   366 _P5_2	=	0x00ea
                           0000EB   367 _P5_3	=	0x00eb
                           0000EC   368 _P5_4	=	0x00ec
                           0000ED   369 _P5_5	=	0x00ed
                           0000EE   370 _P5_6	=	0x00ee
                           0000EF   371 _P5_7	=	0x00ef
                           0000F0   372 _BREG_F0	=	0x00f0
                           0000F1   373 _BREG_F1	=	0x00f1
                           0000F2   374 _BREG_F2	=	0x00f2
                           0000F3   375 _BREG_F3	=	0x00f3
                           0000F4   376 _BREG_F4	=	0x00f4
                           0000F5   377 _BREG_F5	=	0x00f5
                           0000F6   378 _BREG_F6	=	0x00f6
                           0000F7   379 _BREG_F7	=	0x00f7
                           0000A8   380 _EX0	=	0x00a8
                           0000A9   381 _ET0	=	0x00a9
                           0000AA   382 _EX1	=	0x00aa
                           0000AB   383 _ET1	=	0x00ab
                           0000AC   384 _ES	=	0x00ac
                           0000AF   385 _EA	=	0x00af
                           0000B8   386 _PX0	=	0x00b8
                           0000B9   387 _PT0	=	0x00b9
                           0000BA   388 _PX1	=	0x00ba
                           0000BB   389 _PT1	=	0x00bb
                           0000BC   390 _PS	=	0x00bc
                           000080   391 _P0_0	=	0x0080
                           000081   392 _P0_1	=	0x0081
                           000082   393 _P0_2	=	0x0082
                           000083   394 _P0_3	=	0x0083
                           000084   395 _P0_4	=	0x0084
                           000085   396 _P0_5	=	0x0085
                           000086   397 _P0_6	=	0x0086
                           000087   398 _P0_7	=	0x0087
                           000090   399 _P1_0	=	0x0090
                           000091   400 _P1_1	=	0x0091
                           000092   401 _P1_2	=	0x0092
                           000093   402 _P1_3	=	0x0093
                           000094   403 _P1_4	=	0x0094
                           000095   404 _P1_5	=	0x0095
                           000096   405 _P1_6	=	0x0096
                           000097   406 _P1_7	=	0x0097
                           0000A0   407 _P2_0	=	0x00a0
                           0000A1   408 _P2_1	=	0x00a1
                           0000A2   409 _P2_2	=	0x00a2
                           0000A3   410 _P2_3	=	0x00a3
                           0000A4   411 _P2_4	=	0x00a4
                           0000A5   412 _P2_5	=	0x00a5
                           0000A6   413 _P2_6	=	0x00a6
                           0000A7   414 _P2_7	=	0x00a7
                           0000B0   415 _P3_0	=	0x00b0
                           0000B1   416 _P3_1	=	0x00b1
                           0000B2   417 _P3_2	=	0x00b2
                           0000B3   418 _P3_3	=	0x00b3
                           0000B4   419 _P3_4	=	0x00b4
                           0000B5   420 _P3_5	=	0x00b5
                           0000B6   421 _P3_6	=	0x00b6
                           0000B7   422 _P3_7	=	0x00b7
                           0000B0   423 _RXD	=	0x00b0
                           0000B0   424 _RXD0	=	0x00b0
                           0000B1   425 _TXD	=	0x00b1
                           0000B1   426 _TXD0	=	0x00b1
                           0000B2   427 _INT0	=	0x00b2
                           0000B3   428 _INT1	=	0x00b3
                           0000B4   429 _T0	=	0x00b4
                           0000B5   430 _T1	=	0x00b5
                           0000B6   431 _WR	=	0x00b6
                           0000B7   432 _RD	=	0x00b7
                           0000D0   433 _P	=	0x00d0
                           0000D1   434 _F1	=	0x00d1
                           0000D2   435 _OV	=	0x00d2
                           0000D3   436 _RS0	=	0x00d3
                           0000D4   437 _RS1	=	0x00d4
                           0000D5   438 _F0	=	0x00d5
                           0000D6   439 _AC	=	0x00d6
                           0000D7   440 _CY	=	0x00d7
                           000098   441 _RI	=	0x0098
                           000099   442 _TI	=	0x0099
                           00009A   443 _RB8	=	0x009a
                           00009B   444 _TB8	=	0x009b
                           00009C   445 _REN	=	0x009c
                           00009D   446 _SM2	=	0x009d
                           00009E   447 _SM1	=	0x009e
                           00009F   448 _SM0	=	0x009f
                           000088   449 _IT0	=	0x0088
                           000089   450 _IE0	=	0x0089
                           00008A   451 _IT1	=	0x008a
                           00008B   452 _IE1	=	0x008b
                           00008C   453 _TR0	=	0x008c
                           00008D   454 _TF0	=	0x008d
                           00008E   455 _TR1	=	0x008e
                           00008F   456 _TF1	=	0x008f
                                    457 ;--------------------------------------------------------
                                    458 ; overlayable register banks
                                    459 ;--------------------------------------------------------
                                    460 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        461 	.ds 8
                                    462 ;--------------------------------------------------------
                                    463 ; internal ram data
                                    464 ;--------------------------------------------------------
                                    465 	.area DSEG    (DATA)
                                    466 ;--------------------------------------------------------
                                    467 ; overlayable items in internal ram 
                                    468 ;--------------------------------------------------------
                                    469 ;--------------------------------------------------------
                                    470 ; Stack segment in internal ram 
                                    471 ;--------------------------------------------------------
                                    472 	.area	SSEG
      000009                        473 __start__stack:
      000009                        474 	.ds	1
                                    475 
                                    476 ;--------------------------------------------------------
                                    477 ; indirectly addressable internal ram data
                                    478 ;--------------------------------------------------------
                                    479 	.area ISEG    (DATA)
                                    480 ;--------------------------------------------------------
                                    481 ; absolute internal ram data
                                    482 ;--------------------------------------------------------
                                    483 	.area IABS    (ABS,DATA)
                                    484 	.area IABS    (ABS,DATA)
                                    485 ;--------------------------------------------------------
                                    486 ; bit data
                                    487 ;--------------------------------------------------------
                                    488 	.area BSEG    (BIT)
                                    489 ;--------------------------------------------------------
                                    490 ; paged external ram data
                                    491 ;--------------------------------------------------------
                                    492 	.area PSEG    (PAG,XDATA)
                                    493 ;--------------------------------------------------------
                                    494 ; external ram data
                                    495 ;--------------------------------------------------------
                                    496 	.area XSEG    (XDATA)
      000400                        497 _input_char::
      000400                        498 	.ds 2
      000402                        499 _watchdog_flag::
      000402                        500 	.ds 2
      000404                        501 _putchar_c_65536_43:
      000404                        502 	.ds 2
                                    503 ;--------------------------------------------------------
                                    504 ; absolute external ram data
                                    505 ;--------------------------------------------------------
                                    506 	.area XABS    (ABS,XDATA)
                                    507 ;--------------------------------------------------------
                                    508 ; external initialized ram data
                                    509 ;--------------------------------------------------------
                                    510 	.area XISEG   (XDATA)
                                    511 	.area HOME    (CODE)
                                    512 	.area GSINIT0 (CODE)
                                    513 	.area GSINIT1 (CODE)
                                    514 	.area GSINIT2 (CODE)
                                    515 	.area GSINIT3 (CODE)
                                    516 	.area GSINIT4 (CODE)
                                    517 	.area GSINIT5 (CODE)
                                    518 	.area GSINIT  (CODE)
                                    519 	.area GSFINAL (CODE)
                                    520 	.area CSEG    (CODE)
                                    521 ;--------------------------------------------------------
                                    522 ; interrupt vector 
                                    523 ;--------------------------------------------------------
                                    524 	.area HOME    (CODE)
      000000                        525 __interrupt_vect:
      000000 02 00 06         [24]  526 	ljmp	__sdcc_gsinit_startup
                                    527 ;--------------------------------------------------------
                                    528 ; global & static initialisations
                                    529 ;--------------------------------------------------------
                                    530 	.area HOME    (CODE)
                                    531 	.area GSINIT  (CODE)
                                    532 	.area GSFINAL (CODE)
                                    533 	.area GSINIT  (CODE)
                                    534 	.globl __sdcc_gsinit_startup
                                    535 	.globl __sdcc_program_startup
                                    536 	.globl __start__stack
                                    537 	.globl __mcs51_genXINIT
                                    538 	.globl __mcs51_genXRAMCLEAR
                                    539 	.globl __mcs51_genRAMCLEAR
                                    540 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  541 	ljmp	__sdcc_program_startup
                                    542 ;--------------------------------------------------------
                                    543 ; Home
                                    544 ;--------------------------------------------------------
                                    545 	.area HOME    (CODE)
                                    546 	.area HOME    (CODE)
      000003                        547 __sdcc_program_startup:
      000003 02 02 62         [24]  548 	ljmp	_main
                                    549 ;	return from main will return to caller
                                    550 ;--------------------------------------------------------
                                    551 ; code
                                    552 ;--------------------------------------------------------
                                    553 	.area CSEG    (CODE)
                                    554 ;------------------------------------------------------------
                                    555 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    556 ;------------------------------------------------------------
                                    557 ;	main.c:26: _sdcc_external_startup()
                                    558 ;	-----------------------------------------
                                    559 ;	 function _sdcc_external_startup
                                    560 ;	-----------------------------------------
      000062                        561 __sdcc_external_startup:
                           000007   562 	ar7 = 0x07
                           000006   563 	ar6 = 0x06
                           000005   564 	ar5 = 0x05
                           000004   565 	ar4 = 0x04
                           000003   566 	ar3 = 0x03
                           000002   567 	ar2 = 0x02
                           000001   568 	ar1 = 0x01
                           000000   569 	ar0 = 0x00
                                    570 ;	main.c:28: AUXR |= 0x0C;
      000062 43 8E 0C         [24]  571 	orl	_AUXR,#0x0c
                                    572 ;	main.c:29: return 0;
      000065 90 00 00         [24]  573 	mov	dptr,#0x0000
                                    574 ;	main.c:30: }
      000068 22               [24]  575 	ret
                                    576 ;------------------------------------------------------------
                                    577 ;Allocation info for local variables in function 'putchar'
                                    578 ;------------------------------------------------------------
                                    579 ;c                         Allocated with name '_putchar_c_65536_43'
                                    580 ;------------------------------------------------------------
                                    581 ;	main.c:34: int putchar (int c)
                                    582 ;	-----------------------------------------
                                    583 ;	 function putchar
                                    584 ;	-----------------------------------------
      000069                        585 _putchar:
      000069 AF 83            [24]  586 	mov	r7,dph
      00006B E5 82            [12]  587 	mov	a,dpl
      00006D 90 04 04         [24]  588 	mov	dptr,#_putchar_c_65536_43
      000070 F0               [24]  589 	movx	@dptr,a
      000071 EF               [12]  590 	mov	a,r7
      000072 A3               [24]  591 	inc	dptr
      000073 F0               [24]  592 	movx	@dptr,a
                                    593 ;	main.c:38: while (!TI);
      000074                        594 00101$:
      000074 30 99 FD         [24]  595 	jnb	_TI,00101$
                                    596 ;	main.c:39: SBUF = c;           // load serial port with transmit value
      000077 90 04 04         [24]  597 	mov	dptr,#_putchar_c_65536_43
      00007A E0               [24]  598 	movx	a,@dptr
      00007B FE               [12]  599 	mov	r6,a
      00007C A3               [24]  600 	inc	dptr
      00007D E0               [24]  601 	movx	a,@dptr
      00007E FF               [12]  602 	mov	r7,a
      00007F 8E 99            [24]  603 	mov	_SBUF,r6
                                    604 ;	main.c:40: TI = 0;             // clear TI flag
                                    605 ;	assignBit
      000081 C2 99            [12]  606 	clr	_TI
                                    607 ;	main.c:42: return c;
      000083 8E 82            [24]  608 	mov	dpl,r6
      000085 8F 83            [24]  609 	mov	dph,r7
                                    610 ;	main.c:43: }
      000087 22               [24]  611 	ret
                                    612 ;------------------------------------------------------------
                                    613 ;Allocation info for local variables in function 'getchar'
                                    614 ;------------------------------------------------------------
                                    615 ;	main.c:48: int getchar (void)
                                    616 ;	-----------------------------------------
                                    617 ;	 function getchar
                                    618 ;	-----------------------------------------
      000088                        619 _getchar:
                                    620 ;	main.c:52: while (!RI);
      000088                        621 00101$:
                                    622 ;	main.c:53: RI = 0;                         // clear RI flag
                                    623 ;	assignBit
      000088 10 98 02         [24]  624 	jbc	_RI,00114$
      00008B 80 FB            [24]  625 	sjmp	00101$
      00008D                        626 00114$:
                                    627 ;	main.c:54: return SBUF;                    // return character from SBUF
      00008D AE 99            [24]  628 	mov	r6,_SBUF
      00008F 7F 00            [12]  629 	mov	r7,#0x00
      000091 8E 82            [24]  630 	mov	dpl,r6
      000093 8F 83            [24]  631 	mov	dph,r7
                                    632 ;	main.c:55: }
      000095 22               [24]  633 	ret
                                    634 ;------------------------------------------------------------
                                    635 ;Allocation info for local variables in function 'getinput'
                                    636 ;------------------------------------------------------------
                                    637 ;a                         Allocated with name '_getinput_a_65536_47'
                                    638 ;number                    Allocated with name '_getinput_number_65536_47'
                                    639 ;e                         Allocated with name '_getinput_e_65537_48'
                                    640 ;------------------------------------------------------------
                                    641 ;	main.c:56: unsigned int getinput()
                                    642 ;	-----------------------------------------
                                    643 ;	 function getinput
                                    644 ;	-----------------------------------------
      000096                        645 _getinput:
                                    646 ;	main.c:61: again:  printf_tiny("Enter a value btw 1 and 6 \r\n");
      000096                        647 00101$:
      000096 74 97            [12]  648 	mov	a,#___str_0
      000098 C0 E0            [24]  649 	push	acc
      00009A 74 04            [12]  650 	mov	a,#(___str_0 >> 8)
      00009C C0 E0            [24]  651 	push	acc
      00009E 12 03 72         [24]  652 	lcall	_printf_tiny
      0000A1 15 81            [12]  653 	dec	sp
      0000A3 15 81            [12]  654 	dec	sp
                                    655 ;	main.c:63: a = getchar(); // get first digit
      0000A5 12 00 88         [24]  656 	lcall	_getchar
      0000A8 E5 82            [12]  657 	mov	a,dpl
      0000AA 85 83 F0         [24]  658 	mov	b,dph
                                    659 ;	main.c:64: int e=a-'0';
      0000AD 24 D0            [12]  660 	add	a,#0xd0
      0000AF FE               [12]  661 	mov	r6,a
      0000B0 E5 F0            [12]  662 	mov	a,b
      0000B2 34 FF            [12]  663 	addc	a,#0xff
      0000B4 FF               [12]  664 	mov	r7,a
                                    665 ;	main.c:65: printf_tiny("a= %d\r\n", e);
      0000B5 C0 07            [24]  666 	push	ar7
      0000B7 C0 06            [24]  667 	push	ar6
      0000B9 C0 06            [24]  668 	push	ar6
      0000BB C0 07            [24]  669 	push	ar7
      0000BD 74 B4            [12]  670 	mov	a,#___str_1
      0000BF C0 E0            [24]  671 	push	acc
      0000C1 74 04            [12]  672 	mov	a,#(___str_1 >> 8)
      0000C3 C0 E0            [24]  673 	push	acc
      0000C5 12 03 72         [24]  674 	lcall	_printf_tiny
      0000C8 E5 81            [12]  675 	mov	a,sp
      0000CA 24 FC            [12]  676 	add	a,#0xfc
      0000CC F5 81            [12]  677 	mov	sp,a
      0000CE D0 06            [24]  678 	pop	ar6
      0000D0 D0 07            [24]  679 	pop	ar7
                                    680 ;	main.c:70: printf_tiny("number = %d\n\r", number);
      0000D2 C0 07            [24]  681 	push	ar7
      0000D4 C0 06            [24]  682 	push	ar6
      0000D6 C0 06            [24]  683 	push	ar6
      0000D8 C0 07            [24]  684 	push	ar7
      0000DA 74 BC            [12]  685 	mov	a,#___str_2
      0000DC C0 E0            [24]  686 	push	acc
      0000DE 74 04            [12]  687 	mov	a,#(___str_2 >> 8)
      0000E0 C0 E0            [24]  688 	push	acc
      0000E2 12 03 72         [24]  689 	lcall	_printf_tiny
      0000E5 E5 81            [12]  690 	mov	a,sp
      0000E7 24 FC            [12]  691 	add	a,#0xfc
      0000E9 F5 81            [12]  692 	mov	sp,a
      0000EB D0 06            [24]  693 	pop	ar6
      0000ED D0 07            [24]  694 	pop	ar7
                                    695 ;	main.c:71: if((number>=1) &&(number<=8)) // value of digit >48 and less then 4800
      0000EF C3               [12]  696 	clr	c
      0000F0 EE               [12]  697 	mov	a,r6
      0000F1 94 01            [12]  698 	subb	a,#0x01
      0000F3 EF               [12]  699 	mov	a,r7
      0000F4 94 00            [12]  700 	subb	a,#0x00
      0000F6 40 40            [24]  701 	jc	00103$
      0000F8 74 08            [12]  702 	mov	a,#0x08
      0000FA 9E               [12]  703 	subb	a,r6
      0000FB E4               [12]  704 	clr	a
      0000FC 9F               [12]  705 	subb	a,r7
      0000FD 40 39            [24]  706 	jc	00103$
                                    707 ;	main.c:73: printf_tiny("valid input\r\n");
      0000FF C0 07            [24]  708 	push	ar7
      000101 C0 06            [24]  709 	push	ar6
      000103 74 CA            [12]  710 	mov	a,#___str_3
      000105 C0 E0            [24]  711 	push	acc
      000107 74 04            [12]  712 	mov	a,#(___str_3 >> 8)
      000109 C0 E0            [24]  713 	push	acc
      00010B 12 03 72         [24]  714 	lcall	_printf_tiny
      00010E 15 81            [12]  715 	dec	sp
      000110 15 81            [12]  716 	dec	sp
      000112 D0 06            [24]  717 	pop	ar6
      000114 D0 07            [24]  718 	pop	ar7
                                    719 ;	main.c:74: printf_tiny("num= %d", number);
      000116 C0 07            [24]  720 	push	ar7
      000118 C0 06            [24]  721 	push	ar6
      00011A C0 06            [24]  722 	push	ar6
      00011C C0 07            [24]  723 	push	ar7
      00011E 74 D8            [12]  724 	mov	a,#___str_4
      000120 C0 E0            [24]  725 	push	acc
      000122 74 04            [12]  726 	mov	a,#(___str_4 >> 8)
      000124 C0 E0            [24]  727 	push	acc
      000126 12 03 72         [24]  728 	lcall	_printf_tiny
      000129 E5 81            [12]  729 	mov	a,sp
      00012B 24 FC            [12]  730 	add	a,#0xfc
      00012D F5 81            [12]  731 	mov	sp,a
      00012F D0 06            [24]  732 	pop	ar6
      000131 D0 07            [24]  733 	pop	ar7
                                    734 ;	main.c:75: return number;
      000133 8E 82            [24]  735 	mov	dpl,r6
      000135 8F 83            [24]  736 	mov	dph,r7
      000137 22               [24]  737 	ret
      000138                        738 00103$:
                                    739 ;	main.c:79: printf_tiny("not a valid input\r\n");
      000138 74 E0            [12]  740 	mov	a,#___str_5
      00013A C0 E0            [24]  741 	push	acc
      00013C 74 04            [12]  742 	mov	a,#(___str_5 >> 8)
      00013E C0 E0            [24]  743 	push	acc
      000140 12 03 72         [24]  744 	lcall	_printf_tiny
      000143 15 81            [12]  745 	dec	sp
      000145 15 81            [12]  746 	dec	sp
                                    747 ;	main.c:80: goto again;
                                    748 ;	main.c:83: }
      000147 02 00 96         [24]  749 	ljmp	00101$
                                    750 ;------------------------------------------------------------
                                    751 ;Allocation info for local variables in function 'hardware_init'
                                    752 ;------------------------------------------------------------
                                    753 ;	main.c:87: void hardware_init()
                                    754 ;	-----------------------------------------
                                    755 ;	 function hardware_init
                                    756 ;	-----------------------------------------
      00014A                        757 _hardware_init:
                                    758 ;	main.c:89: CKCON0 = 0x1F;
      00014A 75 8F 1F         [24]  759 	mov	_CKCON0,#0x1f
                                    760 ;	main.c:90: IEN0 |= 0x80;
      00014D 43 A8 80         [24]  761 	orl	_IEN0,#0x80
                                    762 ;	main.c:91: TMOD |= 0x20;
      000150 43 89 20         [24]  763 	orl	_TMOD,#0x20
                                    764 ;	main.c:92: SCON |= 0x50;
      000153 43 98 50         [24]  765 	orl	_SCON,#0x50
                                    766 ;	main.c:93: TCON |= 0x40;
      000156 43 88 40         [24]  767 	orl	_TCON,#0x40
                                    768 ;	main.c:94: TH1 = 0xFD;
      000159 75 8D FD         [24]  769 	mov	_TH1,#0xfd
                                    770 ;	main.c:95: TI = 1;
                                    771 ;	assignBit
      00015C D2 99            [12]  772 	setb	_TI
                                    773 ;	main.c:96: }
      00015E 22               [24]  774 	ret
                                    775 ;------------------------------------------------------------
                                    776 ;Allocation info for local variables in function 'run_pwm'
                                    777 ;------------------------------------------------------------
                                    778 ;	main.c:101: void run_pwm()
                                    779 ;	-----------------------------------------
                                    780 ;	 function run_pwm
                                    781 ;	-----------------------------------------
      00015F                        782 _run_pwm:
                                    783 ;	main.c:103: printf_tiny("Running PWM\r\n");
      00015F 74 F4            [12]  784 	mov	a,#___str_6
      000161 C0 E0            [24]  785 	push	acc
      000163 74 04            [12]  786 	mov	a,#(___str_6 >> 8)
      000165 C0 E0            [24]  787 	push	acc
      000167 12 03 72         [24]  788 	lcall	_printf_tiny
      00016A 15 81            [12]  789 	dec	sp
      00016C 15 81            [12]  790 	dec	sp
                                    791 ;	main.c:104: CMOD = 0x02;
      00016E 75 D9 02         [24]  792 	mov	_CMOD,#0x02
                                    793 ;	main.c:105: CL = 0x00;
      000171 75 E9 00         [24]  794 	mov	_CL,#0x00
                                    795 ;	main.c:106: CH = 0x00;
      000174 75 F9 00         [24]  796 	mov	_CH,#0x00
                                    797 ;	main.c:107: CCAP0L = 0xbf;
      000177 75 EA BF         [24]  798 	mov	_CCAP0L,#0xbf
                                    799 ;	main.c:108: CCAP0H = 0xbf;
      00017A 75 FA BF         [24]  800 	mov	_CCAP0H,#0xbf
                                    801 ;	main.c:109: CCON = 0x40;
      00017D 75 D8 40         [24]  802 	mov	_CCON,#0x40
                                    803 ;	main.c:110: CCAPM0 = 0x42;
      000180 75 DA 42         [24]  804 	mov	_CCAPM0,#0x42
                                    805 ;	main.c:112: }
      000183 22               [24]  806 	ret
                                    807 ;------------------------------------------------------------
                                    808 ;Allocation info for local variables in function 'stop_pwm'
                                    809 ;------------------------------------------------------------
                                    810 ;	main.c:116: void stop_pwm(void)
                                    811 ;	-----------------------------------------
                                    812 ;	 function stop_pwm
                                    813 ;	-----------------------------------------
      000184                        814 _stop_pwm:
                                    815 ;	main.c:118: printf_tiny("Stopping the PWM\r\n");
      000184 74 02            [12]  816 	mov	a,#___str_7
      000186 C0 E0            [24]  817 	push	acc
      000188 74 05            [12]  818 	mov	a,#(___str_7 >> 8)
      00018A C0 E0            [24]  819 	push	acc
      00018C 12 03 72         [24]  820 	lcall	_printf_tiny
      00018F 15 81            [12]  821 	dec	sp
      000191 15 81            [12]  822 	dec	sp
                                    823 ;	main.c:119: CCAPM0 &= 0x00;
      000193 E5 DA            [12]  824 	mov	a,_CCAPM0
      000195 75 DA 00         [24]  825 	mov	_CCAPM0,#0x00
                                    826 ;	main.c:120: }
      000198 22               [24]  827 	ret
                                    828 ;------------------------------------------------------------
                                    829 ;Allocation info for local variables in function 'min_freq'
                                    830 ;------------------------------------------------------------
                                    831 ;	main.c:124: void min_freq()
                                    832 ;	-----------------------------------------
                                    833 ;	 function min_freq
                                    834 ;	-----------------------------------------
      000199                        835 _min_freq:
                                    836 ;	main.c:126: printf_tiny("going to minimum frequency\r\n");
      000199 74 15            [12]  837 	mov	a,#___str_8
      00019B C0 E0            [24]  838 	push	acc
      00019D 74 05            [12]  839 	mov	a,#(___str_8 >> 8)
      00019F C0 E0            [24]  840 	push	acc
      0001A1 12 03 72         [24]  841 	lcall	_printf_tiny
      0001A4 15 81            [12]  842 	dec	sp
      0001A6 15 81            [12]  843 	dec	sp
                                    844 ;	main.c:127: CKRL = 0x00;
      0001A8 75 97 00         [24]  845 	mov	_CKRL,#0x00
                                    846 ;	main.c:128: }
      0001AB 22               [24]  847 	ret
                                    848 ;------------------------------------------------------------
                                    849 ;Allocation info for local variables in function 'max_freq'
                                    850 ;------------------------------------------------------------
                                    851 ;	main.c:133: void max_freq()
                                    852 ;	-----------------------------------------
                                    853 ;	 function max_freq
                                    854 ;	-----------------------------------------
      0001AC                        855 _max_freq:
                                    856 ;	main.c:135: printf_tiny("going to maximum frequency\r\n");
      0001AC 74 32            [12]  857 	mov	a,#___str_9
      0001AE C0 E0            [24]  858 	push	acc
      0001B0 74 05            [12]  859 	mov	a,#(___str_9 >> 8)
      0001B2 C0 E0            [24]  860 	push	acc
      0001B4 12 03 72         [24]  861 	lcall	_printf_tiny
      0001B7 15 81            [12]  862 	dec	sp
      0001B9 15 81            [12]  863 	dec	sp
                                    864 ;	main.c:136: CKRL = 0xFF;
      0001BB 75 97 FF         [24]  865 	mov	_CKRL,#0xff
                                    866 ;	main.c:138: }
      0001BE 22               [24]  867 	ret
                                    868 ;------------------------------------------------------------
                                    869 ;Allocation info for local variables in function 'idle_mode'
                                    870 ;------------------------------------------------------------
                                    871 ;	main.c:142: void idle_mode()
                                    872 ;	-----------------------------------------
                                    873 ;	 function idle_mode
                                    874 ;	-----------------------------------------
      0001BF                        875 _idle_mode:
                                    876 ;	main.c:145: printf_tiny("going to idle mode\r\n");
      0001BF 74 4F            [12]  877 	mov	a,#___str_10
      0001C1 C0 E0            [24]  878 	push	acc
      0001C3 74 05            [12]  879 	mov	a,#(___str_10 >> 8)
      0001C5 C0 E0            [24]  880 	push	acc
      0001C7 12 03 72         [24]  881 	lcall	_printf_tiny
      0001CA 15 81            [12]  882 	dec	sp
      0001CC 15 81            [12]  883 	dec	sp
                                    884 ;	main.c:146: PCON = 0x01;
      0001CE 75 87 01         [24]  885 	mov	_PCON,#0x01
                                    886 ;	main.c:148: }
      0001D1 22               [24]  887 	ret
                                    888 ;------------------------------------------------------------
                                    889 ;Allocation info for local variables in function 'power_down_mode'
                                    890 ;------------------------------------------------------------
                                    891 ;	main.c:153: void power_down_mode()
                                    892 ;	-----------------------------------------
                                    893 ;	 function power_down_mode
                                    894 ;	-----------------------------------------
      0001D2                        895 _power_down_mode:
                                    896 ;	main.c:156: printf_tiny("going to power down mode\r\n");
      0001D2 74 64            [12]  897 	mov	a,#___str_11
      0001D4 C0 E0            [24]  898 	push	acc
      0001D6 74 05            [12]  899 	mov	a,#(___str_11 >> 8)
      0001D8 C0 E0            [24]  900 	push	acc
      0001DA 12 03 72         [24]  901 	lcall	_printf_tiny
      0001DD 15 81            [12]  902 	dec	sp
      0001DF 15 81            [12]  903 	dec	sp
                                    904 ;	main.c:157: PCON |= 0x02;
      0001E1 43 87 02         [24]  905 	orl	_PCON,#0x02
                                    906 ;	main.c:158: }
      0001E4 22               [24]  907 	ret
                                    908 ;------------------------------------------------------------
                                    909 ;Allocation info for local variables in function 'high_speed_toggle'
                                    910 ;------------------------------------------------------------
                                    911 ;	main.c:159: void high_speed_toggle(void)
                                    912 ;	-----------------------------------------
                                    913 ;	 function high_speed_toggle
                                    914 ;	-----------------------------------------
      0001E5                        915 _high_speed_toggle:
                                    916 ;	main.c:161: printf_tiny("high speed\r\n");
      0001E5 74 7F            [12]  917 	mov	a,#___str_12
      0001E7 C0 E0            [24]  918 	push	acc
      0001E9 74 05            [12]  919 	mov	a,#(___str_12 >> 8)
      0001EB C0 E0            [24]  920 	push	acc
      0001ED 12 03 72         [24]  921 	lcall	_printf_tiny
      0001F0 15 81            [12]  922 	dec	sp
      0001F2 15 81            [12]  923 	dec	sp
                                    924 ;	main.c:162: CMOD = 0x02;
      0001F4 75 D9 02         [24]  925 	mov	_CMOD,#0x02
                                    926 ;	main.c:163: CCAP0L = 0x00;
      0001F7 75 EA 00         [24]  927 	mov	_CCAP0L,#0x00
                                    928 ;	main.c:164: CCAP0H = 0x00;
      0001FA 75 FA 00         [24]  929 	mov	_CCAP0H,#0x00
                                    930 ;	main.c:165: CCON = 0x40;
      0001FD 75 D8 40         [24]  931 	mov	_CCON,#0x40
                                    932 ;	main.c:166: CCAPM0 = 0x4C;
      000200 75 DA 4C         [24]  933 	mov	_CCAPM0,#0x4c
                                    934 ;	main.c:167: }
      000203 22               [24]  935 	ret
                                    936 ;------------------------------------------------------------
                                    937 ;Allocation info for local variables in function 'watchdog_switch'
                                    938 ;------------------------------------------------------------
                                    939 ;	main.c:168: void watchdog_switch()
                                    940 ;	-----------------------------------------
                                    941 ;	 function watchdog_switch
                                    942 ;	-----------------------------------------
      000204                        943 _watchdog_switch:
                                    944 ;	main.c:170: if(watchdog_flag==0)
      000204 90 04 02         [24]  945 	mov	dptr,#_watchdog_flag
      000207 E0               [24]  946 	movx	a,@dptr
      000208 F5 F0            [12]  947 	mov	b,a
      00020A A3               [24]  948 	inc	dptr
      00020B E0               [24]  949 	movx	a,@dptr
      00020C 45 F0            [12]  950 	orl	a,b
      00020E 70 19            [24]  951 	jnz	00102$
                                    952 ;	main.c:172: printf_tiny("watchdog_on");
      000210 74 8C            [12]  953 	mov	a,#___str_13
      000212 C0 E0            [24]  954 	push	acc
      000214 74 05            [12]  955 	mov	a,#(___str_13 >> 8)
      000216 C0 E0            [24]  956 	push	acc
      000218 12 03 72         [24]  957 	lcall	_printf_tiny
      00021B 15 81            [12]  958 	dec	sp
      00021D 15 81            [12]  959 	dec	sp
                                    960 ;	main.c:173: watchdog_flag=1;
      00021F 90 04 02         [24]  961 	mov	dptr,#_watchdog_flag
      000222 74 01            [12]  962 	mov	a,#0x01
      000224 F0               [24]  963 	movx	@dptr,a
      000225 E4               [12]  964 	clr	a
      000226 A3               [24]  965 	inc	dptr
      000227 F0               [24]  966 	movx	@dptr,a
      000228 22               [24]  967 	ret
      000229                        968 00102$:
                                    969 ;	main.c:177: printf_tiny("watchdog_off");
      000229 74 98            [12]  970 	mov	a,#___str_14
      00022B C0 E0            [24]  971 	push	acc
      00022D 74 05            [12]  972 	mov	a,#(___str_14 >> 8)
      00022F C0 E0            [24]  973 	push	acc
      000231 12 03 72         [24]  974 	lcall	_printf_tiny
      000234 15 81            [12]  975 	dec	sp
      000236 15 81            [12]  976 	dec	sp
                                    977 ;	main.c:178: watchdog_flag=0;
      000238 90 04 02         [24]  978 	mov	dptr,#_watchdog_flag
      00023B E4               [12]  979 	clr	a
      00023C F0               [24]  980 	movx	@dptr,a
      00023D A3               [24]  981 	inc	dptr
      00023E F0               [24]  982 	movx	@dptr,a
                                    983 ;	main.c:180: }
      00023F 22               [24]  984 	ret
                                    985 ;------------------------------------------------------------
                                    986 ;Allocation info for local variables in function 'watchdog'
                                    987 ;------------------------------------------------------------
                                    988 ;	main.c:181: void watchdog(void)
                                    989 ;	-----------------------------------------
                                    990 ;	 function watchdog
                                    991 ;	-----------------------------------------
      000240                        992 _watchdog:
                                    993 ;	main.c:184: if(watchdog_flag==1)
      000240 90 04 02         [24]  994 	mov	dptr,#_watchdog_flag
      000243 E0               [24]  995 	movx	a,@dptr
      000244 FE               [12]  996 	mov	r6,a
      000245 A3               [24]  997 	inc	dptr
      000246 E0               [24]  998 	movx	a,@dptr
      000247 FF               [12]  999 	mov	r7,a
      000248 BE 01 13         [24] 1000 	cjne	r6,#0x01,00102$
      00024B BF 00 10         [24] 1001 	cjne	r7,#0x00,00102$
                                   1002 ;	main.c:186: CCAP4L = 0x00;
      00024E 75 EE 00         [24] 1003 	mov	_CCAP4L,#0x00
                                   1004 ;	main.c:187: CCAP4H = 0xFF;
      000251 75 FE FF         [24] 1005 	mov	_CCAP4H,#0xff
                                   1006 ;	main.c:188: CMOD |= 0x40;
      000254 43 D9 40         [24] 1007 	orl	_CMOD,#0x40
                                   1008 ;	main.c:189: CCON = 0x40;
      000257 75 D8 40         [24] 1009 	mov	_CCON,#0x40
                                   1010 ;	main.c:190: CCAPM4 |= 0x4C;
      00025A 43 DE 4C         [24] 1011 	orl	_CCAPM4,#0x4c
      00025D 22               [24] 1012 	ret
      00025E                       1013 00102$:
                                   1014 ;	main.c:194: CMOD = 0x00;
      00025E 75 D9 00         [24] 1015 	mov	_CMOD,#0x00
                                   1016 ;	main.c:196: }
      000261 22               [24] 1017 	ret
                                   1018 ;------------------------------------------------------------
                                   1019 ;Allocation info for local variables in function 'main'
                                   1020 ;------------------------------------------------------------
                                   1021 ;	main.c:197: void main(void)
                                   1022 ;	-----------------------------------------
                                   1023 ;	 function main
                                   1024 ;	-----------------------------------------
      000262                       1025 _main:
                                   1026 ;	main.c:201: hardware_init();
      000262 12 01 4A         [24] 1027 	lcall	_hardware_init
                                   1028 ;	main.c:202: while(1)
      000265                       1029 00125$:
                                   1030 ;	main.c:205: printf_tiny("*************USER MENU for LAB 3 Part 3*******************\r\n");
      000265 74 A5            [12] 1031 	mov	a,#___str_15
      000267 C0 E0            [24] 1032 	push	acc
      000269 74 05            [12] 1033 	mov	a,#(___str_15 >> 8)
      00026B C0 E0            [24] 1034 	push	acc
      00026D 12 03 72         [24] 1035 	lcall	_printf_tiny
      000270 15 81            [12] 1036 	dec	sp
      000272 15 81            [12] 1037 	dec	sp
                                   1038 ;	main.c:206: printf_tiny("1 for run PWM mode\r\n");
      000274 74 E2            [12] 1039 	mov	a,#___str_16
      000276 C0 E0            [24] 1040 	push	acc
      000278 74 05            [12] 1041 	mov	a,#(___str_16 >> 8)
      00027A C0 E0            [24] 1042 	push	acc
      00027C 12 03 72         [24] 1043 	lcall	_printf_tiny
      00027F 15 81            [12] 1044 	dec	sp
      000281 15 81            [12] 1045 	dec	sp
                                   1046 ;	main.c:207: printf_tiny("2 for stop PWM mode\r\n");
      000283 74 F7            [12] 1047 	mov	a,#___str_17
      000285 C0 E0            [24] 1048 	push	acc
      000287 74 05            [12] 1049 	mov	a,#(___str_17 >> 8)
      000289 C0 E0            [24] 1050 	push	acc
      00028B 12 03 72         [24] 1051 	lcall	_printf_tiny
      00028E 15 81            [12] 1052 	dec	sp
      000290 15 81            [12] 1053 	dec	sp
                                   1054 ;	main.c:208: printf_tiny("3 forSet FCLK PERIPH at the minimum frequency supported by the CKRL register  \r\n");
      000292 74 0D            [12] 1055 	mov	a,#___str_18
      000294 C0 E0            [24] 1056 	push	acc
      000296 74 06            [12] 1057 	mov	a,#(___str_18 >> 8)
      000298 C0 E0            [24] 1058 	push	acc
      00029A 12 03 72         [24] 1059 	lcall	_printf_tiny
      00029D 15 81            [12] 1060 	dec	sp
      00029F 15 81            [12] 1061 	dec	sp
                                   1062 ;	main.c:209: printf_tiny("4 for Set FCLK PERIPH at the maximum frequency supported by the CKRL register\r\n");
      0002A1 74 5E            [12] 1063 	mov	a,#___str_19
      0002A3 C0 E0            [24] 1064 	push	acc
      0002A5 74 06            [12] 1065 	mov	a,#(___str_19 >> 8)
      0002A7 C0 E0            [24] 1066 	push	acc
      0002A9 12 03 72         [24] 1067 	lcall	_printf_tiny
      0002AC 15 81            [12] 1068 	dec	sp
      0002AE 15 81            [12] 1069 	dec	sp
                                   1070 ;	main.c:210: printf_tiny("5 for Enter Idle mode\r\n");
      0002B0 74 AE            [12] 1071 	mov	a,#___str_20
      0002B2 C0 E0            [24] 1072 	push	acc
      0002B4 74 06            [12] 1073 	mov	a,#(___str_20 >> 8)
      0002B6 C0 E0            [24] 1074 	push	acc
      0002B8 12 03 72         [24] 1075 	lcall	_printf_tiny
      0002BB 15 81            [12] 1076 	dec	sp
      0002BD 15 81            [12] 1077 	dec	sp
                                   1078 ;	main.c:211: printf_tiny("6 for Enter Power Down mode\r\n");
      0002BF 74 C6            [12] 1079 	mov	a,#___str_21
      0002C1 C0 E0            [24] 1080 	push	acc
      0002C3 74 06            [12] 1081 	mov	a,#(___str_21 >> 8)
      0002C5 C0 E0            [24] 1082 	push	acc
      0002C7 12 03 72         [24] 1083 	lcall	_printf_tiny
      0002CA 15 81            [12] 1084 	dec	sp
      0002CC 15 81            [12] 1085 	dec	sp
                                   1086 ;	main.c:212: printf_tiny("7 for Enter for High Speed Toggle\r\n");
      0002CE 74 E4            [12] 1087 	mov	a,#___str_22
      0002D0 C0 E0            [24] 1088 	push	acc
      0002D2 74 06            [12] 1089 	mov	a,#(___str_22 >> 8)
      0002D4 C0 E0            [24] 1090 	push	acc
      0002D6 12 03 72         [24] 1091 	lcall	_printf_tiny
      0002D9 15 81            [12] 1092 	dec	sp
      0002DB 15 81            [12] 1093 	dec	sp
                                   1094 ;	main.c:213: printf_tiny("8 for Enter for watchdog timer\r\n");
      0002DD 74 08            [12] 1095 	mov	a,#___str_23
      0002DF C0 E0            [24] 1096 	push	acc
      0002E1 74 07            [12] 1097 	mov	a,#(___str_23 >> 8)
      0002E3 C0 E0            [24] 1098 	push	acc
      0002E5 12 03 72         [24] 1099 	lcall	_printf_tiny
      0002E8 15 81            [12] 1100 	dec	sp
      0002EA 15 81            [12] 1101 	dec	sp
                                   1102 ;	main.c:216: input_char = getchar();
      0002EC 12 00 88         [24] 1103 	lcall	_getchar
      0002EF AE 82            [24] 1104 	mov	r6,dpl
      0002F1 AF 83            [24] 1105 	mov	r7,dph
      0002F3 90 04 00         [24] 1106 	mov	dptr,#_input_char
      0002F6 EE               [12] 1107 	mov	a,r6
      0002F7 F0               [24] 1108 	movx	@dptr,a
      0002F8 EF               [12] 1109 	mov	a,r7
      0002F9 A3               [24] 1110 	inc	dptr
      0002FA F0               [24] 1111 	movx	@dptr,a
                                   1112 ;	main.c:217: putchar(input_char);
      0002FB 8E 82            [24] 1113 	mov	dpl,r6
      0002FD 8F 83            [24] 1114 	mov	dph,r7
      0002FF 12 00 69         [24] 1115 	lcall	_putchar
                                   1116 ;	main.c:219: if (input_char == '1')
      000302 90 04 00         [24] 1117 	mov	dptr,#_input_char
      000305 E0               [24] 1118 	movx	a,@dptr
      000306 FE               [12] 1119 	mov	r6,a
      000307 A3               [24] 1120 	inc	dptr
      000308 E0               [24] 1121 	movx	a,@dptr
      000309 FF               [12] 1122 	mov	r7,a
      00030A BE 31 09         [24] 1123 	cjne	r6,#0x31,00122$
      00030D BF 00 06         [24] 1124 	cjne	r7,#0x00,00122$
                                   1125 ;	main.c:221: run_pwm();
      000310 12 01 5F         [24] 1126 	lcall	_run_pwm
      000313 02 02 65         [24] 1127 	ljmp	00125$
      000316                       1128 00122$:
                                   1129 ;	main.c:223: else if (input_char == '2')
      000316 BE 32 09         [24] 1130 	cjne	r6,#0x32,00119$
      000319 BF 00 06         [24] 1131 	cjne	r7,#0x00,00119$
                                   1132 ;	main.c:225: stop_pwm();
      00031C 12 01 84         [24] 1133 	lcall	_stop_pwm
      00031F 02 02 65         [24] 1134 	ljmp	00125$
      000322                       1135 00119$:
                                   1136 ;	main.c:227: else if (input_char == '3')
      000322 BE 33 09         [24] 1137 	cjne	r6,#0x33,00116$
      000325 BF 00 06         [24] 1138 	cjne	r7,#0x00,00116$
                                   1139 ;	main.c:229: min_freq();
      000328 12 01 99         [24] 1140 	lcall	_min_freq
      00032B 02 02 65         [24] 1141 	ljmp	00125$
      00032E                       1142 00116$:
                                   1143 ;	main.c:231: else if (input_char == '4')
      00032E BE 34 09         [24] 1144 	cjne	r6,#0x34,00113$
      000331 BF 00 06         [24] 1145 	cjne	r7,#0x00,00113$
                                   1146 ;	main.c:233: max_freq();
      000334 12 01 AC         [24] 1147 	lcall	_max_freq
      000337 02 02 65         [24] 1148 	ljmp	00125$
      00033A                       1149 00113$:
                                   1150 ;	main.c:235: else if (input_char == '5')
      00033A BE 35 09         [24] 1151 	cjne	r6,#0x35,00110$
      00033D BF 00 06         [24] 1152 	cjne	r7,#0x00,00110$
                                   1153 ;	main.c:237: idle_mode();
      000340 12 01 BF         [24] 1154 	lcall	_idle_mode
      000343 02 02 65         [24] 1155 	ljmp	00125$
      000346                       1156 00110$:
                                   1157 ;	main.c:239: else if (input_char == '6')
      000346 BE 36 09         [24] 1158 	cjne	r6,#0x36,00107$
      000349 BF 00 06         [24] 1159 	cjne	r7,#0x00,00107$
                                   1160 ;	main.c:241: power_down_mode();
      00034C 12 01 D2         [24] 1161 	lcall	_power_down_mode
      00034F 02 02 65         [24] 1162 	ljmp	00125$
      000352                       1163 00107$:
                                   1164 ;	main.c:243: else if (input_char == '7')
      000352 BE 37 09         [24] 1165 	cjne	r6,#0x37,00104$
      000355 BF 00 06         [24] 1166 	cjne	r7,#0x00,00104$
                                   1167 ;	main.c:245: high_speed_toggle();
      000358 12 01 E5         [24] 1168 	lcall	_high_speed_toggle
      00035B 02 02 65         [24] 1169 	ljmp	00125$
      00035E                       1170 00104$:
                                   1171 ;	main.c:247: else if (input_char == '8')
      00035E BE 38 05         [24] 1172 	cjne	r6,#0x38,00179$
      000361 BF 00 02         [24] 1173 	cjne	r7,#0x00,00179$
      000364 80 03            [24] 1174 	sjmp	00180$
      000366                       1175 00179$:
      000366 02 02 65         [24] 1176 	ljmp	00125$
      000369                       1177 00180$:
                                   1178 ;	main.c:249: watchdog_switch();
      000369 12 02 04         [24] 1179 	lcall	_watchdog_switch
                                   1180 ;	main.c:250: watchdog();
      00036C 12 02 40         [24] 1181 	lcall	_watchdog
                                   1182 ;	main.c:255: }
      00036F 02 02 65         [24] 1183 	ljmp	00125$
                                   1184 	.area CSEG    (CODE)
                                   1185 	.area CONST   (CODE)
                                   1186 	.area CONST   (CODE)
      000497                       1187 ___str_0:
      000497 45 6E 74 65 72 20 61  1188 	.ascii "Enter a value btw 1 and 6 "
             20 76 61 6C 75 65 20
             62 74 77 20 31 20 61
             6E 64 20 36 20
      0004B1 0D                    1189 	.db 0x0d
      0004B2 0A                    1190 	.db 0x0a
      0004B3 00                    1191 	.db 0x00
                                   1192 	.area CSEG    (CODE)
                                   1193 	.area CONST   (CODE)
      0004B4                       1194 ___str_1:
      0004B4 61 3D 20 25 64        1195 	.ascii "a= %d"
      0004B9 0D                    1196 	.db 0x0d
      0004BA 0A                    1197 	.db 0x0a
      0004BB 00                    1198 	.db 0x00
                                   1199 	.area CSEG    (CODE)
                                   1200 	.area CONST   (CODE)
      0004BC                       1201 ___str_2:
      0004BC 6E 75 6D 62 65 72 20  1202 	.ascii "number = %d"
             3D 20 25 64
      0004C7 0A                    1203 	.db 0x0a
      0004C8 0D                    1204 	.db 0x0d
      0004C9 00                    1205 	.db 0x00
                                   1206 	.area CSEG    (CODE)
                                   1207 	.area CONST   (CODE)
      0004CA                       1208 ___str_3:
      0004CA 76 61 6C 69 64 20 69  1209 	.ascii "valid input"
             6E 70 75 74
      0004D5 0D                    1210 	.db 0x0d
      0004D6 0A                    1211 	.db 0x0a
      0004D7 00                    1212 	.db 0x00
                                   1213 	.area CSEG    (CODE)
                                   1214 	.area CONST   (CODE)
      0004D8                       1215 ___str_4:
      0004D8 6E 75 6D 3D 20 25 64  1216 	.ascii "num= %d"
      0004DF 00                    1217 	.db 0x00
                                   1218 	.area CSEG    (CODE)
                                   1219 	.area CONST   (CODE)
      0004E0                       1220 ___str_5:
      0004E0 6E 6F 74 20 61 20 76  1221 	.ascii "not a valid input"
             61 6C 69 64 20 69 6E
             70 75 74
      0004F1 0D                    1222 	.db 0x0d
      0004F2 0A                    1223 	.db 0x0a
      0004F3 00                    1224 	.db 0x00
                                   1225 	.area CSEG    (CODE)
                                   1226 	.area CONST   (CODE)
      0004F4                       1227 ___str_6:
      0004F4 52 75 6E 6E 69 6E 67  1228 	.ascii "Running PWM"
             20 50 57 4D
      0004FF 0D                    1229 	.db 0x0d
      000500 0A                    1230 	.db 0x0a
      000501 00                    1231 	.db 0x00
                                   1232 	.area CSEG    (CODE)
                                   1233 	.area CONST   (CODE)
      000502                       1234 ___str_7:
      000502 53 74 6F 70 70 69 6E  1235 	.ascii "Stopping the PWM"
             67 20 74 68 65 20 50
             57 4D
      000512 0D                    1236 	.db 0x0d
      000513 0A                    1237 	.db 0x0a
      000514 00                    1238 	.db 0x00
                                   1239 	.area CSEG    (CODE)
                                   1240 	.area CONST   (CODE)
      000515                       1241 ___str_8:
      000515 67 6F 69 6E 67 20 74  1242 	.ascii "going to minimum frequency"
             6F 20 6D 69 6E 69 6D
             75 6D 20 66 72 65 71
             75 65 6E 63 79
      00052F 0D                    1243 	.db 0x0d
      000530 0A                    1244 	.db 0x0a
      000531 00                    1245 	.db 0x00
                                   1246 	.area CSEG    (CODE)
                                   1247 	.area CONST   (CODE)
      000532                       1248 ___str_9:
      000532 67 6F 69 6E 67 20 74  1249 	.ascii "going to maximum frequency"
             6F 20 6D 61 78 69 6D
             75 6D 20 66 72 65 71
             75 65 6E 63 79
      00054C 0D                    1250 	.db 0x0d
      00054D 0A                    1251 	.db 0x0a
      00054E 00                    1252 	.db 0x00
                                   1253 	.area CSEG    (CODE)
                                   1254 	.area CONST   (CODE)
      00054F                       1255 ___str_10:
      00054F 67 6F 69 6E 67 20 74  1256 	.ascii "going to idle mode"
             6F 20 69 64 6C 65 20
             6D 6F 64 65
      000561 0D                    1257 	.db 0x0d
      000562 0A                    1258 	.db 0x0a
      000563 00                    1259 	.db 0x00
                                   1260 	.area CSEG    (CODE)
                                   1261 	.area CONST   (CODE)
      000564                       1262 ___str_11:
      000564 67 6F 69 6E 67 20 74  1263 	.ascii "going to power down mode"
             6F 20 70 6F 77 65 72
             20 64 6F 77 6E 20 6D
             6F 64 65
      00057C 0D                    1264 	.db 0x0d
      00057D 0A                    1265 	.db 0x0a
      00057E 00                    1266 	.db 0x00
                                   1267 	.area CSEG    (CODE)
                                   1268 	.area CONST   (CODE)
      00057F                       1269 ___str_12:
      00057F 68 69 67 68 20 73 70  1270 	.ascii "high speed"
             65 65 64
      000589 0D                    1271 	.db 0x0d
      00058A 0A                    1272 	.db 0x0a
      00058B 00                    1273 	.db 0x00
                                   1274 	.area CSEG    (CODE)
                                   1275 	.area CONST   (CODE)
      00058C                       1276 ___str_13:
      00058C 77 61 74 63 68 64 6F  1277 	.ascii "watchdog_on"
             67 5F 6F 6E
      000597 00                    1278 	.db 0x00
                                   1279 	.area CSEG    (CODE)
                                   1280 	.area CONST   (CODE)
      000598                       1281 ___str_14:
      000598 77 61 74 63 68 64 6F  1282 	.ascii "watchdog_off"
             67 5F 6F 66 66
      0005A4 00                    1283 	.db 0x00
                                   1284 	.area CSEG    (CODE)
                                   1285 	.area CONST   (CODE)
      0005A5                       1286 ___str_15:
      0005A5 2A 2A 2A 2A 2A 2A 2A  1287 	.ascii "*************USER MENU for LAB 3 Part 3*******************"
             2A 2A 2A 2A 2A 2A 55
             53 45 52 20 4D 45 4E
             55 20 66 6F 72 20 4C
             41 42 20 33 20 50 61
             72 74 20 33 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A
      0005DF 0D                    1288 	.db 0x0d
      0005E0 0A                    1289 	.db 0x0a
      0005E1 00                    1290 	.db 0x00
                                   1291 	.area CSEG    (CODE)
                                   1292 	.area CONST   (CODE)
      0005E2                       1293 ___str_16:
      0005E2 31 20 66 6F 72 20 72  1294 	.ascii "1 for run PWM mode"
             75 6E 20 50 57 4D 20
             6D 6F 64 65
      0005F4 0D                    1295 	.db 0x0d
      0005F5 0A                    1296 	.db 0x0a
      0005F6 00                    1297 	.db 0x00
                                   1298 	.area CSEG    (CODE)
                                   1299 	.area CONST   (CODE)
      0005F7                       1300 ___str_17:
      0005F7 32 20 66 6F 72 20 73  1301 	.ascii "2 for stop PWM mode"
             74 6F 70 20 50 57 4D
             20 6D 6F 64 65
      00060A 0D                    1302 	.db 0x0d
      00060B 0A                    1303 	.db 0x0a
      00060C 00                    1304 	.db 0x00
                                   1305 	.area CSEG    (CODE)
                                   1306 	.area CONST   (CODE)
      00060D                       1307 ___str_18:
      00060D 33 20 66 6F 72 53 65  1308 	.ascii "3 forSet FCLK PERIPH at the minimum frequency supported by t"
             74 20 46 43 4C 4B 20
             50 45 52 49 50 48 20
             61 74 20 74 68 65 20
             6D 69 6E 69 6D 75 6D
             20 66 72 65 71 75 65
             6E 63 79 20 73 75 70
             70 6F 72 74 65 64 20
             62 79 20 74
      000649 68 65 20 43 4B 52 4C  1309 	.ascii "he CKRL register  "
             20 72 65 67 69 73 74
             65 72 20 20
      00065B 0D                    1310 	.db 0x0d
      00065C 0A                    1311 	.db 0x0a
      00065D 00                    1312 	.db 0x00
                                   1313 	.area CSEG    (CODE)
                                   1314 	.area CONST   (CODE)
      00065E                       1315 ___str_19:
      00065E 34 20 66 6F 72 20 53  1316 	.ascii "4 for Set FCLK PERIPH at the maximum frequency supported by "
             65 74 20 46 43 4C 4B
             20 50 45 52 49 50 48
             20 61 74 20 74 68 65
             20 6D 61 78 69 6D 75
             6D 20 66 72 65 71 75
             65 6E 63 79 20 73 75
             70 70 6F 72 74 65 64
             20 62 79 20
      00069A 74 68 65 20 43 4B 52  1317 	.ascii "the CKRL register"
             4C 20 72 65 67 69 73
             74 65 72
      0006AB 0D                    1318 	.db 0x0d
      0006AC 0A                    1319 	.db 0x0a
      0006AD 00                    1320 	.db 0x00
                                   1321 	.area CSEG    (CODE)
                                   1322 	.area CONST   (CODE)
      0006AE                       1323 ___str_20:
      0006AE 35 20 66 6F 72 20 45  1324 	.ascii "5 for Enter Idle mode"
             6E 74 65 72 20 49 64
             6C 65 20 6D 6F 64 65
      0006C3 0D                    1325 	.db 0x0d
      0006C4 0A                    1326 	.db 0x0a
      0006C5 00                    1327 	.db 0x00
                                   1328 	.area CSEG    (CODE)
                                   1329 	.area CONST   (CODE)
      0006C6                       1330 ___str_21:
      0006C6 36 20 66 6F 72 20 45  1331 	.ascii "6 for Enter Power Down mode"
             6E 74 65 72 20 50 6F
             77 65 72 20 44 6F 77
             6E 20 6D 6F 64 65
      0006E1 0D                    1332 	.db 0x0d
      0006E2 0A                    1333 	.db 0x0a
      0006E3 00                    1334 	.db 0x00
                                   1335 	.area CSEG    (CODE)
                                   1336 	.area CONST   (CODE)
      0006E4                       1337 ___str_22:
      0006E4 37 20 66 6F 72 20 45  1338 	.ascii "7 for Enter for High Speed Toggle"
             6E 74 65 72 20 66 6F
             72 20 48 69 67 68 20
             53 70 65 65 64 20 54
             6F 67 67 6C 65
      000705 0D                    1339 	.db 0x0d
      000706 0A                    1340 	.db 0x0a
      000707 00                    1341 	.db 0x00
                                   1342 	.area CSEG    (CODE)
                                   1343 	.area CONST   (CODE)
      000708                       1344 ___str_23:
      000708 38 20 66 6F 72 20 45  1345 	.ascii "8 for Enter for watchdog timer"
             6E 74 65 72 20 66 6F
             72 20 77 61 74 63 68
             64 6F 67 20 74 69 6D
             65 72
      000726 0D                    1346 	.db 0x0d
      000727 0A                    1347 	.db 0x0a
      000728 00                    1348 	.db 0x00
                                   1349 	.area CSEG    (CODE)
                                   1350 	.area XINIT   (CODE)
                                   1351 	.area CABS    (ABS,CODE)
