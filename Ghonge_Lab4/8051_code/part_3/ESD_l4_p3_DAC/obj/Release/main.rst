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
                                     12 	.globl _spi_send_data
                                     13 	.globl _delay
                                     14 	.globl __sdcc_external_startup
                                     15 	.globl _printf
                                     16 	.globl _P5_7
                                     17 	.globl _P5_6
                                     18 	.globl _P5_5
                                     19 	.globl _P5_4
                                     20 	.globl _P5_3
                                     21 	.globl _P5_2
                                     22 	.globl _P5_1
                                     23 	.globl _P5_0
                                     24 	.globl _P4_7
                                     25 	.globl _P4_6
                                     26 	.globl _P4_5
                                     27 	.globl _P4_4
                                     28 	.globl _P4_3
                                     29 	.globl _P4_2
                                     30 	.globl _P4_1
                                     31 	.globl _P4_0
                                     32 	.globl _PX0L
                                     33 	.globl _PT0L
                                     34 	.globl _PX1L
                                     35 	.globl _PT1L
                                     36 	.globl _PSL
                                     37 	.globl _PT2L
                                     38 	.globl _PPCL
                                     39 	.globl _EC
                                     40 	.globl _CCF0
                                     41 	.globl _CCF1
                                     42 	.globl _CCF2
                                     43 	.globl _CCF3
                                     44 	.globl _CCF4
                                     45 	.globl _CR
                                     46 	.globl _CF
                                     47 	.globl _TF2
                                     48 	.globl _EXF2
                                     49 	.globl _RCLK
                                     50 	.globl _TCLK
                                     51 	.globl _EXEN2
                                     52 	.globl _TR2
                                     53 	.globl _C_T2
                                     54 	.globl _CP_RL2
                                     55 	.globl _T2CON_7
                                     56 	.globl _T2CON_6
                                     57 	.globl _T2CON_5
                                     58 	.globl _T2CON_4
                                     59 	.globl _T2CON_3
                                     60 	.globl _T2CON_2
                                     61 	.globl _T2CON_1
                                     62 	.globl _T2CON_0
                                     63 	.globl _PT2
                                     64 	.globl _ET2
                                     65 	.globl _CY
                                     66 	.globl _AC
                                     67 	.globl _F0
                                     68 	.globl _RS1
                                     69 	.globl _RS0
                                     70 	.globl _OV
                                     71 	.globl _F1
                                     72 	.globl _P
                                     73 	.globl _PS
                                     74 	.globl _PT1
                                     75 	.globl _PX1
                                     76 	.globl _PT0
                                     77 	.globl _PX0
                                     78 	.globl _RD
                                     79 	.globl _WR
                                     80 	.globl _T1
                                     81 	.globl _T0
                                     82 	.globl _INT1
                                     83 	.globl _INT0
                                     84 	.globl _TXD
                                     85 	.globl _RXD
                                     86 	.globl _P3_7
                                     87 	.globl _P3_6
                                     88 	.globl _P3_5
                                     89 	.globl _P3_4
                                     90 	.globl _P3_3
                                     91 	.globl _P3_2
                                     92 	.globl _P3_1
                                     93 	.globl _P3_0
                                     94 	.globl _EA
                                     95 	.globl _ES
                                     96 	.globl _ET1
                                     97 	.globl _EX1
                                     98 	.globl _ET0
                                     99 	.globl _EX0
                                    100 	.globl _P2_7
                                    101 	.globl _P2_6
                                    102 	.globl _P2_5
                                    103 	.globl _P2_4
                                    104 	.globl _P2_3
                                    105 	.globl _P2_2
                                    106 	.globl _P2_1
                                    107 	.globl _P2_0
                                    108 	.globl _SM0
                                    109 	.globl _SM1
                                    110 	.globl _SM2
                                    111 	.globl _REN
                                    112 	.globl _TB8
                                    113 	.globl _RB8
                                    114 	.globl _TI
                                    115 	.globl _RI
                                    116 	.globl _P1_7
                                    117 	.globl _P1_6
                                    118 	.globl _P1_5
                                    119 	.globl _P1_4
                                    120 	.globl _P1_3
                                    121 	.globl _P1_2
                                    122 	.globl _P1_1
                                    123 	.globl _P1_0
                                    124 	.globl _TF1
                                    125 	.globl _TR1
                                    126 	.globl _TF0
                                    127 	.globl _TR0
                                    128 	.globl _IE1
                                    129 	.globl _IT1
                                    130 	.globl _IE0
                                    131 	.globl _IT0
                                    132 	.globl _P0_7
                                    133 	.globl _P0_6
                                    134 	.globl _P0_5
                                    135 	.globl _P0_4
                                    136 	.globl _P0_3
                                    137 	.globl _P0_2
                                    138 	.globl _P0_1
                                    139 	.globl _P0_0
                                    140 	.globl _EECON
                                    141 	.globl _KBF
                                    142 	.globl _KBE
                                    143 	.globl _KBLS
                                    144 	.globl _BRL
                                    145 	.globl _BDRCON
                                    146 	.globl _T2MOD
                                    147 	.globl _SPDAT
                                    148 	.globl _SPSTA
                                    149 	.globl _SPCON
                                    150 	.globl _SADEN
                                    151 	.globl _SADDR
                                    152 	.globl _WDTPRG
                                    153 	.globl _WDTRST
                                    154 	.globl _P5
                                    155 	.globl _P4
                                    156 	.globl _IPH1
                                    157 	.globl _IPL1
                                    158 	.globl _IPH0
                                    159 	.globl _IPL0
                                    160 	.globl _IEN1
                                    161 	.globl _IEN0
                                    162 	.globl _CMOD
                                    163 	.globl _CL
                                    164 	.globl _CH
                                    165 	.globl _CCON
                                    166 	.globl _CCAPM4
                                    167 	.globl _CCAPM3
                                    168 	.globl _CCAPM2
                                    169 	.globl _CCAPM1
                                    170 	.globl _CCAPM0
                                    171 	.globl _CCAP4L
                                    172 	.globl _CCAP3L
                                    173 	.globl _CCAP2L
                                    174 	.globl _CCAP1L
                                    175 	.globl _CCAP0L
                                    176 	.globl _CCAP4H
                                    177 	.globl _CCAP3H
                                    178 	.globl _CCAP2H
                                    179 	.globl _CCAP1H
                                    180 	.globl _CCAP0H
                                    181 	.globl _CKCON1
                                    182 	.globl _CKCON0
                                    183 	.globl _CKRL
                                    184 	.globl _AUXR1
                                    185 	.globl _AUXR
                                    186 	.globl _TH2
                                    187 	.globl _TL2
                                    188 	.globl _RCAP2H
                                    189 	.globl _RCAP2L
                                    190 	.globl _T2CON
                                    191 	.globl _B
                                    192 	.globl _ACC
                                    193 	.globl _PSW
                                    194 	.globl _IP
                                    195 	.globl _P3
                                    196 	.globl _IE
                                    197 	.globl _P2
                                    198 	.globl _SBUF
                                    199 	.globl _SCON
                                    200 	.globl _P1
                                    201 	.globl _TH1
                                    202 	.globl _TH0
                                    203 	.globl _TL1
                                    204 	.globl _TL0
                                    205 	.globl _TMOD
                                    206 	.globl _TCON
                                    207 	.globl _PCON
                                    208 	.globl _DPH
                                    209 	.globl _DPL
                                    210 	.globl _SP
                                    211 	.globl _P0
                                    212 	.globl _putchar
                                    213 	.globl _getchar
                                    214 ;--------------------------------------------------------
                                    215 ; special function registers
                                    216 ;--------------------------------------------------------
                                    217 	.area RSEG    (ABS,DATA)
      000000                        218 	.org 0x0000
                           000080   219 _P0	=	0x0080
                           000081   220 _SP	=	0x0081
                           000082   221 _DPL	=	0x0082
                           000083   222 _DPH	=	0x0083
                           000087   223 _PCON	=	0x0087
                           000088   224 _TCON	=	0x0088
                           000089   225 _TMOD	=	0x0089
                           00008A   226 _TL0	=	0x008a
                           00008B   227 _TL1	=	0x008b
                           00008C   228 _TH0	=	0x008c
                           00008D   229 _TH1	=	0x008d
                           000090   230 _P1	=	0x0090
                           000098   231 _SCON	=	0x0098
                           000099   232 _SBUF	=	0x0099
                           0000A0   233 _P2	=	0x00a0
                           0000A8   234 _IE	=	0x00a8
                           0000B0   235 _P3	=	0x00b0
                           0000B8   236 _IP	=	0x00b8
                           0000D0   237 _PSW	=	0x00d0
                           0000E0   238 _ACC	=	0x00e0
                           0000F0   239 _B	=	0x00f0
                           0000C8   240 _T2CON	=	0x00c8
                           0000CA   241 _RCAP2L	=	0x00ca
                           0000CB   242 _RCAP2H	=	0x00cb
                           0000CC   243 _TL2	=	0x00cc
                           0000CD   244 _TH2	=	0x00cd
                           00008E   245 _AUXR	=	0x008e
                           0000A2   246 _AUXR1	=	0x00a2
                           000097   247 _CKRL	=	0x0097
                           00008F   248 _CKCON0	=	0x008f
                           0000AF   249 _CKCON1	=	0x00af
                           0000FA   250 _CCAP0H	=	0x00fa
                           0000FB   251 _CCAP1H	=	0x00fb
                           0000FC   252 _CCAP2H	=	0x00fc
                           0000FD   253 _CCAP3H	=	0x00fd
                           0000FE   254 _CCAP4H	=	0x00fe
                           0000EA   255 _CCAP0L	=	0x00ea
                           0000EB   256 _CCAP1L	=	0x00eb
                           0000EC   257 _CCAP2L	=	0x00ec
                           0000ED   258 _CCAP3L	=	0x00ed
                           0000EE   259 _CCAP4L	=	0x00ee
                           0000DA   260 _CCAPM0	=	0x00da
                           0000DB   261 _CCAPM1	=	0x00db
                           0000DC   262 _CCAPM2	=	0x00dc
                           0000DD   263 _CCAPM3	=	0x00dd
                           0000DE   264 _CCAPM4	=	0x00de
                           0000D8   265 _CCON	=	0x00d8
                           0000F9   266 _CH	=	0x00f9
                           0000E9   267 _CL	=	0x00e9
                           0000D9   268 _CMOD	=	0x00d9
                           0000A8   269 _IEN0	=	0x00a8
                           0000B1   270 _IEN1	=	0x00b1
                           0000B8   271 _IPL0	=	0x00b8
                           0000B7   272 _IPH0	=	0x00b7
                           0000B2   273 _IPL1	=	0x00b2
                           0000B3   274 _IPH1	=	0x00b3
                           0000C0   275 _P4	=	0x00c0
                           0000E8   276 _P5	=	0x00e8
                           0000A6   277 _WDTRST	=	0x00a6
                           0000A7   278 _WDTPRG	=	0x00a7
                           0000A9   279 _SADDR	=	0x00a9
                           0000B9   280 _SADEN	=	0x00b9
                           0000C3   281 _SPCON	=	0x00c3
                           0000C4   282 _SPSTA	=	0x00c4
                           0000C5   283 _SPDAT	=	0x00c5
                           0000C9   284 _T2MOD	=	0x00c9
                           00009B   285 _BDRCON	=	0x009b
                           00009A   286 _BRL	=	0x009a
                           00009C   287 _KBLS	=	0x009c
                           00009D   288 _KBE	=	0x009d
                           00009E   289 _KBF	=	0x009e
                           0000D2   290 _EECON	=	0x00d2
                                    291 ;--------------------------------------------------------
                                    292 ; special function bits
                                    293 ;--------------------------------------------------------
                                    294 	.area RSEG    (ABS,DATA)
      000000                        295 	.org 0x0000
                           000080   296 _P0_0	=	0x0080
                           000081   297 _P0_1	=	0x0081
                           000082   298 _P0_2	=	0x0082
                           000083   299 _P0_3	=	0x0083
                           000084   300 _P0_4	=	0x0084
                           000085   301 _P0_5	=	0x0085
                           000086   302 _P0_6	=	0x0086
                           000087   303 _P0_7	=	0x0087
                           000088   304 _IT0	=	0x0088
                           000089   305 _IE0	=	0x0089
                           00008A   306 _IT1	=	0x008a
                           00008B   307 _IE1	=	0x008b
                           00008C   308 _TR0	=	0x008c
                           00008D   309 _TF0	=	0x008d
                           00008E   310 _TR1	=	0x008e
                           00008F   311 _TF1	=	0x008f
                           000090   312 _P1_0	=	0x0090
                           000091   313 _P1_1	=	0x0091
                           000092   314 _P1_2	=	0x0092
                           000093   315 _P1_3	=	0x0093
                           000094   316 _P1_4	=	0x0094
                           000095   317 _P1_5	=	0x0095
                           000096   318 _P1_6	=	0x0096
                           000097   319 _P1_7	=	0x0097
                           000098   320 _RI	=	0x0098
                           000099   321 _TI	=	0x0099
                           00009A   322 _RB8	=	0x009a
                           00009B   323 _TB8	=	0x009b
                           00009C   324 _REN	=	0x009c
                           00009D   325 _SM2	=	0x009d
                           00009E   326 _SM1	=	0x009e
                           00009F   327 _SM0	=	0x009f
                           0000A0   328 _P2_0	=	0x00a0
                           0000A1   329 _P2_1	=	0x00a1
                           0000A2   330 _P2_2	=	0x00a2
                           0000A3   331 _P2_3	=	0x00a3
                           0000A4   332 _P2_4	=	0x00a4
                           0000A5   333 _P2_5	=	0x00a5
                           0000A6   334 _P2_6	=	0x00a6
                           0000A7   335 _P2_7	=	0x00a7
                           0000A8   336 _EX0	=	0x00a8
                           0000A9   337 _ET0	=	0x00a9
                           0000AA   338 _EX1	=	0x00aa
                           0000AB   339 _ET1	=	0x00ab
                           0000AC   340 _ES	=	0x00ac
                           0000AF   341 _EA	=	0x00af
                           0000B0   342 _P3_0	=	0x00b0
                           0000B1   343 _P3_1	=	0x00b1
                           0000B2   344 _P3_2	=	0x00b2
                           0000B3   345 _P3_3	=	0x00b3
                           0000B4   346 _P3_4	=	0x00b4
                           0000B5   347 _P3_5	=	0x00b5
                           0000B6   348 _P3_6	=	0x00b6
                           0000B7   349 _P3_7	=	0x00b7
                           0000B0   350 _RXD	=	0x00b0
                           0000B1   351 _TXD	=	0x00b1
                           0000B2   352 _INT0	=	0x00b2
                           0000B3   353 _INT1	=	0x00b3
                           0000B4   354 _T0	=	0x00b4
                           0000B5   355 _T1	=	0x00b5
                           0000B6   356 _WR	=	0x00b6
                           0000B7   357 _RD	=	0x00b7
                           0000B8   358 _PX0	=	0x00b8
                           0000B9   359 _PT0	=	0x00b9
                           0000BA   360 _PX1	=	0x00ba
                           0000BB   361 _PT1	=	0x00bb
                           0000BC   362 _PS	=	0x00bc
                           0000D0   363 _P	=	0x00d0
                           0000D1   364 _F1	=	0x00d1
                           0000D2   365 _OV	=	0x00d2
                           0000D3   366 _RS0	=	0x00d3
                           0000D4   367 _RS1	=	0x00d4
                           0000D5   368 _F0	=	0x00d5
                           0000D6   369 _AC	=	0x00d6
                           0000D7   370 _CY	=	0x00d7
                           0000AD   371 _ET2	=	0x00ad
                           0000BD   372 _PT2	=	0x00bd
                           0000C8   373 _T2CON_0	=	0x00c8
                           0000C9   374 _T2CON_1	=	0x00c9
                           0000CA   375 _T2CON_2	=	0x00ca
                           0000CB   376 _T2CON_3	=	0x00cb
                           0000CC   377 _T2CON_4	=	0x00cc
                           0000CD   378 _T2CON_5	=	0x00cd
                           0000CE   379 _T2CON_6	=	0x00ce
                           0000CF   380 _T2CON_7	=	0x00cf
                           0000C8   381 _CP_RL2	=	0x00c8
                           0000C9   382 _C_T2	=	0x00c9
                           0000CA   383 _TR2	=	0x00ca
                           0000CB   384 _EXEN2	=	0x00cb
                           0000CC   385 _TCLK	=	0x00cc
                           0000CD   386 _RCLK	=	0x00cd
                           0000CE   387 _EXF2	=	0x00ce
                           0000CF   388 _TF2	=	0x00cf
                           0000DF   389 _CF	=	0x00df
                           0000DE   390 _CR	=	0x00de
                           0000DC   391 _CCF4	=	0x00dc
                           0000DB   392 _CCF3	=	0x00db
                           0000DA   393 _CCF2	=	0x00da
                           0000D9   394 _CCF1	=	0x00d9
                           0000D8   395 _CCF0	=	0x00d8
                           0000AE   396 _EC	=	0x00ae
                           0000BE   397 _PPCL	=	0x00be
                           0000BD   398 _PT2L	=	0x00bd
                           0000BC   399 _PSL	=	0x00bc
                           0000BB   400 _PT1L	=	0x00bb
                           0000BA   401 _PX1L	=	0x00ba
                           0000B9   402 _PT0L	=	0x00b9
                           0000B8   403 _PX0L	=	0x00b8
                           0000C0   404 _P4_0	=	0x00c0
                           0000C1   405 _P4_1	=	0x00c1
                           0000C2   406 _P4_2	=	0x00c2
                           0000C3   407 _P4_3	=	0x00c3
                           0000C4   408 _P4_4	=	0x00c4
                           0000C5   409 _P4_5	=	0x00c5
                           0000C6   410 _P4_6	=	0x00c6
                           0000C7   411 _P4_7	=	0x00c7
                           0000E8   412 _P5_0	=	0x00e8
                           0000E9   413 _P5_1	=	0x00e9
                           0000EA   414 _P5_2	=	0x00ea
                           0000EB   415 _P5_3	=	0x00eb
                           0000EC   416 _P5_4	=	0x00ec
                           0000ED   417 _P5_5	=	0x00ed
                           0000EE   418 _P5_6	=	0x00ee
                           0000EF   419 _P5_7	=	0x00ef
                                    420 ;--------------------------------------------------------
                                    421 ; overlayable register banks
                                    422 ;--------------------------------------------------------
                                    423 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        424 	.ds 8
                                    425 ;--------------------------------------------------------
                                    426 ; internal ram data
                                    427 ;--------------------------------------------------------
                                    428 	.area DSEG    (DATA)
                                    429 ;--------------------------------------------------------
                                    430 ; overlayable items in internal ram 
                                    431 ;--------------------------------------------------------
                                    432 ;--------------------------------------------------------
                                    433 ; Stack segment in internal ram 
                                    434 ;--------------------------------------------------------
                                    435 	.area	SSEG
      000014                        436 __start__stack:
      000014                        437 	.ds	1
                                    438 
                                    439 ;--------------------------------------------------------
                                    440 ; indirectly addressable internal ram data
                                    441 ;--------------------------------------------------------
                                    442 	.area ISEG    (DATA)
                                    443 ;--------------------------------------------------------
                                    444 ; absolute internal ram data
                                    445 ;--------------------------------------------------------
                                    446 	.area IABS    (ABS,DATA)
                                    447 	.area IABS    (ABS,DATA)
                                    448 ;--------------------------------------------------------
                                    449 ; bit data
                                    450 ;--------------------------------------------------------
                                    451 	.area BSEG    (BIT)
                                    452 ;--------------------------------------------------------
                                    453 ; paged external ram data
                                    454 ;--------------------------------------------------------
                                    455 	.area PSEG    (PAG,XDATA)
                                    456 ;--------------------------------------------------------
                                    457 ; external ram data
                                    458 ;--------------------------------------------------------
                                    459 	.area XSEG    (XDATA)
      000001                        460 _delay_ms_65536_15:
      000001                        461 	.ds 2
      000003                        462 _putchar_c_65536_21:
      000003                        463 	.ds 2
      000005                        464 _spi_send_data_message_65536_25:
      000005                        465 	.ds 1
                                    466 ;--------------------------------------------------------
                                    467 ; absolute external ram data
                                    468 ;--------------------------------------------------------
                                    469 	.area XABS    (ABS,XDATA)
                                    470 ;--------------------------------------------------------
                                    471 ; external initialized ram data
                                    472 ;--------------------------------------------------------
                                    473 	.area XISEG   (XDATA)
                                    474 	.area HOME    (CODE)
                                    475 	.area GSINIT0 (CODE)
                                    476 	.area GSINIT1 (CODE)
                                    477 	.area GSINIT2 (CODE)
                                    478 	.area GSINIT3 (CODE)
                                    479 	.area GSINIT4 (CODE)
                                    480 	.area GSINIT5 (CODE)
                                    481 	.area GSINIT  (CODE)
                                    482 	.area GSFINAL (CODE)
                                    483 	.area CSEG    (CODE)
                                    484 ;--------------------------------------------------------
                                    485 ; interrupt vector 
                                    486 ;--------------------------------------------------------
                                    487 	.area HOME    (CODE)
      000000                        488 __interrupt_vect:
      000000 02 00 06         [24]  489 	ljmp	__sdcc_gsinit_startup
                                    490 ;--------------------------------------------------------
                                    491 ; global & static initialisations
                                    492 ;--------------------------------------------------------
                                    493 	.area HOME    (CODE)
                                    494 	.area GSINIT  (CODE)
                                    495 	.area GSFINAL (CODE)
                                    496 	.area GSINIT  (CODE)
                                    497 	.globl __sdcc_gsinit_startup
                                    498 	.globl __sdcc_program_startup
                                    499 	.globl __start__stack
                                    500 	.globl __mcs51_genXINIT
                                    501 	.globl __mcs51_genXRAMCLEAR
                                    502 	.globl __mcs51_genRAMCLEAR
                                    503 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  504 	ljmp	__sdcc_program_startup
                                    505 ;--------------------------------------------------------
                                    506 ; Home
                                    507 ;--------------------------------------------------------
                                    508 	.area HOME    (CODE)
                                    509 	.area HOME    (CODE)
      000003                        510 __sdcc_program_startup:
      000003 02 00 E4         [24]  511 	ljmp	_main
                                    512 ;	return from main will return to caller
                                    513 ;--------------------------------------------------------
                                    514 ; code
                                    515 ;--------------------------------------------------------
                                    516 	.area CSEG    (CODE)
                                    517 ;------------------------------------------------------------
                                    518 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    519 ;------------------------------------------------------------
                                    520 ;	main.c:8: _sdcc_external_startup()
                                    521 ;	-----------------------------------------
                                    522 ;	 function _sdcc_external_startup
                                    523 ;	-----------------------------------------
      000062                        524 __sdcc_external_startup:
                           000007   525 	ar7 = 0x07
                           000006   526 	ar6 = 0x06
                           000005   527 	ar5 = 0x05
                           000004   528 	ar4 = 0x04
                           000003   529 	ar3 = 0x03
                           000002   530 	ar2 = 0x02
                           000001   531 	ar1 = 0x01
                           000000   532 	ar0 = 0x00
                                    533 ;	main.c:10: AUXR|=0x0C; //for 1kB memory
      000062 43 8E 0C         [24]  534 	orl	_AUXR,#0x0c
                                    535 ;	main.c:11: return 0;
      000065 90 00 00         [24]  536 	mov	dptr,#0x0000
                                    537 ;	main.c:12: }
      000068 22               [24]  538 	ret
                                    539 ;------------------------------------------------------------
                                    540 ;Allocation info for local variables in function 'delay'
                                    541 ;------------------------------------------------------------
                                    542 ;ms                        Allocated with name '_delay_ms_65536_15'
                                    543 ;i                         Allocated with name '_delay_i_131072_17'
                                    544 ;j                         Allocated with name '_delay_j_262144_19'
                                    545 ;------------------------------------------------------------
                                    546 ;	main.c:13: void delay(int ms){
                                    547 ;	-----------------------------------------
                                    548 ;	 function delay
                                    549 ;	-----------------------------------------
      000069                        550 _delay:
      000069 AF 83            [24]  551 	mov	r7,dph
      00006B E5 82            [12]  552 	mov	a,dpl
      00006D 90 00 01         [24]  553 	mov	dptr,#_delay_ms_65536_15
      000070 F0               [24]  554 	movx	@dptr,a
      000071 EF               [12]  555 	mov	a,r7
      000072 A3               [24]  556 	inc	dptr
      000073 F0               [24]  557 	movx	@dptr,a
                                    558 ;	main.c:14: for(int i = 0;i < ms;i++){
      000074 90 00 01         [24]  559 	mov	dptr,#_delay_ms_65536_15
      000077 E0               [24]  560 	movx	a,@dptr
      000078 FE               [12]  561 	mov	r6,a
      000079 A3               [24]  562 	inc	dptr
      00007A E0               [24]  563 	movx	a,@dptr
      00007B FF               [12]  564 	mov	r7,a
      00007C 7C 00            [12]  565 	mov	r4,#0x00
      00007E 7D 00            [12]  566 	mov	r5,#0x00
      000080                        567 00107$:
      000080 C3               [12]  568 	clr	c
      000081 EC               [12]  569 	mov	a,r4
      000082 9E               [12]  570 	subb	a,r6
      000083 ED               [12]  571 	mov	a,r5
      000084 64 80            [12]  572 	xrl	a,#0x80
      000086 8F F0            [24]  573 	mov	b,r7
      000088 63 F0 80         [24]  574 	xrl	b,#0x80
      00008B 95 F0            [12]  575 	subb	a,b
      00008D 50 1D            [24]  576 	jnc	00109$
                                    577 ;	main.c:15: for(int j = 0;j < 100;j++){
      00008F 7A 00            [12]  578 	mov	r2,#0x00
      000091 7B 00            [12]  579 	mov	r3,#0x00
      000093                        580 00104$:
      000093 C3               [12]  581 	clr	c
      000094 EA               [12]  582 	mov	a,r2
      000095 94 64            [12]  583 	subb	a,#0x64
      000097 EB               [12]  584 	mov	a,r3
      000098 64 80            [12]  585 	xrl	a,#0x80
      00009A 94 80            [12]  586 	subb	a,#0x80
      00009C 50 07            [24]  587 	jnc	00108$
      00009E 0A               [12]  588 	inc	r2
      00009F BA 00 F1         [24]  589 	cjne	r2,#0x00,00104$
      0000A2 0B               [12]  590 	inc	r3
      0000A3 80 EE            [24]  591 	sjmp	00104$
      0000A5                        592 00108$:
                                    593 ;	main.c:14: for(int i = 0;i < ms;i++){
      0000A5 0C               [12]  594 	inc	r4
      0000A6 BC 00 D7         [24]  595 	cjne	r4,#0x00,00107$
      0000A9 0D               [12]  596 	inc	r5
      0000AA 80 D4            [24]  597 	sjmp	00107$
      0000AC                        598 00109$:
                                    599 ;	main.c:18: }
      0000AC 22               [24]  600 	ret
                                    601 ;------------------------------------------------------------
                                    602 ;Allocation info for local variables in function 'putchar'
                                    603 ;------------------------------------------------------------
                                    604 ;c                         Allocated with name '_putchar_c_65536_21'
                                    605 ;------------------------------------------------------------
                                    606 ;	main.c:19: int putchar (int c)
                                    607 ;	-----------------------------------------
                                    608 ;	 function putchar
                                    609 ;	-----------------------------------------
      0000AD                        610 _putchar:
      0000AD AF 83            [24]  611 	mov	r7,dph
      0000AF E5 82            [12]  612 	mov	a,dpl
      0000B1 90 00 03         [24]  613 	mov	dptr,#_putchar_c_65536_21
      0000B4 F0               [24]  614 	movx	@dptr,a
      0000B5 EF               [12]  615 	mov	a,r7
      0000B6 A3               [24]  616 	inc	dptr
      0000B7 F0               [24]  617 	movx	@dptr,a
                                    618 ;	main.c:21: while (!TI);
      0000B8                        619 00101$:
      0000B8 30 99 FD         [24]  620 	jnb	_TI,00101$
                                    621 ;	main.c:23: SBUF = c;
      0000BB 90 00 03         [24]  622 	mov	dptr,#_putchar_c_65536_21
      0000BE E0               [24]  623 	movx	a,@dptr
      0000BF FE               [12]  624 	mov	r6,a
      0000C0 A3               [24]  625 	inc	dptr
      0000C1 E0               [24]  626 	movx	a,@dptr
      0000C2 FF               [12]  627 	mov	r7,a
      0000C3 8E 99            [24]  628 	mov	_SBUF,r6
                                    629 ;	main.c:24: TI = 0;
                                    630 ;	assignBit
      0000C5 C2 99            [12]  631 	clr	_TI
                                    632 ;	main.c:26: return c;
      0000C7 8E 82            [24]  633 	mov	dpl,r6
      0000C9 8F 83            [24]  634 	mov	dph,r7
                                    635 ;	main.c:27: }
      0000CB 22               [24]  636 	ret
                                    637 ;------------------------------------------------------------
                                    638 ;Allocation info for local variables in function 'getchar'
                                    639 ;------------------------------------------------------------
                                    640 ;	main.c:28: int getchar (void)
                                    641 ;	-----------------------------------------
                                    642 ;	 function getchar
                                    643 ;	-----------------------------------------
      0000CC                        644 _getchar:
                                    645 ;	main.c:30: while (!RI);
      0000CC                        646 00101$:
                                    647 ;	main.c:32: RI = 0;
                                    648 ;	assignBit
      0000CC 10 98 02         [24]  649 	jbc	_RI,00114$
      0000CF 80 FB            [24]  650 	sjmp	00101$
      0000D1                        651 00114$:
                                    652 ;	main.c:33: return SBUF;
      0000D1 AE 99            [24]  653 	mov	r6,_SBUF
      0000D3 7F 00            [12]  654 	mov	r7,#0x00
      0000D5 8E 82            [24]  655 	mov	dpl,r6
      0000D7 8F 83            [24]  656 	mov	dph,r7
                                    657 ;	main.c:34: }
      0000D9 22               [24]  658 	ret
                                    659 ;------------------------------------------------------------
                                    660 ;Allocation info for local variables in function 'spi_send_data'
                                    661 ;------------------------------------------------------------
                                    662 ;message                   Allocated with name '_spi_send_data_message_65536_25'
                                    663 ;------------------------------------------------------------
                                    664 ;	main.c:41: void spi_send_data(uint8_t message){
                                    665 ;	-----------------------------------------
                                    666 ;	 function spi_send_data
                                    667 ;	-----------------------------------------
      0000DA                        668 _spi_send_data:
      0000DA E5 82            [12]  669 	mov	a,dpl
      0000DC 90 00 05         [24]  670 	mov	dptr,#_spi_send_data_message_65536_25
      0000DF F0               [24]  671 	movx	@dptr,a
                                    672 ;	main.c:42: SPDAT = message;
      0000E0 E0               [24]  673 	movx	a,@dptr
      0000E1 F5 C5            [12]  674 	mov	_SPDAT,a
                                    675 ;	main.c:43: }
      0000E3 22               [24]  676 	ret
                                    677 ;------------------------------------------------------------
                                    678 ;Allocation info for local variables in function 'main'
                                    679 ;------------------------------------------------------------
                                    680 ;message                   Allocated with name '_main_message_65537_28'
                                    681 ;------------------------------------------------------------
                                    682 ;	main.c:44: void main(){
                                    683 ;	-----------------------------------------
                                    684 ;	 function main
                                    685 ;	-----------------------------------------
      0000E4                        686 _main:
                                    687 ;	main.c:45: SPCON = 0xF2;
      0000E4 75 C3 F2         [24]  688 	mov	_SPCON,#0xf2
                                    689 ;	main.c:47: LDAC=1;
                                    690 ;	assignBit
      0000E7 D2 93            [12]  691 	setb	_P1_3
                                    692 ;	main.c:48: CS=0;
                                    693 ;	assignBit
      0000E9 C2 92            [12]  694 	clr	_P1_2
                                    695 ;	main.c:53: spi_send_data(message>>8);
      0000EB 75 82 76         [24]  696 	mov	dpl,#0x76
      0000EE 12 00 DA         [24]  697 	lcall	_spi_send_data
                                    698 ;	main.c:55: delay(1);
      0000F1 90 00 01         [24]  699 	mov	dptr,#0x0001
      0000F4 12 00 69         [24]  700 	lcall	_delay
                                    701 ;	main.c:56: spi_send_data(message);
      0000F7 75 82 40         [24]  702 	mov	dpl,#0x40
      0000FA 12 00 DA         [24]  703 	lcall	_spi_send_data
                                    704 ;	main.c:57: printf("message=%x\n\r",message);
      0000FD 74 40            [12]  705 	mov	a,#0x40
      0000FF C0 E0            [24]  706 	push	acc
      000101 74 76            [12]  707 	mov	a,#0x76
      000103 C0 E0            [24]  708 	push	acc
      000105 74 CA            [12]  709 	mov	a,#___str_0
      000107 C0 E0            [24]  710 	push	acc
      000109 74 0B            [12]  711 	mov	a,#(___str_0 >> 8)
      00010B C0 E0            [24]  712 	push	acc
      00010D 74 80            [12]  713 	mov	a,#0x80
      00010F C0 E0            [24]  714 	push	acc
      000111 12 01 6F         [24]  715 	lcall	_printf
      000114 E5 81            [12]  716 	mov	a,sp
      000116 24 FB            [12]  717 	add	a,#0xfb
      000118 F5 81            [12]  718 	mov	sp,a
                                    719 ;	main.c:58: CS=1;
                                    720 ;	assignBit
      00011A D2 92            [12]  721 	setb	_P1_2
                                    722 ;	main.c:59: LDAC=0;
                                    723 ;	assignBit
      00011C C2 93            [12]  724 	clr	_P1_3
                                    725 ;	main.c:60: LDAC=1;
                                    726 ;	assignBit
      00011E D2 93            [12]  727 	setb	_P1_3
                                    728 ;	main.c:62: }
      000120 22               [24]  729 	ret
                                    730 	.area CSEG    (CODE)
                                    731 	.area CONST   (CODE)
                                    732 	.area CONST   (CODE)
      000BCA                        733 ___str_0:
      000BCA 6D 65 73 73 61 67 65   734 	.ascii "message=%x"
             3D 25 78
      000BD4 0A                     735 	.db 0x0a
      000BD5 0D                     736 	.db 0x0d
      000BD6 00                     737 	.db 0x00
                                    738 	.area CSEG    (CODE)
                                    739 	.area XINIT   (CODE)
                                    740 	.area CABS    (ABS,CODE)
