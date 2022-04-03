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
                                     12 	.globl _del_num
                                     13 	.globl _getinput_30_300
                                     14 	.globl _getinput
                                     15 	.globl __sdcc_external_startup
                                     16 	.globl _free
                                     17 	.globl _malloc
                                     18 	.globl _printf_tiny
                                     19 	.globl _TF1
                                     20 	.globl _TR1
                                     21 	.globl _TF0
                                     22 	.globl _TR0
                                     23 	.globl _IE1
                                     24 	.globl _IT1
                                     25 	.globl _IE0
                                     26 	.globl _IT0
                                     27 	.globl _SM0
                                     28 	.globl _SM1
                                     29 	.globl _SM2
                                     30 	.globl _REN
                                     31 	.globl _TB8
                                     32 	.globl _RB8
                                     33 	.globl _TI
                                     34 	.globl _RI
                                     35 	.globl _CY
                                     36 	.globl _AC
                                     37 	.globl _F0
                                     38 	.globl _RS1
                                     39 	.globl _RS0
                                     40 	.globl _OV
                                     41 	.globl _F1
                                     42 	.globl _P
                                     43 	.globl _RD
                                     44 	.globl _WR
                                     45 	.globl _T1
                                     46 	.globl _T0
                                     47 	.globl _INT1
                                     48 	.globl _INT0
                                     49 	.globl _TXD0
                                     50 	.globl _TXD
                                     51 	.globl _RXD0
                                     52 	.globl _RXD
                                     53 	.globl _P3_7
                                     54 	.globl _P3_6
                                     55 	.globl _P3_5
                                     56 	.globl _P3_4
                                     57 	.globl _P3_3
                                     58 	.globl _P3_2
                                     59 	.globl _P3_1
                                     60 	.globl _P3_0
                                     61 	.globl _P2_7
                                     62 	.globl _P2_6
                                     63 	.globl _P2_5
                                     64 	.globl _P2_4
                                     65 	.globl _P2_3
                                     66 	.globl _P2_2
                                     67 	.globl _P2_1
                                     68 	.globl _P2_0
                                     69 	.globl _P1_7
                                     70 	.globl _P1_6
                                     71 	.globl _P1_5
                                     72 	.globl _P1_4
                                     73 	.globl _P1_3
                                     74 	.globl _P1_2
                                     75 	.globl _P1_1
                                     76 	.globl _P1_0
                                     77 	.globl _P0_7
                                     78 	.globl _P0_6
                                     79 	.globl _P0_5
                                     80 	.globl _P0_4
                                     81 	.globl _P0_3
                                     82 	.globl _P0_2
                                     83 	.globl _P0_1
                                     84 	.globl _P0_0
                                     85 	.globl _PS
                                     86 	.globl _PT1
                                     87 	.globl _PX1
                                     88 	.globl _PT0
                                     89 	.globl _PX0
                                     90 	.globl _EA
                                     91 	.globl _ES
                                     92 	.globl _ET1
                                     93 	.globl _EX1
                                     94 	.globl _ET0
                                     95 	.globl _EX0
                                     96 	.globl _BREG_F7
                                     97 	.globl _BREG_F6
                                     98 	.globl _BREG_F5
                                     99 	.globl _BREG_F4
                                    100 	.globl _BREG_F3
                                    101 	.globl _BREG_F2
                                    102 	.globl _BREG_F1
                                    103 	.globl _BREG_F0
                                    104 	.globl _P5_7
                                    105 	.globl _P5_6
                                    106 	.globl _P5_5
                                    107 	.globl _P5_4
                                    108 	.globl _P5_3
                                    109 	.globl _P5_2
                                    110 	.globl _P5_1
                                    111 	.globl _P5_0
                                    112 	.globl _P4_7
                                    113 	.globl _P4_6
                                    114 	.globl _P4_5
                                    115 	.globl _P4_4
                                    116 	.globl _P4_3
                                    117 	.globl _P4_2
                                    118 	.globl _P4_1
                                    119 	.globl _P4_0
                                    120 	.globl _PX0L
                                    121 	.globl _PT0L
                                    122 	.globl _PX1L
                                    123 	.globl _PT1L
                                    124 	.globl _PSL
                                    125 	.globl _PT2L
                                    126 	.globl _PPCL
                                    127 	.globl _EC
                                    128 	.globl _CCF0
                                    129 	.globl _CCF1
                                    130 	.globl _CCF2
                                    131 	.globl _CCF3
                                    132 	.globl _CCF4
                                    133 	.globl _CR
                                    134 	.globl _CF
                                    135 	.globl _TF2
                                    136 	.globl _EXF2
                                    137 	.globl _RCLK
                                    138 	.globl _TCLK
                                    139 	.globl _EXEN2
                                    140 	.globl _TR2
                                    141 	.globl _C_T2
                                    142 	.globl _CP_RL2
                                    143 	.globl _T2CON_7
                                    144 	.globl _T2CON_6
                                    145 	.globl _T2CON_5
                                    146 	.globl _T2CON_4
                                    147 	.globl _T2CON_3
                                    148 	.globl _T2CON_2
                                    149 	.globl _T2CON_1
                                    150 	.globl _T2CON_0
                                    151 	.globl _PT2
                                    152 	.globl _ET2
                                    153 	.globl _TMOD
                                    154 	.globl _TL1
                                    155 	.globl _TL0
                                    156 	.globl _TH1
                                    157 	.globl _TH0
                                    158 	.globl _TCON
                                    159 	.globl _SP
                                    160 	.globl _SCON
                                    161 	.globl _SBUF0
                                    162 	.globl _SBUF
                                    163 	.globl _PSW
                                    164 	.globl _PCON
                                    165 	.globl _P3
                                    166 	.globl _P2
                                    167 	.globl _P1
                                    168 	.globl _P0
                                    169 	.globl _IP
                                    170 	.globl _IE
                                    171 	.globl _DP0L
                                    172 	.globl _DPL
                                    173 	.globl _DP0H
                                    174 	.globl _DPH
                                    175 	.globl _B
                                    176 	.globl _ACC
                                    177 	.globl _EECON
                                    178 	.globl _KBF
                                    179 	.globl _KBE
                                    180 	.globl _KBLS
                                    181 	.globl _BRL
                                    182 	.globl _BDRCON
                                    183 	.globl _T2MOD
                                    184 	.globl _SPDAT
                                    185 	.globl _SPSTA
                                    186 	.globl _SPCON
                                    187 	.globl _SADEN
                                    188 	.globl _SADDR
                                    189 	.globl _WDTPRG
                                    190 	.globl _WDTRST
                                    191 	.globl _P5
                                    192 	.globl _P4
                                    193 	.globl _IPH1
                                    194 	.globl _IPL1
                                    195 	.globl _IPH0
                                    196 	.globl _IPL0
                                    197 	.globl _IEN1
                                    198 	.globl _IEN0
                                    199 	.globl _CMOD
                                    200 	.globl _CL
                                    201 	.globl _CH
                                    202 	.globl _CCON
                                    203 	.globl _CCAPM4
                                    204 	.globl _CCAPM3
                                    205 	.globl _CCAPM2
                                    206 	.globl _CCAPM1
                                    207 	.globl _CCAPM0
                                    208 	.globl _CCAP4L
                                    209 	.globl _CCAP3L
                                    210 	.globl _CCAP2L
                                    211 	.globl _CCAP1L
                                    212 	.globl _CCAP0L
                                    213 	.globl _CCAP4H
                                    214 	.globl _CCAP3H
                                    215 	.globl _CCAP2H
                                    216 	.globl _CCAP1H
                                    217 	.globl _CCAP0H
                                    218 	.globl _CKCON1
                                    219 	.globl _CKCON0
                                    220 	.globl _CKRL
                                    221 	.globl _AUXR1
                                    222 	.globl _AUXR
                                    223 	.globl _TH2
                                    224 	.globl _TL2
                                    225 	.globl _RCAP2H
                                    226 	.globl _RCAP2L
                                    227 	.globl _T2CON
                                    228 	.globl _i
                                    229 	.globl _total_char
                                    230 	.globl _storage
                                    231 	.globl _num
                                    232 	.globl _input_char
                                    233 	.globl _buffer_1_add
                                    234 	.globl _buffer_0_add
                                    235 	.globl _buffer_n
                                    236 	.globl _buffer_1
                                    237 	.globl _buffer_0
                                    238 	.globl _heap
                                    239 	.globl _putchar
                                    240 	.globl _getchar
                                    241 ;--------------------------------------------------------
                                    242 ; special function registers
                                    243 ;--------------------------------------------------------
                                    244 	.area RSEG    (ABS,DATA)
      000000                        245 	.org 0x0000
                           0000C8   246 _T2CON	=	0x00c8
                           0000CA   247 _RCAP2L	=	0x00ca
                           0000CB   248 _RCAP2H	=	0x00cb
                           0000CC   249 _TL2	=	0x00cc
                           0000CD   250 _TH2	=	0x00cd
                           00008E   251 _AUXR	=	0x008e
                           0000A2   252 _AUXR1	=	0x00a2
                           000097   253 _CKRL	=	0x0097
                           00008F   254 _CKCON0	=	0x008f
                           0000AF   255 _CKCON1	=	0x00af
                           0000FA   256 _CCAP0H	=	0x00fa
                           0000FB   257 _CCAP1H	=	0x00fb
                           0000FC   258 _CCAP2H	=	0x00fc
                           0000FD   259 _CCAP3H	=	0x00fd
                           0000FE   260 _CCAP4H	=	0x00fe
                           0000EA   261 _CCAP0L	=	0x00ea
                           0000EB   262 _CCAP1L	=	0x00eb
                           0000EC   263 _CCAP2L	=	0x00ec
                           0000ED   264 _CCAP3L	=	0x00ed
                           0000EE   265 _CCAP4L	=	0x00ee
                           0000DA   266 _CCAPM0	=	0x00da
                           0000DB   267 _CCAPM1	=	0x00db
                           0000DC   268 _CCAPM2	=	0x00dc
                           0000DD   269 _CCAPM3	=	0x00dd
                           0000DE   270 _CCAPM4	=	0x00de
                           0000D8   271 _CCON	=	0x00d8
                           0000F9   272 _CH	=	0x00f9
                           0000E9   273 _CL	=	0x00e9
                           0000D9   274 _CMOD	=	0x00d9
                           0000A8   275 _IEN0	=	0x00a8
                           0000B1   276 _IEN1	=	0x00b1
                           0000B8   277 _IPL0	=	0x00b8
                           0000B7   278 _IPH0	=	0x00b7
                           0000B2   279 _IPL1	=	0x00b2
                           0000B3   280 _IPH1	=	0x00b3
                           0000C0   281 _P4	=	0x00c0
                           0000E8   282 _P5	=	0x00e8
                           0000A6   283 _WDTRST	=	0x00a6
                           0000A7   284 _WDTPRG	=	0x00a7
                           0000A9   285 _SADDR	=	0x00a9
                           0000B9   286 _SADEN	=	0x00b9
                           0000C3   287 _SPCON	=	0x00c3
                           0000C4   288 _SPSTA	=	0x00c4
                           0000C5   289 _SPDAT	=	0x00c5
                           0000C9   290 _T2MOD	=	0x00c9
                           00009B   291 _BDRCON	=	0x009b
                           00009A   292 _BRL	=	0x009a
                           00009C   293 _KBLS	=	0x009c
                           00009D   294 _KBE	=	0x009d
                           00009E   295 _KBF	=	0x009e
                           0000D2   296 _EECON	=	0x00d2
                           0000E0   297 _ACC	=	0x00e0
                           0000F0   298 _B	=	0x00f0
                           000083   299 _DPH	=	0x0083
                           000083   300 _DP0H	=	0x0083
                           000082   301 _DPL	=	0x0082
                           000082   302 _DP0L	=	0x0082
                           0000A8   303 _IE	=	0x00a8
                           0000B8   304 _IP	=	0x00b8
                           000080   305 _P0	=	0x0080
                           000090   306 _P1	=	0x0090
                           0000A0   307 _P2	=	0x00a0
                           0000B0   308 _P3	=	0x00b0
                           000087   309 _PCON	=	0x0087
                           0000D0   310 _PSW	=	0x00d0
                           000099   311 _SBUF	=	0x0099
                           000099   312 _SBUF0	=	0x0099
                           000098   313 _SCON	=	0x0098
                           000081   314 _SP	=	0x0081
                           000088   315 _TCON	=	0x0088
                           00008C   316 _TH0	=	0x008c
                           00008D   317 _TH1	=	0x008d
                           00008A   318 _TL0	=	0x008a
                           00008B   319 _TL1	=	0x008b
                           000089   320 _TMOD	=	0x0089
                                    321 ;--------------------------------------------------------
                                    322 ; special function bits
                                    323 ;--------------------------------------------------------
                                    324 	.area RSEG    (ABS,DATA)
      000000                        325 	.org 0x0000
                           0000AD   326 _ET2	=	0x00ad
                           0000BD   327 _PT2	=	0x00bd
                           0000C8   328 _T2CON_0	=	0x00c8
                           0000C9   329 _T2CON_1	=	0x00c9
                           0000CA   330 _T2CON_2	=	0x00ca
                           0000CB   331 _T2CON_3	=	0x00cb
                           0000CC   332 _T2CON_4	=	0x00cc
                           0000CD   333 _T2CON_5	=	0x00cd
                           0000CE   334 _T2CON_6	=	0x00ce
                           0000CF   335 _T2CON_7	=	0x00cf
                           0000C8   336 _CP_RL2	=	0x00c8
                           0000C9   337 _C_T2	=	0x00c9
                           0000CA   338 _TR2	=	0x00ca
                           0000CB   339 _EXEN2	=	0x00cb
                           0000CC   340 _TCLK	=	0x00cc
                           0000CD   341 _RCLK	=	0x00cd
                           0000CE   342 _EXF2	=	0x00ce
                           0000CF   343 _TF2	=	0x00cf
                           0000DF   344 _CF	=	0x00df
                           0000DE   345 _CR	=	0x00de
                           0000DC   346 _CCF4	=	0x00dc
                           0000DB   347 _CCF3	=	0x00db
                           0000DA   348 _CCF2	=	0x00da
                           0000D9   349 _CCF1	=	0x00d9
                           0000D8   350 _CCF0	=	0x00d8
                           0000AE   351 _EC	=	0x00ae
                           0000BE   352 _PPCL	=	0x00be
                           0000BD   353 _PT2L	=	0x00bd
                           0000BC   354 _PSL	=	0x00bc
                           0000BB   355 _PT1L	=	0x00bb
                           0000BA   356 _PX1L	=	0x00ba
                           0000B9   357 _PT0L	=	0x00b9
                           0000B8   358 _PX0L	=	0x00b8
                           0000C0   359 _P4_0	=	0x00c0
                           0000C1   360 _P4_1	=	0x00c1
                           0000C2   361 _P4_2	=	0x00c2
                           0000C3   362 _P4_3	=	0x00c3
                           0000C4   363 _P4_4	=	0x00c4
                           0000C5   364 _P4_5	=	0x00c5
                           0000C6   365 _P4_6	=	0x00c6
                           0000C7   366 _P4_7	=	0x00c7
                           0000E8   367 _P5_0	=	0x00e8
                           0000E9   368 _P5_1	=	0x00e9
                           0000EA   369 _P5_2	=	0x00ea
                           0000EB   370 _P5_3	=	0x00eb
                           0000EC   371 _P5_4	=	0x00ec
                           0000ED   372 _P5_5	=	0x00ed
                           0000EE   373 _P5_6	=	0x00ee
                           0000EF   374 _P5_7	=	0x00ef
                           0000F0   375 _BREG_F0	=	0x00f0
                           0000F1   376 _BREG_F1	=	0x00f1
                           0000F2   377 _BREG_F2	=	0x00f2
                           0000F3   378 _BREG_F3	=	0x00f3
                           0000F4   379 _BREG_F4	=	0x00f4
                           0000F5   380 _BREG_F5	=	0x00f5
                           0000F6   381 _BREG_F6	=	0x00f6
                           0000F7   382 _BREG_F7	=	0x00f7
                           0000A8   383 _EX0	=	0x00a8
                           0000A9   384 _ET0	=	0x00a9
                           0000AA   385 _EX1	=	0x00aa
                           0000AB   386 _ET1	=	0x00ab
                           0000AC   387 _ES	=	0x00ac
                           0000AF   388 _EA	=	0x00af
                           0000B8   389 _PX0	=	0x00b8
                           0000B9   390 _PT0	=	0x00b9
                           0000BA   391 _PX1	=	0x00ba
                           0000BB   392 _PT1	=	0x00bb
                           0000BC   393 _PS	=	0x00bc
                           000080   394 _P0_0	=	0x0080
                           000081   395 _P0_1	=	0x0081
                           000082   396 _P0_2	=	0x0082
                           000083   397 _P0_3	=	0x0083
                           000084   398 _P0_4	=	0x0084
                           000085   399 _P0_5	=	0x0085
                           000086   400 _P0_6	=	0x0086
                           000087   401 _P0_7	=	0x0087
                           000090   402 _P1_0	=	0x0090
                           000091   403 _P1_1	=	0x0091
                           000092   404 _P1_2	=	0x0092
                           000093   405 _P1_3	=	0x0093
                           000094   406 _P1_4	=	0x0094
                           000095   407 _P1_5	=	0x0095
                           000096   408 _P1_6	=	0x0096
                           000097   409 _P1_7	=	0x0097
                           0000A0   410 _P2_0	=	0x00a0
                           0000A1   411 _P2_1	=	0x00a1
                           0000A2   412 _P2_2	=	0x00a2
                           0000A3   413 _P2_3	=	0x00a3
                           0000A4   414 _P2_4	=	0x00a4
                           0000A5   415 _P2_5	=	0x00a5
                           0000A6   416 _P2_6	=	0x00a6
                           0000A7   417 _P2_7	=	0x00a7
                           0000B0   418 _P3_0	=	0x00b0
                           0000B1   419 _P3_1	=	0x00b1
                           0000B2   420 _P3_2	=	0x00b2
                           0000B3   421 _P3_3	=	0x00b3
                           0000B4   422 _P3_4	=	0x00b4
                           0000B5   423 _P3_5	=	0x00b5
                           0000B6   424 _P3_6	=	0x00b6
                           0000B7   425 _P3_7	=	0x00b7
                           0000B0   426 _RXD	=	0x00b0
                           0000B0   427 _RXD0	=	0x00b0
                           0000B1   428 _TXD	=	0x00b1
                           0000B1   429 _TXD0	=	0x00b1
                           0000B2   430 _INT0	=	0x00b2
                           0000B3   431 _INT1	=	0x00b3
                           0000B4   432 _T0	=	0x00b4
                           0000B5   433 _T1	=	0x00b5
                           0000B6   434 _WR	=	0x00b6
                           0000B7   435 _RD	=	0x00b7
                           0000D0   436 _P	=	0x00d0
                           0000D1   437 _F1	=	0x00d1
                           0000D2   438 _OV	=	0x00d2
                           0000D3   439 _RS0	=	0x00d3
                           0000D4   440 _RS1	=	0x00d4
                           0000D5   441 _F0	=	0x00d5
                           0000D6   442 _AC	=	0x00d6
                           0000D7   443 _CY	=	0x00d7
                           000098   444 _RI	=	0x0098
                           000099   445 _TI	=	0x0099
                           00009A   446 _RB8	=	0x009a
                           00009B   447 _TB8	=	0x009b
                           00009C   448 _REN	=	0x009c
                           00009D   449 _SM2	=	0x009d
                           00009E   450 _SM1	=	0x009e
                           00009F   451 _SM0	=	0x009f
                           000088   452 _IT0	=	0x0088
                           000089   453 _IE0	=	0x0089
                           00008A   454 _IT1	=	0x008a
                           00008B   455 _IE1	=	0x008b
                           00008C   456 _TR0	=	0x008c
                           00008D   457 _TF0	=	0x008d
                           00008E   458 _TR1	=	0x008e
                           00008F   459 _TF1	=	0x008f
                                    460 ;--------------------------------------------------------
                                    461 ; overlayable register banks
                                    462 ;--------------------------------------------------------
                                    463 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        464 	.ds 8
                                    465 ;--------------------------------------------------------
                                    466 ; internal ram data
                                    467 ;--------------------------------------------------------
                                    468 	.area DSEG    (DATA)
      000008                        469 _main_sloc0_1_0:
      000008                        470 	.ds 2
      00000A                        471 _main_sloc1_1_0:
      00000A                        472 	.ds 2
      00000C                        473 _main_sloc2_1_0:
      00000C                        474 	.ds 2
      00000E                        475 _main_sloc3_1_0:
      00000E                        476 	.ds 2
      000010                        477 _main_sloc4_1_0:
      000010                        478 	.ds 2
      000012                        479 _main_sloc5_1_0:
      000012                        480 	.ds 2
                                    481 ;--------------------------------------------------------
                                    482 ; overlayable items in internal ram 
                                    483 ;--------------------------------------------------------
                                    484 ;--------------------------------------------------------
                                    485 ; Stack segment in internal ram 
                                    486 ;--------------------------------------------------------
                                    487 	.area	SSEG
      000017                        488 __start__stack:
      000017                        489 	.ds	1
                                    490 
                                    491 ;--------------------------------------------------------
                                    492 ; indirectly addressable internal ram data
                                    493 ;--------------------------------------------------------
                                    494 	.area ISEG    (DATA)
                                    495 ;--------------------------------------------------------
                                    496 ; absolute internal ram data
                                    497 ;--------------------------------------------------------
                                    498 	.area IABS    (ABS,DATA)
                                    499 	.area IABS    (ABS,DATA)
                                    500 ;--------------------------------------------------------
                                    501 ; bit data
                                    502 ;--------------------------------------------------------
                                    503 	.area BSEG    (BIT)
                                    504 ;--------------------------------------------------------
                                    505 ; paged external ram data
                                    506 ;--------------------------------------------------------
                                    507 	.area PSEG    (PAG,XDATA)
                                    508 ;--------------------------------------------------------
                                    509 ; external ram data
                                    510 ;--------------------------------------------------------
                                    511 	.area XSEG    (XDATA)
      001788                        512 _heap::
      001788                        513 	.ds 4800
      002A48                        514 _buffer_0::
      002A48                        515 	.ds 2
      002A4A                        516 _buffer_1::
      002A4A                        517 	.ds 2
      002A4C                        518 _buffer_n::
      002A4C                        519 	.ds 100
      002AB0                        520 _buffer_0_add::
      002AB0                        521 	.ds 2
      002AB2                        522 _buffer_1_add::
      002AB2                        523 	.ds 2
      002AB4                        524 _input_char::
      002AB4                        525 	.ds 2
      002AB6                        526 _num::
      002AB6                        527 	.ds 2
      002AB8                        528 _putchar_c_65536_43:
      002AB8                        529 	.ds 2
      002ABA                        530 _main_buff_size_65536_61:
      002ABA                        531 	.ds 100
      002B1E                        532 _main_p_196609_66:
      002B1E                        533 	.ds 3
                                    534 ;--------------------------------------------------------
                                    535 ; absolute external ram data
                                    536 ;--------------------------------------------------------
                                    537 	.area XABS    (ABS,XDATA)
                                    538 ;--------------------------------------------------------
                                    539 ; external initialized ram data
                                    540 ;--------------------------------------------------------
                                    541 	.area XISEG   (XDATA)
      002B34                        542 _storage::
      002B34                        543 	.ds 2
      002B36                        544 _total_char::
      002B36                        545 	.ds 2
      002B38                        546 _i::
      002B38                        547 	.ds 2
                                    548 	.area HOME    (CODE)
                                    549 	.area GSINIT0 (CODE)
                                    550 	.area GSINIT1 (CODE)
                                    551 	.area GSINIT2 (CODE)
                                    552 	.area GSINIT3 (CODE)
                                    553 	.area GSINIT4 (CODE)
                                    554 	.area GSINIT5 (CODE)
                                    555 	.area GSINIT  (CODE)
                                    556 	.area GSFINAL (CODE)
                                    557 	.area CSEG    (CODE)
                                    558 ;--------------------------------------------------------
                                    559 ; interrupt vector 
                                    560 ;--------------------------------------------------------
                                    561 	.area HOME    (CODE)
      002000                        562 __interrupt_vect:
      002000 02 20 06         [24]  563 	ljmp	__sdcc_gsinit_startup
                                    564 ;--------------------------------------------------------
                                    565 ; global & static initialisations
                                    566 ;--------------------------------------------------------
                                    567 	.area HOME    (CODE)
                                    568 	.area GSINIT  (CODE)
                                    569 	.area GSFINAL (CODE)
                                    570 	.area GSINIT  (CODE)
                                    571 	.globl __sdcc_gsinit_startup
                                    572 	.globl __sdcc_program_startup
                                    573 	.globl __start__stack
                                    574 	.globl __mcs51_genXINIT
                                    575 	.globl __mcs51_genXRAMCLEAR
                                    576 	.globl __mcs51_genRAMCLEAR
                                    577 	.area GSFINAL (CODE)
      00205F 02 20 03         [24]  578 	ljmp	__sdcc_program_startup
                                    579 ;--------------------------------------------------------
                                    580 ; Home
                                    581 ;--------------------------------------------------------
                                    582 	.area HOME    (CODE)
                                    583 	.area HOME    (CODE)
      002003                        584 __sdcc_program_startup:
      002003 02 23 F0         [24]  585 	ljmp	_main
                                    586 ;	return from main will return to caller
                                    587 ;--------------------------------------------------------
                                    588 ; code
                                    589 ;--------------------------------------------------------
                                    590 	.area CSEG    (CODE)
                                    591 ;------------------------------------------------------------
                                    592 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    593 ;------------------------------------------------------------
                                    594 ;	main.c:39: _sdcc_external_startup()
                                    595 ;	-----------------------------------------
                                    596 ;	 function _sdcc_external_startup
                                    597 ;	-----------------------------------------
      002062                        598 __sdcc_external_startup:
                           000007   599 	ar7 = 0x07
                           000006   600 	ar6 = 0x06
                           000005   601 	ar5 = 0x05
                           000004   602 	ar4 = 0x04
                           000003   603 	ar3 = 0x03
                           000002   604 	ar2 = 0x02
                           000001   605 	ar1 = 0x01
                           000000   606 	ar0 = 0x00
                                    607 ;	main.c:41: AUXR |= 0x0C;
      002062 43 8E 0C         [24]  608 	orl	_AUXR,#0x0c
                                    609 ;	main.c:42: return 0;
      002065 90 00 00         [24]  610 	mov	dptr,#0x0000
                                    611 ;	main.c:43: }
      002068 22               [24]  612 	ret
                                    613 ;------------------------------------------------------------
                                    614 ;Allocation info for local variables in function 'putchar'
                                    615 ;------------------------------------------------------------
                                    616 ;c                         Allocated with name '_putchar_c_65536_43'
                                    617 ;------------------------------------------------------------
                                    618 ;	main.c:47: int putchar (int c)
                                    619 ;	-----------------------------------------
                                    620 ;	 function putchar
                                    621 ;	-----------------------------------------
      002069                        622 _putchar:
      002069 AF 83            [24]  623 	mov	r7,dph
      00206B E5 82            [12]  624 	mov	a,dpl
      00206D 90 2A B8         [24]  625 	mov	dptr,#_putchar_c_65536_43
      002070 F0               [24]  626 	movx	@dptr,a
      002071 EF               [12]  627 	mov	a,r7
      002072 A3               [24]  628 	inc	dptr
      002073 F0               [24]  629 	movx	@dptr,a
                                    630 ;	main.c:51: while (!TI);
      002074                        631 00101$:
      002074 30 99 FD         [24]  632 	jnb	_TI,00101$
                                    633 ;	main.c:52: SBUF = c;           // load serial port with transmit value
      002077 90 2A B8         [24]  634 	mov	dptr,#_putchar_c_65536_43
      00207A E0               [24]  635 	movx	a,@dptr
      00207B FE               [12]  636 	mov	r6,a
      00207C A3               [24]  637 	inc	dptr
      00207D E0               [24]  638 	movx	a,@dptr
      00207E FF               [12]  639 	mov	r7,a
      00207F 8E 99            [24]  640 	mov	_SBUF,r6
                                    641 ;	main.c:53: TI = 0;             // clear TI flag
                                    642 ;	assignBit
      002081 C2 99            [12]  643 	clr	_TI
                                    644 ;	main.c:55: return c;
      002083 8E 82            [24]  645 	mov	dpl,r6
      002085 8F 83            [24]  646 	mov	dph,r7
                                    647 ;	main.c:56: }
      002087 22               [24]  648 	ret
                                    649 ;------------------------------------------------------------
                                    650 ;Allocation info for local variables in function 'getchar'
                                    651 ;------------------------------------------------------------
                                    652 ;	main.c:61: int getchar (void)
                                    653 ;	-----------------------------------------
                                    654 ;	 function getchar
                                    655 ;	-----------------------------------------
      002088                        656 _getchar:
                                    657 ;	main.c:65: while (!RI);
      002088                        658 00101$:
                                    659 ;	main.c:66: RI = 0;                         // clear RI flag
                                    660 ;	assignBit
      002088 10 98 02         [24]  661 	jbc	_RI,00114$
      00208B 80 FB            [24]  662 	sjmp	00101$
      00208D                        663 00114$:
                                    664 ;	main.c:67: return SBUF;                    // return character from SBUF
      00208D AE 99            [24]  665 	mov	r6,_SBUF
      00208F 7F 00            [12]  666 	mov	r7,#0x00
      002091 8E 82            [24]  667 	mov	dpl,r6
      002093 8F 83            [24]  668 	mov	dph,r7
                                    669 ;	main.c:68: }
      002095 22               [24]  670 	ret
                                    671 ;------------------------------------------------------------
                                    672 ;Allocation info for local variables in function 'getinput'
                                    673 ;------------------------------------------------------------
                                    674 ;a                         Allocated with name '_getinput_a_65536_47'
                                    675 ;b                         Allocated with name '_getinput_b_65536_47'
                                    676 ;c                         Allocated with name '_getinput_c_65536_47'
                                    677 ;d                         Allocated with name '_getinput_d_65536_47'
                                    678 ;number                    Allocated with name '_getinput_number_65536_47'
                                    679 ;e                         Allocated with name '_getinput_e_65537_48'
                                    680 ;f                         Allocated with name '_getinput_f_65538_49'
                                    681 ;g                         Allocated with name '_getinput_g_65539_50'
                                    682 ;h                         Allocated with name '_getinput_h_65540_51'
                                    683 ;------------------------------------------------------------
                                    684 ;	main.c:72: unsigned int getinput()
                                    685 ;	-----------------------------------------
                                    686 ;	 function getinput
                                    687 ;	-----------------------------------------
      002096                        688 _getinput:
                                    689 ;	main.c:80: again:  printf_tiny("Enter a value divisible btw 48 and 4800 and divisible by 16\r\n");
      002096                        690 00101$:
      002096 74 66            [12]  691 	mov	a,#___str_0
      002098 C0 E0            [24]  692 	push	acc
      00209A 74 34            [12]  693 	mov	a,#(___str_0 >> 8)
      00209C C0 E0            [24]  694 	push	acc
      00209E 12 31 7A         [24]  695 	lcall	_printf_tiny
      0020A1 15 81            [12]  696 	dec	sp
      0020A3 15 81            [12]  697 	dec	sp
                                    698 ;	main.c:82: a = getchar(); // get first digit
      0020A5 12 20 88         [24]  699 	lcall	_getchar
      0020A8 E5 82            [12]  700 	mov	a,dpl
      0020AA 85 83 F0         [24]  701 	mov	b,dph
                                    702 ;	main.c:83: int e=a-'0';
      0020AD 24 D0            [12]  703 	add	a,#0xd0
      0020AF FE               [12]  704 	mov	r6,a
      0020B0 E5 F0            [12]  705 	mov	a,b
      0020B2 34 FF            [12]  706 	addc	a,#0xff
      0020B4 FF               [12]  707 	mov	r7,a
                                    708 ;	main.c:84: printf_tiny("a= %d\r\n", e);
      0020B5 C0 07            [24]  709 	push	ar7
      0020B7 C0 06            [24]  710 	push	ar6
      0020B9 C0 06            [24]  711 	push	ar6
      0020BB C0 07            [24]  712 	push	ar7
      0020BD 74 A4            [12]  713 	mov	a,#___str_1
      0020BF C0 E0            [24]  714 	push	acc
      0020C1 74 34            [12]  715 	mov	a,#(___str_1 >> 8)
      0020C3 C0 E0            [24]  716 	push	acc
      0020C5 12 31 7A         [24]  717 	lcall	_printf_tiny
      0020C8 E5 81            [12]  718 	mov	a,sp
      0020CA 24 FC            [12]  719 	add	a,#0xfc
      0020CC F5 81            [12]  720 	mov	sp,a
                                    721 ;	main.c:88: b = getchar(); // get 2nd digit
      0020CE 12 20 88         [24]  722 	lcall	_getchar
      0020D1 E5 82            [12]  723 	mov	a,dpl
      0020D3 85 83 F0         [24]  724 	mov	b,dph
                                    725 ;	main.c:89: int f=b-'0';
      0020D6 24 D0            [12]  726 	add	a,#0xd0
      0020D8 FC               [12]  727 	mov	r4,a
      0020D9 E5 F0            [12]  728 	mov	a,b
      0020DB 34 FF            [12]  729 	addc	a,#0xff
      0020DD FD               [12]  730 	mov	r5,a
                                    731 ;	main.c:90: printf_tiny("b= %d\r\n", f);
      0020DE C0 05            [24]  732 	push	ar5
      0020E0 C0 04            [24]  733 	push	ar4
      0020E2 C0 04            [24]  734 	push	ar4
      0020E4 C0 05            [24]  735 	push	ar5
      0020E6 74 AC            [12]  736 	mov	a,#___str_2
      0020E8 C0 E0            [24]  737 	push	acc
      0020EA 74 34            [12]  738 	mov	a,#(___str_2 >> 8)
      0020EC C0 E0            [24]  739 	push	acc
      0020EE 12 31 7A         [24]  740 	lcall	_printf_tiny
      0020F1 E5 81            [12]  741 	mov	a,sp
      0020F3 24 FC            [12]  742 	add	a,#0xfc
      0020F5 F5 81            [12]  743 	mov	sp,a
                                    744 ;	main.c:94: c = getchar(); // get 3rd digit
      0020F7 12 20 88         [24]  745 	lcall	_getchar
      0020FA E5 82            [12]  746 	mov	a,dpl
      0020FC 85 83 F0         [24]  747 	mov	b,dph
                                    748 ;	main.c:95: int g=c-'0';
      0020FF 24 D0            [12]  749 	add	a,#0xd0
      002101 FA               [12]  750 	mov	r2,a
      002102 E5 F0            [12]  751 	mov	a,b
      002104 34 FF            [12]  752 	addc	a,#0xff
      002106 FB               [12]  753 	mov	r3,a
                                    754 ;	main.c:96: printf_tiny(" c = %d\r\n", g);
      002107 C0 03            [24]  755 	push	ar3
      002109 C0 02            [24]  756 	push	ar2
      00210B C0 02            [24]  757 	push	ar2
      00210D C0 03            [24]  758 	push	ar3
      00210F 74 B4            [12]  759 	mov	a,#___str_3
      002111 C0 E0            [24]  760 	push	acc
      002113 74 34            [12]  761 	mov	a,#(___str_3 >> 8)
      002115 C0 E0            [24]  762 	push	acc
      002117 12 31 7A         [24]  763 	lcall	_printf_tiny
      00211A E5 81            [12]  764 	mov	a,sp
      00211C 24 FC            [12]  765 	add	a,#0xfc
      00211E F5 81            [12]  766 	mov	sp,a
                                    767 ;	main.c:100: d= getchar(); // get 4th digit
      002120 12 20 88         [24]  768 	lcall	_getchar
      002123 E5 82            [12]  769 	mov	a,dpl
      002125 85 83 F0         [24]  770 	mov	b,dph
                                    771 ;	main.c:101: int h=d-'0';
      002128 24 D0            [12]  772 	add	a,#0xd0
      00212A F8               [12]  773 	mov	r0,a
      00212B E5 F0            [12]  774 	mov	a,b
      00212D 34 FF            [12]  775 	addc	a,#0xff
      00212F F9               [12]  776 	mov	r1,a
                                    777 ;	main.c:102: printf_tiny(" d = %d \r\n", h);
      002130 C0 01            [24]  778 	push	ar1
      002132 C0 00            [24]  779 	push	ar0
      002134 C0 00            [24]  780 	push	ar0
      002136 C0 01            [24]  781 	push	ar1
      002138 74 BE            [12]  782 	mov	a,#___str_4
      00213A C0 E0            [24]  783 	push	acc
      00213C 74 34            [12]  784 	mov	a,#(___str_4 >> 8)
      00213E C0 E0            [24]  785 	push	acc
      002140 12 31 7A         [24]  786 	lcall	_printf_tiny
      002143 E5 81            [12]  787 	mov	a,sp
      002145 24 FC            [12]  788 	add	a,#0xfc
      002147 F5 81            [12]  789 	mov	sp,a
      002149 D0 00            [24]  790 	pop	ar0
      00214B D0 01            [24]  791 	pop	ar1
      00214D D0 02            [24]  792 	pop	ar2
      00214F D0 03            [24]  793 	pop	ar3
      002151 D0 04            [24]  794 	pop	ar4
      002153 D0 05            [24]  795 	pop	ar5
      002155 D0 06            [24]  796 	pop	ar6
      002157 D0 07            [24]  797 	pop	ar7
                                    798 ;	main.c:106: number= (e*1000 + f*100 + g*10 + h);
      002159 90 2B 32         [24]  799 	mov	dptr,#__mulint_PARM_2
      00215C EE               [12]  800 	mov	a,r6
      00215D F0               [24]  801 	movx	@dptr,a
      00215E EF               [12]  802 	mov	a,r7
      00215F A3               [24]  803 	inc	dptr
      002160 F0               [24]  804 	movx	@dptr,a
      002161 90 03 E8         [24]  805 	mov	dptr,#0x03e8
      002164 C0 05            [24]  806 	push	ar5
      002166 C0 04            [24]  807 	push	ar4
      002168 C0 03            [24]  808 	push	ar3
      00216A C0 02            [24]  809 	push	ar2
      00216C C0 01            [24]  810 	push	ar1
      00216E C0 00            [24]  811 	push	ar0
      002170 12 34 28         [24]  812 	lcall	__mulint
      002173 AE 82            [24]  813 	mov	r6,dpl
      002175 AF 83            [24]  814 	mov	r7,dph
      002177 D0 00            [24]  815 	pop	ar0
      002179 D0 01            [24]  816 	pop	ar1
      00217B D0 02            [24]  817 	pop	ar2
      00217D D0 03            [24]  818 	pop	ar3
      00217F D0 04            [24]  819 	pop	ar4
      002181 D0 05            [24]  820 	pop	ar5
      002183 90 2B 32         [24]  821 	mov	dptr,#__mulint_PARM_2
      002186 EC               [12]  822 	mov	a,r4
      002187 F0               [24]  823 	movx	@dptr,a
      002188 ED               [12]  824 	mov	a,r5
      002189 A3               [24]  825 	inc	dptr
      00218A F0               [24]  826 	movx	@dptr,a
      00218B 90 00 64         [24]  827 	mov	dptr,#0x0064
      00218E C0 07            [24]  828 	push	ar7
      002190 C0 06            [24]  829 	push	ar6
      002192 C0 03            [24]  830 	push	ar3
      002194 C0 02            [24]  831 	push	ar2
      002196 C0 01            [24]  832 	push	ar1
      002198 C0 00            [24]  833 	push	ar0
      00219A 12 34 28         [24]  834 	lcall	__mulint
      00219D AC 82            [24]  835 	mov	r4,dpl
      00219F AD 83            [24]  836 	mov	r5,dph
      0021A1 D0 00            [24]  837 	pop	ar0
      0021A3 D0 01            [24]  838 	pop	ar1
      0021A5 D0 02            [24]  839 	pop	ar2
      0021A7 D0 03            [24]  840 	pop	ar3
      0021A9 D0 06            [24]  841 	pop	ar6
      0021AB D0 07            [24]  842 	pop	ar7
      0021AD EC               [12]  843 	mov	a,r4
      0021AE 2E               [12]  844 	add	a,r6
      0021AF FE               [12]  845 	mov	r6,a
      0021B0 ED               [12]  846 	mov	a,r5
      0021B1 3F               [12]  847 	addc	a,r7
      0021B2 FF               [12]  848 	mov	r7,a
      0021B3 90 2B 32         [24]  849 	mov	dptr,#__mulint_PARM_2
      0021B6 EA               [12]  850 	mov	a,r2
      0021B7 F0               [24]  851 	movx	@dptr,a
      0021B8 EB               [12]  852 	mov	a,r3
      0021B9 A3               [24]  853 	inc	dptr
      0021BA F0               [24]  854 	movx	@dptr,a
      0021BB 90 00 0A         [24]  855 	mov	dptr,#0x000a
      0021BE C0 07            [24]  856 	push	ar7
      0021C0 C0 06            [24]  857 	push	ar6
      0021C2 C0 01            [24]  858 	push	ar1
      0021C4 C0 00            [24]  859 	push	ar0
      0021C6 12 34 28         [24]  860 	lcall	__mulint
      0021C9 AC 82            [24]  861 	mov	r4,dpl
      0021CB AD 83            [24]  862 	mov	r5,dph
      0021CD D0 00            [24]  863 	pop	ar0
      0021CF D0 01            [24]  864 	pop	ar1
      0021D1 D0 06            [24]  865 	pop	ar6
      0021D3 D0 07            [24]  866 	pop	ar7
      0021D5 EC               [12]  867 	mov	a,r4
      0021D6 2E               [12]  868 	add	a,r6
      0021D7 FE               [12]  869 	mov	r6,a
      0021D8 ED               [12]  870 	mov	a,r5
      0021D9 3F               [12]  871 	addc	a,r7
      0021DA FF               [12]  872 	mov	r7,a
      0021DB E8               [12]  873 	mov	a,r0
      0021DC 2E               [12]  874 	add	a,r6
      0021DD FE               [12]  875 	mov	r6,a
      0021DE E9               [12]  876 	mov	a,r1
      0021DF 3F               [12]  877 	addc	a,r7
      0021E0 FF               [12]  878 	mov	r7,a
                                    879 ;	main.c:107: printf_tiny("number = %d\n\r", number);
      0021E1 C0 07            [24]  880 	push	ar7
      0021E3 C0 06            [24]  881 	push	ar6
      0021E5 C0 06            [24]  882 	push	ar6
      0021E7 C0 07            [24]  883 	push	ar7
      0021E9 74 C9            [12]  884 	mov	a,#___str_5
      0021EB C0 E0            [24]  885 	push	acc
      0021ED 74 34            [12]  886 	mov	a,#(___str_5 >> 8)
      0021EF C0 E0            [24]  887 	push	acc
      0021F1 12 31 7A         [24]  888 	lcall	_printf_tiny
      0021F4 E5 81            [12]  889 	mov	a,sp
      0021F6 24 FC            [12]  890 	add	a,#0xfc
      0021F8 F5 81            [12]  891 	mov	sp,a
      0021FA D0 06            [24]  892 	pop	ar6
      0021FC D0 07            [24]  893 	pop	ar7
                                    894 ;	main.c:108: if((number>=48) &&(number<=4800)&&(number%16==0)) // value of digit >48 and less then 4800
      0021FE 8E 04            [24]  895 	mov	ar4,r6
      002200 8F 05            [24]  896 	mov	ar5,r7
      002202 C3               [12]  897 	clr	c
      002203 EC               [12]  898 	mov	a,r4
      002204 94 30            [12]  899 	subb	a,#0x30
      002206 ED               [12]  900 	mov	a,r5
      002207 94 00            [12]  901 	subb	a,#0x00
      002209 40 4F            [24]  902 	jc	00103$
      00220B 8E 04            [24]  903 	mov	ar4,r6
      00220D 8F 05            [24]  904 	mov	ar5,r7
      00220F C3               [12]  905 	clr	c
      002210 74 C0            [12]  906 	mov	a,#0xc0
      002212 9C               [12]  907 	subb	a,r4
      002213 74 12            [12]  908 	mov	a,#0x12
      002215 9D               [12]  909 	subb	a,r5
      002216 40 42            [24]  910 	jc	00103$
      002218 8E 04            [24]  911 	mov	ar4,r6
      00221A 8F 05            [24]  912 	mov	ar5,r7
      00221C EC               [12]  913 	mov	a,r4
      00221D 54 0F            [12]  914 	anl	a,#0x0f
      00221F 70 39            [24]  915 	jnz	00103$
                                    916 ;	main.c:110: printf_tiny("valid input\r\n");
      002221 C0 07            [24]  917 	push	ar7
      002223 C0 06            [24]  918 	push	ar6
      002225 74 D7            [12]  919 	mov	a,#___str_6
      002227 C0 E0            [24]  920 	push	acc
      002229 74 34            [12]  921 	mov	a,#(___str_6 >> 8)
      00222B C0 E0            [24]  922 	push	acc
      00222D 12 31 7A         [24]  923 	lcall	_printf_tiny
      002230 15 81            [12]  924 	dec	sp
      002232 15 81            [12]  925 	dec	sp
      002234 D0 06            [24]  926 	pop	ar6
      002236 D0 07            [24]  927 	pop	ar7
                                    928 ;	main.c:111: printf_tiny("num= %d", number);
      002238 C0 07            [24]  929 	push	ar7
      00223A C0 06            [24]  930 	push	ar6
      00223C C0 06            [24]  931 	push	ar6
      00223E C0 07            [24]  932 	push	ar7
      002240 74 E5            [12]  933 	mov	a,#___str_7
      002242 C0 E0            [24]  934 	push	acc
      002244 74 34            [12]  935 	mov	a,#(___str_7 >> 8)
      002246 C0 E0            [24]  936 	push	acc
      002248 12 31 7A         [24]  937 	lcall	_printf_tiny
      00224B E5 81            [12]  938 	mov	a,sp
      00224D 24 FC            [12]  939 	add	a,#0xfc
      00224F F5 81            [12]  940 	mov	sp,a
      002251 D0 06            [24]  941 	pop	ar6
      002253 D0 07            [24]  942 	pop	ar7
                                    943 ;	main.c:112: return number;
      002255 8E 82            [24]  944 	mov	dpl,r6
      002257 8F 83            [24]  945 	mov	dph,r7
      002259 22               [24]  946 	ret
      00225A                        947 00103$:
                                    948 ;	main.c:116: printf_tiny("not a valid input\r\n");
      00225A 74 ED            [12]  949 	mov	a,#___str_8
      00225C C0 E0            [24]  950 	push	acc
      00225E 74 34            [12]  951 	mov	a,#(___str_8 >> 8)
      002260 C0 E0            [24]  952 	push	acc
      002262 12 31 7A         [24]  953 	lcall	_printf_tiny
      002265 15 81            [12]  954 	dec	sp
      002267 15 81            [12]  955 	dec	sp
                                    956 ;	main.c:117: goto again;
                                    957 ;	main.c:120: }
      002269 02 20 96         [24]  958 	ljmp	00101$
                                    959 ;------------------------------------------------------------
                                    960 ;Allocation info for local variables in function 'getinput_30_300'
                                    961 ;------------------------------------------------------------
                                    962 ;q                         Allocated with name '_getinput_30_300_q_65536_54'
                                    963 ;r                         Allocated with name '_getinput_30_300_r_65536_54'
                                    964 ;s                         Allocated with name '_getinput_30_300_s_65536_54'
                                    965 ;num_new                   Allocated with name '_getinput_30_300_num_new_65536_54'
                                    966 ;x                         Allocated with name '_getinput_30_300_x_65537_55'
                                    967 ;y                         Allocated with name '_getinput_30_300_y_65538_56'
                                    968 ;z                         Allocated with name '_getinput_30_300_z_65539_57'
                                    969 ;------------------------------------------------------------
                                    970 ;	main.c:125: int getinput_30_300()
                                    971 ;	-----------------------------------------
                                    972 ;	 function getinput_30_300
                                    973 ;	-----------------------------------------
      00226C                        974 _getinput_30_300:
                                    975 ;	main.c:132: again1: printf_tiny("Enter a value divisible btw 30 and 300\r\n");
      00226C                        976 00101$:
      00226C 74 01            [12]  977 	mov	a,#___str_9
      00226E C0 E0            [24]  978 	push	acc
      002270 74 35            [12]  979 	mov	a,#(___str_9 >> 8)
      002272 C0 E0            [24]  980 	push	acc
      002274 12 31 7A         [24]  981 	lcall	_printf_tiny
      002277 15 81            [12]  982 	dec	sp
      002279 15 81            [12]  983 	dec	sp
                                    984 ;	main.c:134: q = getchar();
      00227B 12 20 88         [24]  985 	lcall	_getchar
      00227E E5 82            [12]  986 	mov	a,dpl
      002280 85 83 F0         [24]  987 	mov	b,dph
                                    988 ;	main.c:135: int x=q-'0';
      002283 24 D0            [12]  989 	add	a,#0xd0
      002285 FE               [12]  990 	mov	r6,a
      002286 E5 F0            [12]  991 	mov	a,b
      002288 34 FF            [12]  992 	addc	a,#0xff
      00228A FF               [12]  993 	mov	r7,a
                                    994 ;	main.c:136: printf_tiny(" q = %d \r\n", x);
      00228B C0 07            [24]  995 	push	ar7
      00228D C0 06            [24]  996 	push	ar6
      00228F C0 06            [24]  997 	push	ar6
      002291 C0 07            [24]  998 	push	ar7
      002293 74 2A            [12]  999 	mov	a,#___str_10
      002295 C0 E0            [24] 1000 	push	acc
      002297 74 35            [12] 1001 	mov	a,#(___str_10 >> 8)
      002299 C0 E0            [24] 1002 	push	acc
      00229B 12 31 7A         [24] 1003 	lcall	_printf_tiny
      00229E E5 81            [12] 1004 	mov	a,sp
      0022A0 24 FC            [12] 1005 	add	a,#0xfc
      0022A2 F5 81            [12] 1006 	mov	sp,a
                                   1007 ;	main.c:138: r= getchar();
      0022A4 12 20 88         [24] 1008 	lcall	_getchar
      0022A7 E5 82            [12] 1009 	mov	a,dpl
      0022A9 85 83 F0         [24] 1010 	mov	b,dph
                                   1011 ;	main.c:139: int y=r-'0';
      0022AC 24 D0            [12] 1012 	add	a,#0xd0
      0022AE FC               [12] 1013 	mov	r4,a
      0022AF E5 F0            [12] 1014 	mov	a,b
      0022B1 34 FF            [12] 1015 	addc	a,#0xff
      0022B3 FD               [12] 1016 	mov	r5,a
                                   1017 ;	main.c:140: printf_tiny(" r = %d \r\n", y);
      0022B4 C0 05            [24] 1018 	push	ar5
      0022B6 C0 04            [24] 1019 	push	ar4
      0022B8 C0 04            [24] 1020 	push	ar4
      0022BA C0 05            [24] 1021 	push	ar5
      0022BC 74 35            [12] 1022 	mov	a,#___str_11
      0022BE C0 E0            [24] 1023 	push	acc
      0022C0 74 35            [12] 1024 	mov	a,#(___str_11 >> 8)
      0022C2 C0 E0            [24] 1025 	push	acc
      0022C4 12 31 7A         [24] 1026 	lcall	_printf_tiny
      0022C7 E5 81            [12] 1027 	mov	a,sp
      0022C9 24 FC            [12] 1028 	add	a,#0xfc
      0022CB F5 81            [12] 1029 	mov	sp,a
                                   1030 ;	main.c:142: s= getchar();
      0022CD 12 20 88         [24] 1031 	lcall	_getchar
      0022D0 E5 82            [12] 1032 	mov	a,dpl
      0022D2 85 83 F0         [24] 1033 	mov	b,dph
                                   1034 ;	main.c:143: int z=s-'0';
      0022D5 24 D0            [12] 1035 	add	a,#0xd0
      0022D7 FA               [12] 1036 	mov	r2,a
      0022D8 E5 F0            [12] 1037 	mov	a,b
      0022DA 34 FF            [12] 1038 	addc	a,#0xff
      0022DC FB               [12] 1039 	mov	r3,a
                                   1040 ;	main.c:144: printf_tiny(" s = %d \r\n", z);
      0022DD C0 03            [24] 1041 	push	ar3
      0022DF C0 02            [24] 1042 	push	ar2
      0022E1 C0 02            [24] 1043 	push	ar2
      0022E3 C0 03            [24] 1044 	push	ar3
      0022E5 74 40            [12] 1045 	mov	a,#___str_12
      0022E7 C0 E0            [24] 1046 	push	acc
      0022E9 74 35            [12] 1047 	mov	a,#(___str_12 >> 8)
      0022EB C0 E0            [24] 1048 	push	acc
      0022ED 12 31 7A         [24] 1049 	lcall	_printf_tiny
      0022F0 E5 81            [12] 1050 	mov	a,sp
      0022F2 24 FC            [12] 1051 	add	a,#0xfc
      0022F4 F5 81            [12] 1052 	mov	sp,a
      0022F6 D0 02            [24] 1053 	pop	ar2
      0022F8 D0 03            [24] 1054 	pop	ar3
      0022FA D0 04            [24] 1055 	pop	ar4
      0022FC D0 05            [24] 1056 	pop	ar5
      0022FE D0 06            [24] 1057 	pop	ar6
      002300 D0 07            [24] 1058 	pop	ar7
                                   1059 ;	main.c:146: num_new= ((x*100)+(y*10)+z);
      002302 90 2B 32         [24] 1060 	mov	dptr,#__mulint_PARM_2
      002305 EE               [12] 1061 	mov	a,r6
      002306 F0               [24] 1062 	movx	@dptr,a
      002307 EF               [12] 1063 	mov	a,r7
      002308 A3               [24] 1064 	inc	dptr
      002309 F0               [24] 1065 	movx	@dptr,a
      00230A 90 00 64         [24] 1066 	mov	dptr,#0x0064
      00230D C0 05            [24] 1067 	push	ar5
      00230F C0 04            [24] 1068 	push	ar4
      002311 C0 03            [24] 1069 	push	ar3
      002313 C0 02            [24] 1070 	push	ar2
      002315 12 34 28         [24] 1071 	lcall	__mulint
      002318 AE 82            [24] 1072 	mov	r6,dpl
      00231A AF 83            [24] 1073 	mov	r7,dph
      00231C D0 02            [24] 1074 	pop	ar2
      00231E D0 03            [24] 1075 	pop	ar3
      002320 D0 04            [24] 1076 	pop	ar4
      002322 D0 05            [24] 1077 	pop	ar5
      002324 90 2B 32         [24] 1078 	mov	dptr,#__mulint_PARM_2
      002327 EC               [12] 1079 	mov	a,r4
      002328 F0               [24] 1080 	movx	@dptr,a
      002329 ED               [12] 1081 	mov	a,r5
      00232A A3               [24] 1082 	inc	dptr
      00232B F0               [24] 1083 	movx	@dptr,a
      00232C 90 00 0A         [24] 1084 	mov	dptr,#0x000a
      00232F C0 07            [24] 1085 	push	ar7
      002331 C0 06            [24] 1086 	push	ar6
      002333 C0 03            [24] 1087 	push	ar3
      002335 C0 02            [24] 1088 	push	ar2
      002337 12 34 28         [24] 1089 	lcall	__mulint
      00233A AC 82            [24] 1090 	mov	r4,dpl
      00233C AD 83            [24] 1091 	mov	r5,dph
      00233E D0 02            [24] 1092 	pop	ar2
      002340 D0 03            [24] 1093 	pop	ar3
      002342 D0 06            [24] 1094 	pop	ar6
      002344 D0 07            [24] 1095 	pop	ar7
      002346 EC               [12] 1096 	mov	a,r4
      002347 2E               [12] 1097 	add	a,r6
      002348 FE               [12] 1098 	mov	r6,a
      002349 ED               [12] 1099 	mov	a,r5
      00234A 3F               [12] 1100 	addc	a,r7
      00234B FF               [12] 1101 	mov	r7,a
      00234C EA               [12] 1102 	mov	a,r2
      00234D 2E               [12] 1103 	add	a,r6
      00234E FE               [12] 1104 	mov	r6,a
      00234F EB               [12] 1105 	mov	a,r3
      002350 3F               [12] 1106 	addc	a,r7
      002351 FF               [12] 1107 	mov	r7,a
                                   1108 ;	main.c:147: printf_tiny("new value of buffer is = %d",num_new);
      002352 C0 07            [24] 1109 	push	ar7
      002354 C0 06            [24] 1110 	push	ar6
      002356 C0 06            [24] 1111 	push	ar6
      002358 C0 07            [24] 1112 	push	ar7
      00235A 74 4B            [12] 1113 	mov	a,#___str_13
      00235C C0 E0            [24] 1114 	push	acc
      00235E 74 35            [12] 1115 	mov	a,#(___str_13 >> 8)
      002360 C0 E0            [24] 1116 	push	acc
      002362 12 31 7A         [24] 1117 	lcall	_printf_tiny
      002365 E5 81            [12] 1118 	mov	a,sp
      002367 24 FC            [12] 1119 	add	a,#0xfc
      002369 F5 81            [12] 1120 	mov	sp,a
      00236B D0 06            [24] 1121 	pop	ar6
      00236D D0 07            [24] 1122 	pop	ar7
                                   1123 ;	main.c:148: if ((num_new>=30)&&(num_new<=300))
      00236F 8E 04            [24] 1124 	mov	ar4,r6
      002371 8F 05            [24] 1125 	mov	ar5,r7
      002373 C3               [12] 1126 	clr	c
      002374 EC               [12] 1127 	mov	a,r4
      002375 94 1E            [12] 1128 	subb	a,#0x1e
      002377 ED               [12] 1129 	mov	a,r5
      002378 94 00            [12] 1130 	subb	a,#0x00
      00237A 50 03            [24] 1131 	jnc	00120$
      00237C 02 22 6C         [24] 1132 	ljmp	00101$
      00237F                       1133 00120$:
      00237F 8E 04            [24] 1134 	mov	ar4,r6
      002381 8F 05            [24] 1135 	mov	ar5,r7
      002383 C3               [12] 1136 	clr	c
      002384 74 2C            [12] 1137 	mov	a,#0x2c
      002386 9C               [12] 1138 	subb	a,r4
      002387 74 01            [12] 1139 	mov	a,#0x01
      002389 9D               [12] 1140 	subb	a,r5
      00238A 50 03            [24] 1141 	jnc	00121$
      00238C 02 22 6C         [24] 1142 	ljmp	00101$
      00238F                       1143 00121$:
                                   1144 ;	main.c:149: return num_new;
      00238F 8E 82            [24] 1145 	mov	dpl,r6
      002391 8F 83            [24] 1146 	mov	dph,r7
                                   1147 ;	main.c:151: goto again1;
                                   1148 ;	main.c:154: }
      002393 22               [24] 1149 	ret
                                   1150 ;------------------------------------------------------------
                                   1151 ;Allocation info for local variables in function 'del_num'
                                   1152 ;------------------------------------------------------------
                                   1153 ;P                         Allocated with name '_del_num_P_65536_58'
                                   1154 ;Q                         Allocated with name '_del_num_Q_65536_58'
                                   1155 ;number3                   Allocated with name '_del_num_number3_65536_58'
                                   1156 ;A                         Allocated with name '_del_num_A_65537_59'
                                   1157 ;B                         Allocated with name '_del_num_B_65538_60'
                                   1158 ;------------------------------------------------------------
                                   1159 ;	main.c:158: int del_num()
                                   1160 ;	-----------------------------------------
                                   1161 ;	 function del_num
                                   1162 ;	-----------------------------------------
      002394                       1163 _del_num:
                                   1164 ;	main.c:164: printf_tiny("enter the number of buffer to delete");
      002394 74 67            [12] 1165 	mov	a,#___str_14
      002396 C0 E0            [24] 1166 	push	acc
      002398 74 35            [12] 1167 	mov	a,#(___str_14 >> 8)
      00239A C0 E0            [24] 1168 	push	acc
      00239C 12 31 7A         [24] 1169 	lcall	_printf_tiny
      00239F 15 81            [12] 1170 	dec	sp
      0023A1 15 81            [12] 1171 	dec	sp
                                   1172 ;	main.c:166: P= getchar();
      0023A3 12 20 88         [24] 1173 	lcall	_getchar
      0023A6 E5 82            [12] 1174 	mov	a,dpl
      0023A8 85 83 F0         [24] 1175 	mov	b,dph
                                   1176 ;	main.c:167: int A = P-'0';
      0023AB 24 D0            [12] 1177 	add	a,#0xd0
      0023AD FE               [12] 1178 	mov	r6,a
      0023AE E5 F0            [12] 1179 	mov	a,b
      0023B0 34 FF            [12] 1180 	addc	a,#0xff
      0023B2 FF               [12] 1181 	mov	r7,a
                                   1182 ;	main.c:168: Q= getchar();
      0023B3 C0 07            [24] 1183 	push	ar7
      0023B5 C0 06            [24] 1184 	push	ar6
      0023B7 12 20 88         [24] 1185 	lcall	_getchar
      0023BA E5 82            [12] 1186 	mov	a,dpl
      0023BC 85 83 F0         [24] 1187 	mov	b,dph
      0023BF D0 06            [24] 1188 	pop	ar6
      0023C1 D0 07            [24] 1189 	pop	ar7
                                   1190 ;	main.c:169: int B = Q-'0';
      0023C3 24 D0            [12] 1191 	add	a,#0xd0
      0023C5 FC               [12] 1192 	mov	r4,a
      0023C6 E5 F0            [12] 1193 	mov	a,b
      0023C8 34 FF            [12] 1194 	addc	a,#0xff
      0023CA FD               [12] 1195 	mov	r5,a
                                   1196 ;	main.c:170: number3 = ((A*10)+B);
      0023CB 90 2B 32         [24] 1197 	mov	dptr,#__mulint_PARM_2
      0023CE EE               [12] 1198 	mov	a,r6
      0023CF F0               [24] 1199 	movx	@dptr,a
      0023D0 EF               [12] 1200 	mov	a,r7
      0023D1 A3               [24] 1201 	inc	dptr
      0023D2 F0               [24] 1202 	movx	@dptr,a
      0023D3 90 00 0A         [24] 1203 	mov	dptr,#0x000a
      0023D6 C0 05            [24] 1204 	push	ar5
      0023D8 C0 04            [24] 1205 	push	ar4
      0023DA 12 34 28         [24] 1206 	lcall	__mulint
      0023DD E5 82            [12] 1207 	mov	a,dpl
      0023DF 85 83 F0         [24] 1208 	mov	b,dph
      0023E2 D0 04            [24] 1209 	pop	ar4
      0023E4 D0 05            [24] 1210 	pop	ar5
      0023E6 2C               [12] 1211 	add	a,r4
      0023E7 FC               [12] 1212 	mov	r4,a
      0023E8 ED               [12] 1213 	mov	a,r5
      0023E9 35 F0            [12] 1214 	addc	a,b
                                   1215 ;	main.c:172: return number3;
                                   1216 ;	main.c:173: }
      0023EB 8C 82            [24] 1217 	mov	dpl,r4
      0023ED F5 83            [12] 1218 	mov	dph,a
      0023EF 22               [24] 1219 	ret
                                   1220 ;------------------------------------------------------------
                                   1221 ;Allocation info for local variables in function 'main'
                                   1222 ;------------------------------------------------------------
                                   1223 ;sloc0                     Allocated with name '_main_sloc0_1_0'
                                   1224 ;sloc1                     Allocated with name '_main_sloc1_1_0'
                                   1225 ;sloc2                     Allocated with name '_main_sloc2_1_0'
                                   1226 ;sloc3                     Allocated with name '_main_sloc3_1_0'
                                   1227 ;sloc4                     Allocated with name '_main_sloc4_1_0'
                                   1228 ;sloc5                     Allocated with name '_main_sloc5_1_0'
                                   1229 ;num                       Allocated with name '_main_num_65536_61'
                                   1230 ;number2                   Allocated with name '_main_number2_65536_61'
                                   1231 ;j                         Allocated with name '_main_j_65536_61'
                                   1232 ;t                         Allocated with name '_main_t_65536_61'
                                   1233 ;buff_size                 Allocated with name '_main_buff_size_65536_61'
                                   1234 ;num_del                   Allocated with name '_main_num_del_65536_61'
                                   1235 ;total_buffer_count        Allocated with name '_main_total_buffer_count_65536_61'
                                   1236 ;count                     Allocated with name '_main_count_65536_61'
                                   1237 ;buff_0_count              Allocated with name '_main_buff_0_count_65536_61'
                                   1238 ;p                         Allocated with name '_main_p_196609_66'
                                   1239 ;m                         Allocated with name '_main_m_262144_78'
                                   1240 ;------------------------------------------------------------
                                   1241 ;	main.c:175: void main()
                                   1242 ;	-----------------------------------------
                                   1243 ;	 function main
                                   1244 ;	-----------------------------------------
      0023F0                       1245 _main:
                                   1246 ;	main.c:189: num = getinput();
      0023F0 12 20 96         [24] 1247 	lcall	_getinput
      0023F3 85 82 12         [24] 1248 	mov	_main_sloc5_1_0,dpl
      0023F6 85 83 13         [24] 1249 	mov	(_main_sloc5_1_0 + 1),dph
                                   1250 ;	main.c:190: printf_tiny("the number is %d",num);
      0023F9 C0 12            [24] 1251 	push	_main_sloc5_1_0
      0023FB C0 13            [24] 1252 	push	(_main_sloc5_1_0 + 1)
      0023FD 74 8C            [12] 1253 	mov	a,#___str_15
      0023FF C0 E0            [24] 1254 	push	acc
      002401 74 35            [12] 1255 	mov	a,#(___str_15 >> 8)
      002403 C0 E0            [24] 1256 	push	acc
      002405 12 31 7A         [24] 1257 	lcall	_printf_tiny
      002408 E5 81            [12] 1258 	mov	a,sp
      00240A 24 FC            [12] 1259 	add	a,#0xfc
      00240C F5 81            [12] 1260 	mov	sp,a
                                   1261 ;	main.c:192: buffer_0 = (char*) malloc(num); // malloc num bytes and store in buffer_0
      00240E 85 12 82         [24] 1262 	mov	dpl,_main_sloc5_1_0
      002411 85 13 83         [24] 1263 	mov	dph,(_main_sloc5_1_0 + 1)
      002414 12 32 BF         [24] 1264 	lcall	_malloc
      002417 AC 82            [24] 1265 	mov	r4,dpl
      002419 AD 83            [24] 1266 	mov	r5,dph
      00241B 90 2A 48         [24] 1267 	mov	dptr,#_buffer_0
      00241E EC               [12] 1268 	mov	a,r4
      00241F F0               [24] 1269 	movx	@dptr,a
      002420 ED               [12] 1270 	mov	a,r5
      002421 A3               [24] 1271 	inc	dptr
      002422 F0               [24] 1272 	movx	@dptr,a
                                   1273 ;	main.c:193: buffer_0_add = (unsigned int)buffer_0; //printing the starting address of buffer_0
      002423 8C 02            [24] 1274 	mov	ar2,r4
      002425 8D 03            [24] 1275 	mov	ar3,r5
      002427 90 2A B0         [24] 1276 	mov	dptr,#_buffer_0_add
      00242A EA               [12] 1277 	mov	a,r2
      00242B F0               [24] 1278 	movx	@dptr,a
      00242C EB               [12] 1279 	mov	a,r3
      00242D A3               [24] 1280 	inc	dptr
      00242E F0               [24] 1281 	movx	@dptr,a
                                   1282 ;	main.c:195: if(buffer_0 !=NULL)
      00242F EC               [12] 1283 	mov	a,r4
      002430 4D               [12] 1284 	orl	a,r5
      002431 60 2A            [24] 1285 	jz	00102$
                                   1286 ;	main.c:197: printf_tiny("malloc for buffer0 is successful\r\n");
      002433 74 9D            [12] 1287 	mov	a,#___str_16
      002435 C0 E0            [24] 1288 	push	acc
      002437 74 35            [12] 1289 	mov	a,#(___str_16 >> 8)
      002439 C0 E0            [24] 1290 	push	acc
      00243B 12 31 7A         [24] 1291 	lcall	_printf_tiny
      00243E 15 81            [12] 1292 	dec	sp
      002440 15 81            [12] 1293 	dec	sp
                                   1294 ;	main.c:198: printf_tiny("starting address of buffer 0 is %x\r\n",buffer_0_add);
      002442 90 2A B0         [24] 1295 	mov	dptr,#_buffer_0_add
      002445 E0               [24] 1296 	movx	a,@dptr
      002446 C0 E0            [24] 1297 	push	acc
      002448 A3               [24] 1298 	inc	dptr
      002449 E0               [24] 1299 	movx	a,@dptr
      00244A C0 E0            [24] 1300 	push	acc
      00244C 74 C0            [12] 1301 	mov	a,#___str_17
      00244E C0 E0            [24] 1302 	push	acc
      002450 74 35            [12] 1303 	mov	a,#(___str_17 >> 8)
      002452 C0 E0            [24] 1304 	push	acc
      002454 12 31 7A         [24] 1305 	lcall	_printf_tiny
      002457 E5 81            [12] 1306 	mov	a,sp
      002459 24 FC            [12] 1307 	add	a,#0xfc
      00245B F5 81            [12] 1308 	mov	sp,a
      00245D                       1309 00102$:
                                   1310 ;	main.c:201: buffer_1=(char *)malloc(num); // malloc num bytes and store in buffer_1
      00245D 85 12 82         [24] 1311 	mov	dpl,_main_sloc5_1_0
      002460 85 13 83         [24] 1312 	mov	dph,(_main_sloc5_1_0 + 1)
      002463 12 32 BF         [24] 1313 	lcall	_malloc
      002466 AC 82            [24] 1314 	mov	r4,dpl
      002468 AD 83            [24] 1315 	mov	r5,dph
      00246A 90 2A 4A         [24] 1316 	mov	dptr,#_buffer_1
      00246D EC               [12] 1317 	mov	a,r4
      00246E F0               [24] 1318 	movx	@dptr,a
      00246F ED               [12] 1319 	mov	a,r5
      002470 A3               [24] 1320 	inc	dptr
      002471 F0               [24] 1321 	movx	@dptr,a
                                   1322 ;	main.c:202: buffer_1_add = (unsigned int)buffer_1; //printing the starting address of buffer_1
      002472 8C 02            [24] 1323 	mov	ar2,r4
      002474 8D 03            [24] 1324 	mov	ar3,r5
      002476 90 2A B2         [24] 1325 	mov	dptr,#_buffer_1_add
      002479 EA               [12] 1326 	mov	a,r2
      00247A F0               [24] 1327 	movx	@dptr,a
      00247B EB               [12] 1328 	mov	a,r3
      00247C A3               [24] 1329 	inc	dptr
      00247D F0               [24] 1330 	movx	@dptr,a
                                   1331 ;	main.c:204: if(buffer_1 !=NULL)
      00247E EC               [12] 1332 	mov	a,r4
      00247F 4D               [12] 1333 	orl	a,r5
      002480 60 2A            [24] 1334 	jz	00193$
                                   1335 ;	main.c:206: printf_tiny("malloc for buffer1 is successful\r\n");
      002482 74 E5            [12] 1336 	mov	a,#___str_18
      002484 C0 E0            [24] 1337 	push	acc
      002486 74 35            [12] 1338 	mov	a,#(___str_18 >> 8)
      002488 C0 E0            [24] 1339 	push	acc
      00248A 12 31 7A         [24] 1340 	lcall	_printf_tiny
      00248D 15 81            [12] 1341 	dec	sp
      00248F 15 81            [12] 1342 	dec	sp
                                   1343 ;	main.c:207: printf_tiny("starting address of buffer 1 is %x\r\n",buffer_1_add);
      002491 90 2A B2         [24] 1344 	mov	dptr,#_buffer_1_add
      002494 E0               [24] 1345 	movx	a,@dptr
      002495 C0 E0            [24] 1346 	push	acc
      002497 A3               [24] 1347 	inc	dptr
      002498 E0               [24] 1348 	movx	a,@dptr
      002499 C0 E0            [24] 1349 	push	acc
      00249B 74 08            [12] 1350 	mov	a,#___str_19
      00249D C0 E0            [24] 1351 	push	acc
      00249F 74 36            [12] 1352 	mov	a,#(___str_19 >> 8)
      0024A1 C0 E0            [24] 1353 	push	acc
      0024A3 12 31 7A         [24] 1354 	lcall	_printf_tiny
      0024A6 E5 81            [12] 1355 	mov	a,sp
      0024A8 24 FC            [12] 1356 	add	a,#0xfc
      0024AA F5 81            [12] 1357 	mov	sp,a
                                   1358 ;	main.c:210: while(1)
      0024AC                       1359 00193$:
      0024AC 7C 00            [12] 1360 	mov	r4,#0x00
      0024AE 7D 00            [12] 1361 	mov	r5,#0x00
      0024B0 75 0E 02         [24] 1362 	mov	_main_sloc3_1_0,#0x02
                                   1363 ;	1-genFromRTrack replaced	mov	(_main_sloc3_1_0 + 1),#0x00
      0024B3 8D 0F            [24] 1364 	mov	(_main_sloc3_1_0 + 1),r5
      0024B5 E4               [12] 1365 	clr	a
      0024B6 F5 10            [12] 1366 	mov	_main_sloc4_1_0,a
      0024B8 F5 11            [12] 1367 	mov	(_main_sloc4_1_0 + 1),a
      0024BA                       1368 00173$:
                                   1369 ;	main.c:212: printf_tiny("Enter a character\r\n");
      0024BA C0 05            [24] 1370 	push	ar5
      0024BC C0 04            [24] 1371 	push	ar4
      0024BE 74 2D            [12] 1372 	mov	a,#___str_20
      0024C0 C0 E0            [24] 1373 	push	acc
      0024C2 74 36            [12] 1374 	mov	a,#(___str_20 >> 8)
      0024C4 C0 E0            [24] 1375 	push	acc
      0024C6 12 31 7A         [24] 1376 	lcall	_printf_tiny
      0024C9 15 81            [12] 1377 	dec	sp
      0024CB 15 81            [12] 1378 	dec	sp
                                   1379 ;	main.c:213: input_char = getchar();// take input for storage
      0024CD 12 20 88         [24] 1380 	lcall	_getchar
      0024D0 AA 82            [24] 1381 	mov	r2,dpl
      0024D2 AB 83            [24] 1382 	mov	r3,dph
      0024D4 90 2A B4         [24] 1383 	mov	dptr,#_input_char
      0024D7 EA               [12] 1384 	mov	a,r2
      0024D8 F0               [24] 1385 	movx	@dptr,a
      0024D9 EB               [12] 1386 	mov	a,r3
      0024DA A3               [24] 1387 	inc	dptr
      0024DB F0               [24] 1388 	movx	@dptr,a
                                   1389 ;	main.c:214: total_char++;
      0024DC 90 2B 36         [24] 1390 	mov	dptr,#_total_char
      0024DF E0               [24] 1391 	movx	a,@dptr
      0024E0 24 01            [12] 1392 	add	a,#0x01
      0024E2 F0               [24] 1393 	movx	@dptr,a
      0024E3 A3               [24] 1394 	inc	dptr
      0024E4 E0               [24] 1395 	movx	a,@dptr
      0024E5 34 00            [12] 1396 	addc	a,#0x00
      0024E7 F0               [24] 1397 	movx	@dptr,a
                                   1398 ;	main.c:215: putchar(input_char);
      0024E8 8A 82            [24] 1399 	mov	dpl,r2
      0024EA 8B 83            [24] 1400 	mov	dph,r3
      0024EC 12 20 69         [24] 1401 	lcall	_putchar
                                   1402 ;	main.c:217: printf_tiny("the input character is %d\r\n", input_char);
      0024EF 90 2A B4         [24] 1403 	mov	dptr,#_input_char
      0024F2 E0               [24] 1404 	movx	a,@dptr
      0024F3 C0 E0            [24] 1405 	push	acc
      0024F5 A3               [24] 1406 	inc	dptr
      0024F6 E0               [24] 1407 	movx	a,@dptr
      0024F7 C0 E0            [24] 1408 	push	acc
      0024F9 74 41            [12] 1409 	mov	a,#___str_21
      0024FB C0 E0            [24] 1410 	push	acc
      0024FD 74 36            [12] 1411 	mov	a,#(___str_21 >> 8)
      0024FF C0 E0            [24] 1412 	push	acc
      002501 12 31 7A         [24] 1413 	lcall	_printf_tiny
      002504 E5 81            [12] 1414 	mov	a,sp
      002506 24 FC            [12] 1415 	add	a,#0xfc
      002508 F5 81            [12] 1416 	mov	sp,a
      00250A D0 04            [24] 1417 	pop	ar4
      00250C D0 05            [24] 1418 	pop	ar5
                                   1419 ;	main.c:220: if(((count<num)&&(input_char>='a')&&(input_char<='z')))
      00250E 8C 02            [24] 1420 	mov	ar2,r4
      002510 8D 03            [24] 1421 	mov	ar3,r5
      002512 C3               [12] 1422 	clr	c
      002513 EA               [12] 1423 	mov	a,r2
      002514 95 12            [12] 1424 	subb	a,_main_sloc5_1_0
      002516 EB               [12] 1425 	mov	a,r3
      002517 95 13            [12] 1426 	subb	a,(_main_sloc5_1_0 + 1)
      002519 40 03            [24] 1427 	jc	00348$
      00251B 02 25 D0         [24] 1428 	ljmp	00168$
      00251E                       1429 00348$:
      00251E 90 2A B4         [24] 1430 	mov	dptr,#_input_char
      002521 E0               [24] 1431 	movx	a,@dptr
      002522 F5 08            [12] 1432 	mov	_main_sloc0_1_0,a
      002524 A3               [24] 1433 	inc	dptr
      002525 E0               [24] 1434 	movx	a,@dptr
      002526 F5 09            [12] 1435 	mov	(_main_sloc0_1_0 + 1),a
      002528 C3               [12] 1436 	clr	c
      002529 E5 08            [12] 1437 	mov	a,_main_sloc0_1_0
      00252B 94 61            [12] 1438 	subb	a,#0x61
      00252D E5 09            [12] 1439 	mov	a,(_main_sloc0_1_0 + 1)
      00252F 64 80            [12] 1440 	xrl	a,#0x80
      002531 94 80            [12] 1441 	subb	a,#0x80
      002533 50 03            [24] 1442 	jnc	00349$
      002535 02 25 D0         [24] 1443 	ljmp	00168$
      002538                       1444 00349$:
      002538 C3               [12] 1445 	clr	c
      002539 74 7A            [12] 1446 	mov	a,#0x7a
      00253B 95 08            [12] 1447 	subb	a,_main_sloc0_1_0
      00253D 74 80            [12] 1448 	mov	a,#(0x00 ^ 0x80)
      00253F 85 09 F0         [24] 1449 	mov	b,(_main_sloc0_1_0 + 1)
      002542 63 F0 80         [24] 1450 	xrl	b,#0x80
      002545 95 F0            [12] 1451 	subb	a,b
      002547 50 03            [24] 1452 	jnc	00350$
      002549 02 25 D0         [24] 1453 	ljmp	00168$
      00254C                       1454 00350$:
                                   1455 ;	main.c:222: storage++;
      00254C 90 2B 34         [24] 1456 	mov	dptr,#_storage
      00254F E0               [24] 1457 	movx	a,@dptr
      002550 24 01            [12] 1458 	add	a,#0x01
      002552 F0               [24] 1459 	movx	@dptr,a
      002553 A3               [24] 1460 	inc	dptr
      002554 E0               [24] 1461 	movx	a,@dptr
      002555 34 00            [12] 1462 	addc	a,#0x00
      002557 F0               [24] 1463 	movx	@dptr,a
                                   1464 ;	main.c:223: *((buffer_0)+count) = input_char;
      002558 90 2A 48         [24] 1465 	mov	dptr,#_buffer_0
      00255B E0               [24] 1466 	movx	a,@dptr
      00255C FA               [12] 1467 	mov	r2,a
      00255D A3               [24] 1468 	inc	dptr
      00255E E0               [24] 1469 	movx	a,@dptr
      00255F FB               [12] 1470 	mov	r3,a
      002560 EC               [12] 1471 	mov	a,r4
      002561 2A               [12] 1472 	add	a,r2
      002562 F5 82            [12] 1473 	mov	dpl,a
      002564 ED               [12] 1474 	mov	a,r5
      002565 3B               [12] 1475 	addc	a,r3
      002566 F5 83            [12] 1476 	mov	dph,a
      002568 E5 08            [12] 1477 	mov	a,_main_sloc0_1_0
      00256A F0               [24] 1478 	movx	@dptr,a
                                   1479 ;	main.c:224: int *p = ((buffer_0)+count);
      00256B 90 2A 48         [24] 1480 	mov	dptr,#_buffer_0
      00256E E0               [24] 1481 	movx	a,@dptr
      00256F FA               [12] 1482 	mov	r2,a
      002570 A3               [24] 1483 	inc	dptr
      002571 E0               [24] 1484 	movx	a,@dptr
      002572 FB               [12] 1485 	mov	r3,a
      002573 EC               [12] 1486 	mov	a,r4
      002574 2A               [12] 1487 	add	a,r2
      002575 FA               [12] 1488 	mov	r2,a
      002576 ED               [12] 1489 	mov	a,r5
      002577 3B               [12] 1490 	addc	a,r3
      002578 FB               [12] 1491 	mov	r3,a
      002579 90 2B 1E         [24] 1492 	mov	dptr,#_main_p_196609_66
      00257C EA               [12] 1493 	mov	a,r2
      00257D F0               [24] 1494 	movx	@dptr,a
      00257E EB               [12] 1495 	mov	a,r3
      00257F A3               [24] 1496 	inc	dptr
      002580 F0               [24] 1497 	movx	@dptr,a
      002581 E4               [12] 1498 	clr	a
      002582 A3               [24] 1499 	inc	dptr
      002583 F0               [24] 1500 	movx	@dptr,a
                                   1501 ;	main.c:225: count++;
      002584 0C               [12] 1502 	inc	r4
      002585 BC 00 01         [24] 1503 	cjne	r4,#0x00,00351$
      002588 0D               [12] 1504 	inc	r5
      002589                       1505 00351$:
                                   1506 ;	main.c:226: printf_tiny("buffer is \r\n%p",p);
      002589 C0 05            [24] 1507 	push	ar5
      00258B C0 04            [24] 1508 	push	ar4
      00258D 90 2B 1E         [24] 1509 	mov	dptr,#_main_p_196609_66
      002590 E0               [24] 1510 	movx	a,@dptr
      002591 C0 E0            [24] 1511 	push	acc
      002593 A3               [24] 1512 	inc	dptr
      002594 E0               [24] 1513 	movx	a,@dptr
      002595 C0 E0            [24] 1514 	push	acc
      002597 A3               [24] 1515 	inc	dptr
      002598 E0               [24] 1516 	movx	a,@dptr
      002599 C0 E0            [24] 1517 	push	acc
      00259B 74 5D            [12] 1518 	mov	a,#___str_22
      00259D C0 E0            [24] 1519 	push	acc
      00259F 74 36            [12] 1520 	mov	a,#(___str_22 >> 8)
      0025A1 C0 E0            [24] 1521 	push	acc
      0025A3 12 31 7A         [24] 1522 	lcall	_printf_tiny
      0025A6 E5 81            [12] 1523 	mov	a,sp
      0025A8 24 FB            [12] 1524 	add	a,#0xfb
      0025AA F5 81            [12] 1525 	mov	sp,a
      0025AC D0 04            [24] 1526 	pop	ar4
      0025AE D0 05            [24] 1527 	pop	ar5
                                   1528 ;	main.c:227: printf_tiny("count = %d\r\n",count);
      0025B0 C0 05            [24] 1529 	push	ar5
      0025B2 C0 04            [24] 1530 	push	ar4
      0025B4 C0 04            [24] 1531 	push	ar4
      0025B6 C0 05            [24] 1532 	push	ar5
      0025B8 74 6C            [12] 1533 	mov	a,#___str_23
      0025BA C0 E0            [24] 1534 	push	acc
      0025BC 74 36            [12] 1535 	mov	a,#(___str_23 >> 8)
      0025BE C0 E0            [24] 1536 	push	acc
      0025C0 12 31 7A         [24] 1537 	lcall	_printf_tiny
      0025C3 E5 81            [12] 1538 	mov	a,sp
      0025C5 24 FC            [12] 1539 	add	a,#0xfc
      0025C7 F5 81            [12] 1540 	mov	sp,a
      0025C9 D0 04            [24] 1541 	pop	ar4
      0025CB D0 05            [24] 1542 	pop	ar5
      0025CD 02 24 BA         [24] 1543 	ljmp	00173$
      0025D0                       1544 00168$:
                                   1545 ;	main.c:229: else if((count==num)&&(input_char != '-' )&&(input_char != '+')&&(input_char!='?')&&(input_char!='@')&&(input_char!='='))
      0025D0 8C 02            [24] 1546 	mov	ar2,r4
      0025D2 8D 03            [24] 1547 	mov	ar3,r5
      0025D4 EA               [12] 1548 	mov	a,r2
      0025D5 B5 12 68         [24] 1549 	cjne	a,_main_sloc5_1_0,00160$
      0025D8 EB               [12] 1550 	mov	a,r3
      0025D9 B5 13 64         [24] 1551 	cjne	a,(_main_sloc5_1_0 + 1),00160$
      0025DC 90 2A B4         [24] 1552 	mov	dptr,#_input_char
      0025DF E0               [24] 1553 	movx	a,@dptr
      0025E0 F5 08            [12] 1554 	mov	_main_sloc0_1_0,a
      0025E2 A3               [24] 1555 	inc	dptr
      0025E3 E0               [24] 1556 	movx	a,@dptr
      0025E4 F5 09            [12] 1557 	mov	(_main_sloc0_1_0 + 1),a
      0025E6 74 2D            [12] 1558 	mov	a,#0x2d
      0025E8 B5 08 06         [24] 1559 	cjne	a,_main_sloc0_1_0,00354$
      0025EB E4               [12] 1560 	clr	a
      0025EC B5 09 02         [24] 1561 	cjne	a,(_main_sloc0_1_0 + 1),00354$
      0025EF 80 4F            [24] 1562 	sjmp	00160$
      0025F1                       1563 00354$:
      0025F1 74 2B            [12] 1564 	mov	a,#0x2b
      0025F3 B5 08 06         [24] 1565 	cjne	a,_main_sloc0_1_0,00355$
      0025F6 E4               [12] 1566 	clr	a
      0025F7 B5 09 02         [24] 1567 	cjne	a,(_main_sloc0_1_0 + 1),00355$
      0025FA 80 44            [24] 1568 	sjmp	00160$
      0025FC                       1569 00355$:
      0025FC 74 3F            [12] 1570 	mov	a,#0x3f
      0025FE B5 08 06         [24] 1571 	cjne	a,_main_sloc0_1_0,00356$
      002601 E4               [12] 1572 	clr	a
      002602 B5 09 02         [24] 1573 	cjne	a,(_main_sloc0_1_0 + 1),00356$
      002605 80 39            [24] 1574 	sjmp	00160$
      002607                       1575 00356$:
      002607 74 40            [12] 1576 	mov	a,#0x40
      002609 B5 08 06         [24] 1577 	cjne	a,_main_sloc0_1_0,00357$
      00260C E4               [12] 1578 	clr	a
      00260D B5 09 02         [24] 1579 	cjne	a,(_main_sloc0_1_0 + 1),00357$
      002610 80 2E            [24] 1580 	sjmp	00160$
      002612                       1581 00357$:
      002612 74 3D            [12] 1582 	mov	a,#0x3d
      002614 B5 08 06         [24] 1583 	cjne	a,_main_sloc0_1_0,00358$
      002617 E4               [12] 1584 	clr	a
      002618 B5 09 02         [24] 1585 	cjne	a,(_main_sloc0_1_0 + 1),00358$
      00261B 80 23            [24] 1586 	sjmp	00160$
      00261D                       1587 00358$:
                                   1588 ;	main.c:231: putchar(input_char);
      00261D 85 08 82         [24] 1589 	mov	dpl,_main_sloc0_1_0
      002620 85 09 83         [24] 1590 	mov	dph,(_main_sloc0_1_0 + 1)
      002623 C0 05            [24] 1591 	push	ar5
      002625 C0 04            [24] 1592 	push	ar4
      002627 12 20 69         [24] 1593 	lcall	_putchar
                                   1594 ;	main.c:232: printf_tiny("buffer is full\r\n");
      00262A 74 79            [12] 1595 	mov	a,#___str_24
      00262C C0 E0            [24] 1596 	push	acc
      00262E 74 36            [12] 1597 	mov	a,#(___str_24 >> 8)
      002630 C0 E0            [24] 1598 	push	acc
      002632 12 31 7A         [24] 1599 	lcall	_printf_tiny
      002635 15 81            [12] 1600 	dec	sp
      002637 15 81            [12] 1601 	dec	sp
      002639 D0 04            [24] 1602 	pop	ar4
      00263B D0 05            [24] 1603 	pop	ar5
      00263D 02 24 BA         [24] 1604 	ljmp	00173$
      002640                       1605 00160$:
                                   1606 ;	main.c:235: else if (input_char == '+')
      002640 90 2A B4         [24] 1607 	mov	dptr,#_input_char
      002643 E0               [24] 1608 	movx	a,@dptr
      002644 F5 08            [12] 1609 	mov	_main_sloc0_1_0,a
      002646 A3               [24] 1610 	inc	dptr
      002647 E0               [24] 1611 	movx	a,@dptr
      002648 F5 09            [12] 1612 	mov	(_main_sloc0_1_0 + 1),a
      00264A 74 2B            [12] 1613 	mov	a,#0x2b
      00264C B5 08 06         [24] 1614 	cjne	a,_main_sloc0_1_0,00359$
      00264F E4               [12] 1615 	clr	a
      002650 B5 09 02         [24] 1616 	cjne	a,(_main_sloc0_1_0 + 1),00359$
      002653 80 03            [24] 1617 	sjmp	00360$
      002655                       1618 00359$:
      002655 02 27 99         [24] 1619 	ljmp	00157$
      002658                       1620 00360$:
                                   1621 ;	main.c:237: printf_tiny(" Allocating a new buffer\r\n");
      002658 C0 05            [24] 1622 	push	ar5
      00265A C0 04            [24] 1623 	push	ar4
      00265C 74 8A            [12] 1624 	mov	a,#___str_25
      00265E C0 E0            [24] 1625 	push	acc
      002660 74 36            [12] 1626 	mov	a,#(___str_25 >> 8)
      002662 C0 E0            [24] 1627 	push	acc
      002664 12 31 7A         [24] 1628 	lcall	_printf_tiny
      002667 15 81            [12] 1629 	dec	sp
      002669 15 81            [12] 1630 	dec	sp
                                   1631 ;	main.c:238: printf_tiny("enter a new value between 30 and 300\r\n");
      00266B 74 A5            [12] 1632 	mov	a,#___str_26
      00266D C0 E0            [24] 1633 	push	acc
      00266F 74 36            [12] 1634 	mov	a,#(___str_26 >> 8)
      002671 C0 E0            [24] 1635 	push	acc
      002673 12 31 7A         [24] 1636 	lcall	_printf_tiny
      002676 15 81            [12] 1637 	dec	sp
      002678 15 81            [12] 1638 	dec	sp
                                   1639 ;	main.c:239: number2 = getinput_30_300(); // values between30 and 300 are accepted
      00267A 12 22 6C         [24] 1640 	lcall	_getinput_30_300
      00267D 85 82 0A         [24] 1641 	mov	_main_sloc1_1_0,dpl
      002680 85 83 0B         [24] 1642 	mov	(_main_sloc1_1_0 + 1),dph
                                   1643 ;	main.c:241: buffer_n[j] = (char*)malloc(number2); // allocating new buffer with memory
      002683 E5 10            [12] 1644 	mov	a,_main_sloc4_1_0
      002685 25 10            [12] 1645 	add	a,_main_sloc4_1_0
      002687 FA               [12] 1646 	mov	r2,a
      002688 E5 11            [12] 1647 	mov	a,(_main_sloc4_1_0 + 1)
      00268A 33               [12] 1648 	rlc	a
      00268B FB               [12] 1649 	mov	r3,a
      00268C EA               [12] 1650 	mov	a,r2
      00268D 24 4C            [12] 1651 	add	a,#_buffer_n
      00268F F5 0C            [12] 1652 	mov	_main_sloc2_1_0,a
      002691 EB               [12] 1653 	mov	a,r3
      002692 34 2A            [12] 1654 	addc	a,#(_buffer_n >> 8)
      002694 F5 0D            [12] 1655 	mov	(_main_sloc2_1_0 + 1),a
      002696 85 0A 82         [24] 1656 	mov	dpl,_main_sloc1_1_0
      002699 85 0B 83         [24] 1657 	mov	dph,(_main_sloc1_1_0 + 1)
      00269C 12 32 BF         [24] 1658 	lcall	_malloc
      00269F AA 82            [24] 1659 	mov	r2,dpl
      0026A1 AB 83            [24] 1660 	mov	r3,dph
      0026A3 D0 04            [24] 1661 	pop	ar4
      0026A5 D0 05            [24] 1662 	pop	ar5
      0026A7 85 0C 82         [24] 1663 	mov	dpl,_main_sloc2_1_0
      0026AA 85 0D 83         [24] 1664 	mov	dph,(_main_sloc2_1_0 + 1)
      0026AD EA               [12] 1665 	mov	a,r2
      0026AE F0               [24] 1666 	movx	@dptr,a
      0026AF EB               [12] 1667 	mov	a,r3
      0026B0 A3               [24] 1668 	inc	dptr
      0026B1 F0               [24] 1669 	movx	@dptr,a
                                   1670 ;	main.c:243: if(buffer_n[j]==NULL)
      0026B2 EA               [12] 1671 	mov	a,r2
      0026B3 4B               [12] 1672 	orl	a,r3
      0026B4 70 29            [24] 1673 	jnz	00106$
                                   1674 ;	main.c:245: printf_tiny("\n\rMemory Allocation for Buffer_%d Failed\n\rPress '+' to Try again\n\r",j+2);
      0026B6 74 02            [12] 1675 	mov	a,#0x02
      0026B8 25 10            [12] 1676 	add	a,_main_sloc4_1_0
      0026BA FA               [12] 1677 	mov	r2,a
      0026BB E4               [12] 1678 	clr	a
      0026BC 35 11            [12] 1679 	addc	a,(_main_sloc4_1_0 + 1)
      0026BE FB               [12] 1680 	mov	r3,a
      0026BF C0 05            [24] 1681 	push	ar5
      0026C1 C0 04            [24] 1682 	push	ar4
      0026C3 C0 02            [24] 1683 	push	ar2
      0026C5 C0 03            [24] 1684 	push	ar3
      0026C7 74 CC            [12] 1685 	mov	a,#___str_27
      0026C9 C0 E0            [24] 1686 	push	acc
      0026CB 74 36            [12] 1687 	mov	a,#(___str_27 >> 8)
      0026CD C0 E0            [24] 1688 	push	acc
      0026CF 12 31 7A         [24] 1689 	lcall	_printf_tiny
      0026D2 E5 81            [12] 1690 	mov	a,sp
      0026D4 24 FC            [12] 1691 	add	a,#0xfc
      0026D6 F5 81            [12] 1692 	mov	sp,a
      0026D8 D0 04            [24] 1693 	pop	ar4
      0026DA D0 05            [24] 1694 	pop	ar5
      0026DC 02 24 BA         [24] 1695 	ljmp	00173$
      0026DF                       1696 00106$:
                                   1697 ;	main.c:249: printf_tiny("\n\rMemory Allocation Successful for Buffer_%d\n\r",(j+2));
      0026DF C0 04            [24] 1698 	push	ar4
      0026E1 C0 05            [24] 1699 	push	ar5
      0026E3 74 02            [12] 1700 	mov	a,#0x02
      0026E5 25 10            [12] 1701 	add	a,_main_sloc4_1_0
      0026E7 FC               [12] 1702 	mov	r4,a
      0026E8 E4               [12] 1703 	clr	a
      0026E9 35 11            [12] 1704 	addc	a,(_main_sloc4_1_0 + 1)
      0026EB FD               [12] 1705 	mov	r5,a
      0026EC C0 05            [24] 1706 	push	ar5
      0026EE C0 04            [24] 1707 	push	ar4
      0026F0 C0 04            [24] 1708 	push	ar4
      0026F2 C0 05            [24] 1709 	push	ar5
      0026F4 74 0F            [12] 1710 	mov	a,#___str_28
      0026F6 C0 E0            [24] 1711 	push	acc
      0026F8 74 37            [12] 1712 	mov	a,#(___str_28 >> 8)
      0026FA C0 E0            [24] 1713 	push	acc
      0026FC 12 31 7A         [24] 1714 	lcall	_printf_tiny
      0026FF E5 81            [12] 1715 	mov	a,sp
      002701 24 FC            [12] 1716 	add	a,#0xfc
      002703 F5 81            [12] 1717 	mov	sp,a
      002705 D0 04            [24] 1718 	pop	ar4
      002707 D0 05            [24] 1719 	pop	ar5
                                   1720 ;	main.c:250: printf_tiny("\n\rBuffer_%d allocated of size %d\n\r",(j+2),number2);
      002709 C0 05            [24] 1721 	push	ar5
      00270B C0 04            [24] 1722 	push	ar4
      00270D C0 0A            [24] 1723 	push	_main_sloc1_1_0
      00270F C0 0B            [24] 1724 	push	(_main_sloc1_1_0 + 1)
      002711 C0 04            [24] 1725 	push	ar4
      002713 C0 05            [24] 1726 	push	ar5
      002715 74 3E            [12] 1727 	mov	a,#___str_29
      002717 C0 E0            [24] 1728 	push	acc
      002719 74 37            [12] 1729 	mov	a,#(___str_29 >> 8)
      00271B C0 E0            [24] 1730 	push	acc
      00271D 12 31 7A         [24] 1731 	lcall	_printf_tiny
      002720 E5 81            [12] 1732 	mov	a,sp
      002722 24 FA            [12] 1733 	add	a,#0xfa
      002724 F5 81            [12] 1734 	mov	sp,a
      002726 D0 04            [24] 1735 	pop	ar4
      002728 D0 05            [24] 1736 	pop	ar5
                                   1737 ;	main.c:251: printf_tiny("\n\rAddress of buffer_%d = 0x%x\n\r",(j+2),(uint16_t)(buffer_n[i]));
      00272A 90 2B 38         [24] 1738 	mov	dptr,#_i
      00272D E0               [24] 1739 	movx	a,@dptr
      00272E FA               [12] 1740 	mov	r2,a
      00272F A3               [24] 1741 	inc	dptr
      002730 E0               [24] 1742 	movx	a,@dptr
      002731 FB               [12] 1743 	mov	r3,a
      002732 EA               [12] 1744 	mov	a,r2
      002733 2A               [12] 1745 	add	a,r2
      002734 FA               [12] 1746 	mov	r2,a
      002735 EB               [12] 1747 	mov	a,r3
      002736 33               [12] 1748 	rlc	a
      002737 FB               [12] 1749 	mov	r3,a
      002738 EA               [12] 1750 	mov	a,r2
      002739 24 4C            [12] 1751 	add	a,#_buffer_n
      00273B F5 82            [12] 1752 	mov	dpl,a
      00273D EB               [12] 1753 	mov	a,r3
      00273E 34 2A            [12] 1754 	addc	a,#(_buffer_n >> 8)
      002740 F5 83            [12] 1755 	mov	dph,a
      002742 E0               [24] 1756 	movx	a,@dptr
      002743 FA               [12] 1757 	mov	r2,a
      002744 A3               [24] 1758 	inc	dptr
      002745 E0               [24] 1759 	movx	a,@dptr
      002746 FB               [12] 1760 	mov	r3,a
      002747 C0 05            [24] 1761 	push	ar5
      002749 C0 04            [24] 1762 	push	ar4
      00274B C0 02            [24] 1763 	push	ar2
      00274D C0 03            [24] 1764 	push	ar3
      00274F C0 04            [24] 1765 	push	ar4
      002751 C0 05            [24] 1766 	push	ar5
      002753 74 61            [12] 1767 	mov	a,#___str_30
      002755 C0 E0            [24] 1768 	push	acc
      002757 74 37            [12] 1769 	mov	a,#(___str_30 >> 8)
      002759 C0 E0            [24] 1770 	push	acc
      00275B 12 31 7A         [24] 1771 	lcall	_printf_tiny
      00275E E5 81            [12] 1772 	mov	a,sp
      002760 24 FA            [12] 1773 	add	a,#0xfa
      002762 F5 81            [12] 1774 	mov	sp,a
      002764 D0 04            [24] 1775 	pop	ar4
      002766 D0 05            [24] 1776 	pop	ar5
                                   1777 ;	main.c:252: buff_size[t]=number2;              //store size of newly allocated buffer to buff_size array
      002768 E5 0E            [12] 1778 	mov	a,_main_sloc3_1_0
      00276A 25 0E            [12] 1779 	add	a,_main_sloc3_1_0
      00276C FC               [12] 1780 	mov	r4,a
      00276D E5 0F            [12] 1781 	mov	a,(_main_sloc3_1_0 + 1)
      00276F 33               [12] 1782 	rlc	a
      002770 FD               [12] 1783 	mov	r5,a
      002771 EC               [12] 1784 	mov	a,r4
      002772 24 BA            [12] 1785 	add	a,#_main_buff_size_65536_61
      002774 F5 82            [12] 1786 	mov	dpl,a
      002776 ED               [12] 1787 	mov	a,r5
      002777 34 2A            [12] 1788 	addc	a,#(_main_buff_size_65536_61 >> 8)
      002779 F5 83            [12] 1789 	mov	dph,a
      00277B E5 0A            [12] 1790 	mov	a,_main_sloc1_1_0
      00277D F0               [24] 1791 	movx	@dptr,a
      00277E E5 0B            [12] 1792 	mov	a,(_main_sloc1_1_0 + 1)
      002780 A3               [24] 1793 	inc	dptr
      002781 F0               [24] 1794 	movx	@dptr,a
                                   1795 ;	main.c:253: t++;
      002782 05 0E            [12] 1796 	inc	_main_sloc3_1_0
      002784 E4               [12] 1797 	clr	a
      002785 B5 0E 02         [24] 1798 	cjne	a,_main_sloc3_1_0,00362$
      002788 05 0F            [12] 1799 	inc	(_main_sloc3_1_0 + 1)
      00278A                       1800 00362$:
                                   1801 ;	main.c:254: j++;
      00278A 05 10            [12] 1802 	inc	_main_sloc4_1_0
      00278C E4               [12] 1803 	clr	a
      00278D B5 10 02         [24] 1804 	cjne	a,_main_sloc4_1_0,00363$
      002790 05 11            [12] 1805 	inc	(_main_sloc4_1_0 + 1)
      002792                       1806 00363$:
      002792 D0 05            [24] 1807 	pop	ar5
      002794 D0 04            [24] 1808 	pop	ar4
      002796 02 24 BA         [24] 1809 	ljmp	00173$
      002799                       1810 00157$:
                                   1811 ;	main.c:258: else if (input_char == '-')
      002799 74 2D            [12] 1812 	mov	a,#0x2d
      00279B B5 08 06         [24] 1813 	cjne	a,_main_sloc0_1_0,00364$
      00279E E4               [12] 1814 	clr	a
      00279F B5 09 02         [24] 1815 	cjne	a,(_main_sloc0_1_0 + 1),00364$
      0027A2 80 03            [24] 1816 	sjmp	00365$
      0027A4                       1817 00364$:
      0027A4 02 29 53         [24] 1818 	ljmp	00154$
      0027A7                       1819 00365$:
                                   1820 ;	main.c:260: printf_tiny("\n\rEnter a valid buffer number\n\r");
      0027A7 C0 05            [24] 1821 	push	ar5
      0027A9 C0 04            [24] 1822 	push	ar4
      0027AB 74 81            [12] 1823 	mov	a,#___str_31
      0027AD C0 E0            [24] 1824 	push	acc
      0027AF 74 37            [12] 1825 	mov	a,#(___str_31 >> 8)
      0027B1 C0 E0            [24] 1826 	push	acc
      0027B3 12 31 7A         [24] 1827 	lcall	_printf_tiny
      0027B6 15 81            [12] 1828 	dec	sp
      0027B8 15 81            [12] 1829 	dec	sp
                                   1830 ;	main.c:261: num_del = del_num();
      0027BA 12 23 94         [24] 1831 	lcall	_del_num
      0027BD AA 82            [24] 1832 	mov	r2,dpl
      0027BF AB 83            [24] 1833 	mov	r3,dph
      0027C1 D0 04            [24] 1834 	pop	ar4
      0027C3 D0 05            [24] 1835 	pop	ar5
                                   1836 ;	main.c:263: if(num_del == 0)
      0027C5 EA               [12] 1837 	mov	a,r2
      0027C6 4B               [12] 1838 	orl	a,r3
      0027C7 70 1A            [24] 1839 	jnz	00116$
                                   1840 ;	main.c:265: printf_tiny("\n\rBuffer 0 cannot be deleted!\n\r");
      0027C9 C0 05            [24] 1841 	push	ar5
      0027CB C0 04            [24] 1842 	push	ar4
      0027CD 74 A1            [12] 1843 	mov	a,#___str_32
      0027CF C0 E0            [24] 1844 	push	acc
      0027D1 74 37            [12] 1845 	mov	a,#(___str_32 >> 8)
      0027D3 C0 E0            [24] 1846 	push	acc
      0027D5 12 31 7A         [24] 1847 	lcall	_printf_tiny
      0027D8 15 81            [12] 1848 	dec	sp
      0027DA 15 81            [12] 1849 	dec	sp
      0027DC D0 04            [24] 1850 	pop	ar4
      0027DE D0 05            [24] 1851 	pop	ar5
      0027E0 02 24 BA         [24] 1852 	ljmp	00173$
      0027E3                       1853 00116$:
                                   1854 ;	main.c:267: else if(num_del == 1)
      0027E3 BA 01 64         [24] 1855 	cjne	r2,#0x01,00113$
      0027E6 BB 00 61         [24] 1856 	cjne	r3,#0x00,00113$
                                   1857 ;	main.c:269: free(buffer_1);
      0027E9 C0 04            [24] 1858 	push	ar4
      0027EB C0 05            [24] 1859 	push	ar5
      0027ED 90 2A 4A         [24] 1860 	mov	dptr,#_buffer_1
      0027F0 E0               [24] 1861 	movx	a,@dptr
      0027F1 FC               [12] 1862 	mov	r4,a
      0027F2 A3               [24] 1863 	inc	dptr
      0027F3 E0               [24] 1864 	movx	a,@dptr
      0027F4 F9               [12] 1865 	mov	r1,a
      0027F5 7D 00            [12] 1866 	mov	r5,#0x00
      0027F7 8C 82            [24] 1867 	mov	dpl,r4
      0027F9 89 83            [24] 1868 	mov	dph,r1
      0027FB 8D F0            [24] 1869 	mov	b,r5
      0027FD C0 05            [24] 1870 	push	ar5
      0027FF C0 04            [24] 1871 	push	ar4
      002801 12 30 23         [24] 1872 	lcall	_free
      002804 D0 04            [24] 1873 	pop	ar4
      002806 D0 05            [24] 1874 	pop	ar5
                                   1875 ;	main.c:270: printf_tiny("\n\rBuffer 1>%d\n\r",(unsigned int)buffer_1);
      002808 90 2A 4A         [24] 1876 	mov	dptr,#_buffer_1
      00280B E0               [24] 1877 	movx	a,@dptr
      00280C FC               [12] 1878 	mov	r4,a
      00280D A3               [24] 1879 	inc	dptr
      00280E E0               [24] 1880 	movx	a,@dptr
      00280F FD               [12] 1881 	mov	r5,a
      002810 C0 05            [24] 1882 	push	ar5
      002812 C0 04            [24] 1883 	push	ar4
      002814 C0 04            [24] 1884 	push	ar4
      002816 C0 05            [24] 1885 	push	ar5
      002818 74 C1            [12] 1886 	mov	a,#___str_33
      00281A C0 E0            [24] 1887 	push	acc
      00281C 74 37            [12] 1888 	mov	a,#(___str_33 >> 8)
      00281E C0 E0            [24] 1889 	push	acc
      002820 12 31 7A         [24] 1890 	lcall	_printf_tiny
      002823 E5 81            [12] 1891 	mov	a,sp
      002825 24 FC            [12] 1892 	add	a,#0xfc
      002827 F5 81            [12] 1893 	mov	sp,a
                                   1894 ;	main.c:271: buffer_1 = 0;
      002829 90 2A 4A         [24] 1895 	mov	dptr,#_buffer_1
      00282C E4               [12] 1896 	clr	a
      00282D F0               [24] 1897 	movx	@dptr,a
      00282E A3               [24] 1898 	inc	dptr
      00282F F0               [24] 1899 	movx	@dptr,a
                                   1900 ;	main.c:272: printf_tiny("Buffer 1 deleted\r\n");
      002830 74 D1            [12] 1901 	mov	a,#___str_34
      002832 C0 E0            [24] 1902 	push	acc
      002834 74 37            [12] 1903 	mov	a,#(___str_34 >> 8)
      002836 C0 E0            [24] 1904 	push	acc
      002838 12 31 7A         [24] 1905 	lcall	_printf_tiny
      00283B 15 81            [12] 1906 	dec	sp
      00283D 15 81            [12] 1907 	dec	sp
      00283F D0 04            [24] 1908 	pop	ar4
      002841 D0 05            [24] 1909 	pop	ar5
      002843 D0 05            [24] 1910 	pop	ar5
      002845 D0 04            [24] 1911 	pop	ar4
      002847 02 24 BA         [24] 1912 	ljmp	00173$
      00284A                       1913 00113$:
                                   1914 ;	main.c:274: else if(((num_del>1))&&(num_del<=(j+2)))
      00284A 8A 00            [24] 1915 	mov	ar0,r2
      00284C 8B 01            [24] 1916 	mov	ar1,r3
      00284E C3               [12] 1917 	clr	c
      00284F 74 01            [12] 1918 	mov	a,#0x01
      002851 98               [12] 1919 	subb	a,r0
      002852 E4               [12] 1920 	clr	a
      002853 99               [12] 1921 	subb	a,r1
      002854 40 03            [24] 1922 	jc	00369$
      002856 02 29 39         [24] 1923 	ljmp	00109$
      002859                       1924 00369$:
      002859 C0 04            [24] 1925 	push	ar4
      00285B C0 05            [24] 1926 	push	ar5
      00285D 74 02            [12] 1927 	mov	a,#0x02
      00285F 25 10            [12] 1928 	add	a,_main_sloc4_1_0
      002861 F8               [12] 1929 	mov	r0,a
      002862 E4               [12] 1930 	clr	a
      002863 35 11            [12] 1931 	addc	a,(_main_sloc4_1_0 + 1)
      002865 F9               [12] 1932 	mov	r1,a
      002866 8A 04            [24] 1933 	mov	ar4,r2
      002868 8B 05            [24] 1934 	mov	ar5,r3
      00286A C3               [12] 1935 	clr	c
      00286B E8               [12] 1936 	mov	a,r0
      00286C 9C               [12] 1937 	subb	a,r4
      00286D E9               [12] 1938 	mov	a,r1
      00286E 9D               [12] 1939 	subb	a,r5
      00286F D0 05            [24] 1940 	pop	ar5
      002871 D0 04            [24] 1941 	pop	ar4
      002873 50 03            [24] 1942 	jnc	00370$
      002875 02 29 39         [24] 1943 	ljmp	00109$
      002878                       1944 00370$:
                                   1945 ;	main.c:276: printf_tiny("\n\rDeleting buffer_%d.........\n\r",num_del);
      002878 C0 04            [24] 1946 	push	ar4
      00287A C0 05            [24] 1947 	push	ar5
      00287C C0 05            [24] 1948 	push	ar5
      00287E C0 04            [24] 1949 	push	ar4
      002880 C0 03            [24] 1950 	push	ar3
      002882 C0 02            [24] 1951 	push	ar2
      002884 C0 02            [24] 1952 	push	ar2
      002886 C0 03            [24] 1953 	push	ar3
      002888 74 E4            [12] 1954 	mov	a,#___str_35
      00288A C0 E0            [24] 1955 	push	acc
      00288C 74 37            [12] 1956 	mov	a,#(___str_35 >> 8)
      00288E C0 E0            [24] 1957 	push	acc
      002890 12 31 7A         [24] 1958 	lcall	_printf_tiny
      002893 E5 81            [12] 1959 	mov	a,sp
      002895 24 FC            [12] 1960 	add	a,#0xfc
      002897 F5 81            [12] 1961 	mov	sp,a
      002899 D0 02            [24] 1962 	pop	ar2
      00289B D0 03            [24] 1963 	pop	ar3
      00289D D0 04            [24] 1964 	pop	ar4
      00289F D0 05            [24] 1965 	pop	ar5
                                   1966 ;	main.c:277: free(buffer_n[num_del-2]);
      0028A1 8A 00            [24] 1967 	mov	ar0,r2
      0028A3 18               [12] 1968 	dec	r0
      0028A4 18               [12] 1969 	dec	r0
      0028A5 C2 D5            [12] 1970 	clr	F0
      0028A7 75 F0 02         [24] 1971 	mov	b,#0x02
      0028AA E8               [12] 1972 	mov	a,r0
      0028AB 30 E7 04         [24] 1973 	jnb	acc.7,00371$
      0028AE B2 D5            [12] 1974 	cpl	F0
      0028B0 F4               [12] 1975 	cpl	a
      0028B1 04               [12] 1976 	inc	a
      0028B2                       1977 00371$:
      0028B2 A4               [48] 1978 	mul	ab
      0028B3 30 D5 0A         [24] 1979 	jnb	F0,00372$
      0028B6 F4               [12] 1980 	cpl	a
      0028B7 24 01            [12] 1981 	add	a,#0x01
      0028B9 C5 F0            [12] 1982 	xch	a,b
      0028BB F4               [12] 1983 	cpl	a
      0028BC 34 00            [12] 1984 	addc	a,#0x00
      0028BE C5 F0            [12] 1985 	xch	a,b
      0028C0                       1986 00372$:
      0028C0 24 4C            [12] 1987 	add	a,#_buffer_n
      0028C2 F5 82            [12] 1988 	mov	dpl,a
      0028C4 74 2A            [12] 1989 	mov	a,#(_buffer_n >> 8)
      0028C6 35 F0            [12] 1990 	addc	a,b
      0028C8 F5 83            [12] 1991 	mov	dph,a
      0028CA E0               [24] 1992 	movx	a,@dptr
      0028CB F8               [12] 1993 	mov	r0,a
      0028CC A3               [24] 1994 	inc	dptr
      0028CD E0               [24] 1995 	movx	a,@dptr
      0028CE F9               [12] 1996 	mov	r1,a
      0028CF 7D 00            [12] 1997 	mov	r5,#0x00
      0028D1 88 82            [24] 1998 	mov	dpl,r0
      0028D3 89 83            [24] 1999 	mov	dph,r1
      0028D5 8D F0            [24] 2000 	mov	b,r5
      0028D7 C0 05            [24] 2001 	push	ar5
      0028D9 C0 04            [24] 2002 	push	ar4
      0028DB C0 03            [24] 2003 	push	ar3
      0028DD C0 02            [24] 2004 	push	ar2
      0028DF 12 30 23         [24] 2005 	lcall	_free
      0028E2 D0 02            [24] 2006 	pop	ar2
      0028E4 D0 03            [24] 2007 	pop	ar3
                                   2008 ;	main.c:278: printf_tiny("\n\rBuffer %d  is free\n\r",num_del);
      0028E6 C0 03            [24] 2009 	push	ar3
      0028E8 C0 02            [24] 2010 	push	ar2
      0028EA C0 02            [24] 2011 	push	ar2
      0028EC C0 03            [24] 2012 	push	ar3
      0028EE 74 04            [12] 2013 	mov	a,#___str_36
      0028F0 C0 E0            [24] 2014 	push	acc
      0028F2 74 38            [12] 2015 	mov	a,#(___str_36 >> 8)
      0028F4 C0 E0            [24] 2016 	push	acc
      0028F6 12 31 7A         [24] 2017 	lcall	_printf_tiny
      0028F9 E5 81            [12] 2018 	mov	a,sp
      0028FB 24 FC            [12] 2019 	add	a,#0xfc
      0028FD F5 81            [12] 2020 	mov	sp,a
      0028FF D0 02            [24] 2021 	pop	ar2
      002901 D0 03            [24] 2022 	pop	ar3
      002903 D0 04            [24] 2023 	pop	ar4
      002905 D0 05            [24] 2024 	pop	ar5
                                   2025 ;	main.c:279: buffer_n[num_del-2]=0;
      002907 1A               [12] 2026 	dec	r2
      002908 1A               [12] 2027 	dec	r2
      002909 C2 D5            [12] 2028 	clr	F0
      00290B 75 F0 02         [24] 2029 	mov	b,#0x02
      00290E EA               [12] 2030 	mov	a,r2
      00290F 30 E7 04         [24] 2031 	jnb	acc.7,00373$
      002912 B2 D5            [12] 2032 	cpl	F0
      002914 F4               [12] 2033 	cpl	a
      002915 04               [12] 2034 	inc	a
      002916                       2035 00373$:
      002916 A4               [48] 2036 	mul	ab
      002917 30 D5 0A         [24] 2037 	jnb	F0,00374$
      00291A F4               [12] 2038 	cpl	a
      00291B 24 01            [12] 2039 	add	a,#0x01
      00291D C5 F0            [12] 2040 	xch	a,b
      00291F F4               [12] 2041 	cpl	a
      002920 34 00            [12] 2042 	addc	a,#0x00
      002922 C5 F0            [12] 2043 	xch	a,b
      002924                       2044 00374$:
      002924 24 4C            [12] 2045 	add	a,#_buffer_n
      002926 F5 82            [12] 2046 	mov	dpl,a
      002928 74 2A            [12] 2047 	mov	a,#(_buffer_n >> 8)
      00292A 35 F0            [12] 2048 	addc	a,b
      00292C F5 83            [12] 2049 	mov	dph,a
      00292E E4               [12] 2050 	clr	a
      00292F F0               [24] 2051 	movx	@dptr,a
      002930 A3               [24] 2052 	inc	dptr
      002931 F0               [24] 2053 	movx	@dptr,a
      002932 D0 05            [24] 2054 	pop	ar5
      002934 D0 04            [24] 2055 	pop	ar4
      002936 02 24 BA         [24] 2056 	ljmp	00173$
      002939                       2057 00109$:
                                   2058 ;	main.c:284: printf_tiny("\n\rEnter a valid buffer number\n\rPress '-' to delete any valid buffer\n\r");
      002939 C0 05            [24] 2059 	push	ar5
      00293B C0 04            [24] 2060 	push	ar4
      00293D 74 1B            [12] 2061 	mov	a,#___str_37
      00293F C0 E0            [24] 2062 	push	acc
      002941 74 38            [12] 2063 	mov	a,#(___str_37 >> 8)
      002943 C0 E0            [24] 2064 	push	acc
      002945 12 31 7A         [24] 2065 	lcall	_printf_tiny
      002948 15 81            [12] 2066 	dec	sp
      00294A 15 81            [12] 2067 	dec	sp
      00294C D0 04            [24] 2068 	pop	ar4
      00294E D0 05            [24] 2069 	pop	ar5
      002950 02 24 BA         [24] 2070 	ljmp	00173$
      002953                       2071 00154$:
                                   2072 ;	main.c:288: else if (input_char == '?')
      002953 74 3F            [12] 2073 	mov	a,#0x3f
      002955 B5 08 06         [24] 2074 	cjne	a,_main_sloc0_1_0,00375$
      002958 E4               [12] 2075 	clr	a
      002959 B5 09 02         [24] 2076 	cjne	a,(_main_sloc0_1_0 + 1),00375$
      00295C 80 03            [24] 2077 	sjmp	00376$
      00295E                       2078 00375$:
      00295E 02 2C ED         [24] 2079 	ljmp	00151$
      002961                       2080 00376$:
                                   2081 ;	main.c:290: printf_tiny(" HEAP REPORT of buffer_0 \r\n");
      002961 C0 05            [24] 2082 	push	ar5
      002963 C0 04            [24] 2083 	push	ar4
      002965 74 61            [12] 2084 	mov	a,#___str_38
      002967 C0 E0            [24] 2085 	push	acc
      002969 74 38            [12] 2086 	mov	a,#(___str_38 >> 8)
      00296B C0 E0            [24] 2087 	push	acc
      00296D 12 31 7A         [24] 2088 	lcall	_printf_tiny
      002970 15 81            [12] 2089 	dec	sp
      002972 15 81            [12] 2090 	dec	sp
                                   2091 ;	main.c:291: printf_tiny("\n\rStart Addressof buffer_0x%x\n\r",buffer_0_add);
      002974 90 2A B0         [24] 2092 	mov	dptr,#_buffer_0_add
      002977 E0               [24] 2093 	movx	a,@dptr
      002978 C0 E0            [24] 2094 	push	acc
      00297A A3               [24] 2095 	inc	dptr
      00297B E0               [24] 2096 	movx	a,@dptr
      00297C C0 E0            [24] 2097 	push	acc
      00297E 74 7D            [12] 2098 	mov	a,#___str_39
      002980 C0 E0            [24] 2099 	push	acc
      002982 74 38            [12] 2100 	mov	a,#(___str_39 >> 8)
      002984 C0 E0            [24] 2101 	push	acc
      002986 12 31 7A         [24] 2102 	lcall	_printf_tiny
      002989 E5 81            [12] 2103 	mov	a,sp
      00298B 24 FC            [12] 2104 	add	a,#0xfc
      00298D F5 81            [12] 2105 	mov	sp,a
                                   2106 ;	main.c:292: printf_tiny("\n\rEnding Address of buffer_0x%x\n\r",(buffer_0_add)+(num));
      00298F 90 2A B0         [24] 2107 	mov	dptr,#_buffer_0_add
      002992 E0               [24] 2108 	movx	a,@dptr
      002993 FA               [12] 2109 	mov	r2,a
      002994 A3               [24] 2110 	inc	dptr
      002995 E0               [24] 2111 	movx	a,@dptr
      002996 FB               [12] 2112 	mov	r3,a
      002997 E5 12            [12] 2113 	mov	a,_main_sloc5_1_0
      002999 2A               [12] 2114 	add	a,r2
      00299A FA               [12] 2115 	mov	r2,a
      00299B E5 13            [12] 2116 	mov	a,(_main_sloc5_1_0 + 1)
      00299D 3B               [12] 2117 	addc	a,r3
      00299E FB               [12] 2118 	mov	r3,a
      00299F C0 02            [24] 2119 	push	ar2
      0029A1 C0 03            [24] 2120 	push	ar3
      0029A3 74 9D            [12] 2121 	mov	a,#___str_40
      0029A5 C0 E0            [24] 2122 	push	acc
      0029A7 74 38            [12] 2123 	mov	a,#(___str_40 >> 8)
      0029A9 C0 E0            [24] 2124 	push	acc
      0029AB 12 31 7A         [24] 2125 	lcall	_printf_tiny
      0029AE E5 81            [12] 2126 	mov	a,sp
      0029B0 24 FC            [12] 2127 	add	a,#0xfc
      0029B2 F5 81            [12] 2128 	mov	sp,a
                                   2129 ;	main.c:293: printf_tiny("\n\rBuffer Size of buffer_0 %d\n\r",num);
      0029B4 C0 12            [24] 2130 	push	_main_sloc5_1_0
      0029B6 C0 13            [24] 2131 	push	(_main_sloc5_1_0 + 1)
      0029B8 74 BF            [12] 2132 	mov	a,#___str_41
      0029BA C0 E0            [24] 2133 	push	acc
      0029BC 74 38            [12] 2134 	mov	a,#(___str_41 >> 8)
      0029BE C0 E0            [24] 2135 	push	acc
      0029C0 12 31 7A         [24] 2136 	lcall	_printf_tiny
      0029C3 E5 81            [12] 2137 	mov	a,sp
      0029C5 24 FC            [12] 2138 	add	a,#0xfc
      0029C7 F5 81            [12] 2139 	mov	sp,a
                                   2140 ;	main.c:294: printf_tiny("\n\rStored characters in buffer>>>%d\n\r",storage);
      0029C9 90 2B 34         [24] 2141 	mov	dptr,#_storage
      0029CC E0               [24] 2142 	movx	a,@dptr
      0029CD C0 E0            [24] 2143 	push	acc
      0029CF A3               [24] 2144 	inc	dptr
      0029D0 E0               [24] 2145 	movx	a,@dptr
      0029D1 C0 E0            [24] 2146 	push	acc
      0029D3 74 DE            [12] 2147 	mov	a,#___str_42
      0029D5 C0 E0            [24] 2148 	push	acc
      0029D7 74 38            [12] 2149 	mov	a,#(___str_42 >> 8)
      0029D9 C0 E0            [24] 2150 	push	acc
      0029DB 12 31 7A         [24] 2151 	lcall	_printf_tiny
      0029DE E5 81            [12] 2152 	mov	a,sp
      0029E0 24 FC            [12] 2153 	add	a,#0xfc
      0029E2 F5 81            [12] 2154 	mov	sp,a
                                   2155 ;	main.c:295: printf_tiny("\n\rFree Spaces in buffer%d\n\r",(num-storage));
      0029E4 90 2B 34         [24] 2156 	mov	dptr,#_storage
      0029E7 E0               [24] 2157 	movx	a,@dptr
      0029E8 FA               [12] 2158 	mov	r2,a
      0029E9 A3               [24] 2159 	inc	dptr
      0029EA E0               [24] 2160 	movx	a,@dptr
      0029EB FB               [12] 2161 	mov	r3,a
      0029EC E5 12            [12] 2162 	mov	a,_main_sloc5_1_0
      0029EE C3               [12] 2163 	clr	c
      0029EF 9A               [12] 2164 	subb	a,r2
      0029F0 FA               [12] 2165 	mov	r2,a
      0029F1 E5 13            [12] 2166 	mov	a,(_main_sloc5_1_0 + 1)
      0029F3 9B               [12] 2167 	subb	a,r3
      0029F4 FB               [12] 2168 	mov	r3,a
      0029F5 C0 02            [24] 2169 	push	ar2
      0029F7 C0 03            [24] 2170 	push	ar3
      0029F9 74 03            [12] 2171 	mov	a,#___str_43
      0029FB C0 E0            [24] 2172 	push	acc
      0029FD 74 39            [12] 2173 	mov	a,#(___str_43 >> 8)
      0029FF C0 E0            [24] 2174 	push	acc
      002A01 12 31 7A         [24] 2175 	lcall	_printf_tiny
      002A04 E5 81            [12] 2176 	mov	a,sp
      002A06 24 FC            [12] 2177 	add	a,#0xfc
      002A08 F5 81            [12] 2178 	mov	sp,a
      002A0A D0 04            [24] 2179 	pop	ar4
      002A0C D0 05            [24] 2180 	pop	ar5
                                   2181 ;	main.c:298: if(buffer_1 != 0)
      002A0E 90 2A 4A         [24] 2182 	mov	dptr,#_buffer_1
      002A11 E0               [24] 2183 	movx	a,@dptr
      002A12 F5 F0            [12] 2184 	mov	b,a
      002A14 A3               [24] 2185 	inc	dptr
      002A15 E0               [24] 2186 	movx	a,@dptr
      002A16 45 F0            [12] 2187 	orl	a,b
      002A18 70 03            [24] 2188 	jnz	00377$
      002A1A 02 2A AD         [24] 2189 	ljmp	00211$
      002A1D                       2190 00377$:
                                   2191 ;	main.c:300: printf_tiny("\n\rHeap status of buffer_1\n\r");
      002A1D C0 05            [24] 2192 	push	ar5
      002A1F C0 04            [24] 2193 	push	ar4
      002A21 74 1F            [12] 2194 	mov	a,#___str_44
      002A23 C0 E0            [24] 2195 	push	acc
      002A25 74 39            [12] 2196 	mov	a,#(___str_44 >> 8)
      002A27 C0 E0            [24] 2197 	push	acc
      002A29 12 31 7A         [24] 2198 	lcall	_printf_tiny
      002A2C 15 81            [12] 2199 	dec	sp
      002A2E 15 81            [12] 2200 	dec	sp
                                   2201 ;	main.c:301: printf_tiny("\n\rStart Address of buffer_1 x%x\n\r",buffer_1_add);
      002A30 90 2A B2         [24] 2202 	mov	dptr,#_buffer_1_add
      002A33 E0               [24] 2203 	movx	a,@dptr
      002A34 C0 E0            [24] 2204 	push	acc
      002A36 A3               [24] 2205 	inc	dptr
      002A37 E0               [24] 2206 	movx	a,@dptr
      002A38 C0 E0            [24] 2207 	push	acc
      002A3A 74 3B            [12] 2208 	mov	a,#___str_45
      002A3C C0 E0            [24] 2209 	push	acc
      002A3E 74 39            [12] 2210 	mov	a,#(___str_45 >> 8)
      002A40 C0 E0            [24] 2211 	push	acc
      002A42 12 31 7A         [24] 2212 	lcall	_printf_tiny
      002A45 E5 81            [12] 2213 	mov	a,sp
      002A47 24 FC            [12] 2214 	add	a,#0xfc
      002A49 F5 81            [12] 2215 	mov	sp,a
                                   2216 ;	main.c:302: printf_tiny("\n\rEnding Address of buffer_1x%x\n\r",buffer_1_add+num);
      002A4B 90 2A B2         [24] 2217 	mov	dptr,#_buffer_1_add
      002A4E E0               [24] 2218 	movx	a,@dptr
      002A4F FA               [12] 2219 	mov	r2,a
      002A50 A3               [24] 2220 	inc	dptr
      002A51 E0               [24] 2221 	movx	a,@dptr
      002A52 FB               [12] 2222 	mov	r3,a
      002A53 E5 12            [12] 2223 	mov	a,_main_sloc5_1_0
      002A55 2A               [12] 2224 	add	a,r2
      002A56 FA               [12] 2225 	mov	r2,a
      002A57 E5 13            [12] 2226 	mov	a,(_main_sloc5_1_0 + 1)
      002A59 3B               [12] 2227 	addc	a,r3
      002A5A FB               [12] 2228 	mov	r3,a
      002A5B C0 02            [24] 2229 	push	ar2
      002A5D C0 03            [24] 2230 	push	ar3
      002A5F 74 5D            [12] 2231 	mov	a,#___str_46
      002A61 C0 E0            [24] 2232 	push	acc
      002A63 74 39            [12] 2233 	mov	a,#(___str_46 >> 8)
      002A65 C0 E0            [24] 2234 	push	acc
      002A67 12 31 7A         [24] 2235 	lcall	_printf_tiny
      002A6A E5 81            [12] 2236 	mov	a,sp
      002A6C 24 FC            [12] 2237 	add	a,#0xfc
      002A6E F5 81            [12] 2238 	mov	sp,a
                                   2239 ;	main.c:303: printf_tiny("\n\rBuffer Size%d\n\r",num);
      002A70 C0 12            [24] 2240 	push	_main_sloc5_1_0
      002A72 C0 13            [24] 2241 	push	(_main_sloc5_1_0 + 1)
      002A74 74 7F            [12] 2242 	mov	a,#___str_47
      002A76 C0 E0            [24] 2243 	push	acc
      002A78 74 39            [12] 2244 	mov	a,#(___str_47 >> 8)
      002A7A C0 E0            [24] 2245 	push	acc
      002A7C 12 31 7A         [24] 2246 	lcall	_printf_tiny
      002A7F E5 81            [12] 2247 	mov	a,sp
      002A81 24 FC            [12] 2248 	add	a,#0xfc
      002A83 F5 81            [12] 2249 	mov	sp,a
                                   2250 ;	main.c:304: printf_tiny("\n\rStorage characters in buffer>>>0\n\r");
      002A85 74 91            [12] 2251 	mov	a,#___str_48
      002A87 C0 E0            [24] 2252 	push	acc
      002A89 74 39            [12] 2253 	mov	a,#(___str_48 >> 8)
      002A8B C0 E0            [24] 2254 	push	acc
      002A8D 12 31 7A         [24] 2255 	lcall	_printf_tiny
      002A90 15 81            [12] 2256 	dec	sp
      002A92 15 81            [12] 2257 	dec	sp
                                   2258 ;	main.c:305: printf_tiny("\n\rFree Spaces in buffer>>>>>>>>>>%d\n\r",(num));
      002A94 C0 12            [24] 2259 	push	_main_sloc5_1_0
      002A96 C0 13            [24] 2260 	push	(_main_sloc5_1_0 + 1)
      002A98 74 B6            [12] 2261 	mov	a,#___str_49
      002A9A C0 E0            [24] 2262 	push	acc
      002A9C 74 39            [12] 2263 	mov	a,#(___str_49 >> 8)
      002A9E C0 E0            [24] 2264 	push	acc
      002AA0 12 31 7A         [24] 2265 	lcall	_printf_tiny
      002AA3 E5 81            [12] 2266 	mov	a,sp
      002AA5 24 FC            [12] 2267 	add	a,#0xfc
      002AA7 F5 81            [12] 2268 	mov	sp,a
      002AA9 D0 04            [24] 2269 	pop	ar4
      002AAB D0 05            [24] 2270 	pop	ar5
                                   2271 ;	main.c:309: for(int m=2;m<=(j+2);m++)
      002AAD                       2272 00211$:
      002AAD 74 02            [12] 2273 	mov	a,#0x02
      002AAF 25 10            [12] 2274 	add	a,_main_sloc4_1_0
      002AB1 FA               [12] 2275 	mov	r2,a
      002AB2 E4               [12] 2276 	clr	a
      002AB3 35 11            [12] 2277 	addc	a,(_main_sloc4_1_0 + 1)
      002AB5 FB               [12] 2278 	mov	r3,a
      002AB6 78 02            [12] 2279 	mov	r0,#0x02
      002AB8 79 00            [12] 2280 	mov	r1,#0x00
      002ABA                       2281 00176$:
      002ABA C3               [12] 2282 	clr	c
      002ABB EA               [12] 2283 	mov	a,r2
      002ABC 98               [12] 2284 	subb	a,r0
      002ABD EB               [12] 2285 	mov	a,r3
      002ABE 64 80            [12] 2286 	xrl	a,#0x80
      002AC0 89 F0            [24] 2287 	mov	b,r1
      002AC2 63 F0 80         [24] 2288 	xrl	b,#0x80
      002AC5 95 F0            [12] 2289 	subb	a,b
      002AC7 50 03            [24] 2290 	jnc	00378$
      002AC9 02 2C 88         [24] 2291 	ljmp	00122$
      002ACC                       2292 00378$:
                                   2293 ;	main.c:311: if(buffer_n[m-2]!=0)
      002ACC C0 04            [24] 2294 	push	ar4
      002ACE C0 05            [24] 2295 	push	ar5
      002AD0 E8               [12] 2296 	mov	a,r0
      002AD1 F5 0C            [12] 2297 	mov	_main_sloc2_1_0,a
      002AD3 24 FE            [12] 2298 	add	a,#0xfe
      002AD5 FD               [12] 2299 	mov	r5,a
      002AD6 C2 D5            [12] 2300 	clr	F0
      002AD8 75 F0 02         [24] 2301 	mov	b,#0x02
      002ADB ED               [12] 2302 	mov	a,r5
      002ADC 30 E7 04         [24] 2303 	jnb	acc.7,00379$
      002ADF B2 D5            [12] 2304 	cpl	F0
      002AE1 F4               [12] 2305 	cpl	a
      002AE2 04               [12] 2306 	inc	a
      002AE3                       2307 00379$:
      002AE3 A4               [48] 2308 	mul	ab
      002AE4 30 D5 0A         [24] 2309 	jnb	F0,00380$
      002AE7 F4               [12] 2310 	cpl	a
      002AE8 24 01            [12] 2311 	add	a,#0x01
      002AEA C5 F0            [12] 2312 	xch	a,b
      002AEC F4               [12] 2313 	cpl	a
      002AED 34 00            [12] 2314 	addc	a,#0x00
      002AEF C5 F0            [12] 2315 	xch	a,b
      002AF1                       2316 00380$:
      002AF1 24 4C            [12] 2317 	add	a,#_buffer_n
      002AF3 F5 82            [12] 2318 	mov	dpl,a
      002AF5 74 2A            [12] 2319 	mov	a,#(_buffer_n >> 8)
      002AF7 35 F0            [12] 2320 	addc	a,b
      002AF9 F5 83            [12] 2321 	mov	dph,a
      002AFB E0               [24] 2322 	movx	a,@dptr
      002AFC FC               [12] 2323 	mov	r4,a
      002AFD A3               [24] 2324 	inc	dptr
      002AFE E0               [24] 2325 	movx	a,@dptr
      002AFF 4C               [12] 2326 	orl	a,r4
      002B00 D0 05            [24] 2327 	pop	ar5
      002B02 D0 04            [24] 2328 	pop	ar4
      002B04 70 03            [24] 2329 	jnz	00381$
      002B06 02 2C 80         [24] 2330 	ljmp	00177$
      002B09                       2331 00381$:
                                   2332 ;	main.c:313: printf_tiny("\n\rBUFFER %d\n\r",m);
      002B09 C0 04            [24] 2333 	push	ar4
      002B0B C0 05            [24] 2334 	push	ar5
      002B0D C0 05            [24] 2335 	push	ar5
      002B0F C0 04            [24] 2336 	push	ar4
      002B11 C0 03            [24] 2337 	push	ar3
      002B13 C0 02            [24] 2338 	push	ar2
      002B15 C0 01            [24] 2339 	push	ar1
      002B17 C0 00            [24] 2340 	push	ar0
      002B19 C0 00            [24] 2341 	push	ar0
      002B1B C0 01            [24] 2342 	push	ar1
      002B1D 74 DC            [12] 2343 	mov	a,#___str_50
      002B1F C0 E0            [24] 2344 	push	acc
      002B21 74 39            [12] 2345 	mov	a,#(___str_50 >> 8)
      002B23 C0 E0            [24] 2346 	push	acc
      002B25 12 31 7A         [24] 2347 	lcall	_printf_tiny
      002B28 E5 81            [12] 2348 	mov	a,sp
      002B2A 24 FC            [12] 2349 	add	a,#0xfc
      002B2C F5 81            [12] 2350 	mov	sp,a
      002B2E D0 00            [24] 2351 	pop	ar0
      002B30 D0 01            [24] 2352 	pop	ar1
      002B32 D0 02            [24] 2353 	pop	ar2
      002B34 D0 03            [24] 2354 	pop	ar3
      002B36 D0 04            [24] 2355 	pop	ar4
      002B38 D0 05            [24] 2356 	pop	ar5
                                   2357 ;	main.c:314: printf_tiny("\n\rStart Address0x%x\n\r",(unsigned int)buffer_n[m-2]);
      002B3A E5 0C            [12] 2358 	mov	a,_main_sloc2_1_0
      002B3C 24 FE            [12] 2359 	add	a,#0xfe
      002B3E FD               [12] 2360 	mov	r5,a
      002B3F C2 D5            [12] 2361 	clr	F0
      002B41 75 F0 02         [24] 2362 	mov	b,#0x02
      002B44 ED               [12] 2363 	mov	a,r5
      002B45 30 E7 04         [24] 2364 	jnb	acc.7,00382$
      002B48 B2 D5            [12] 2365 	cpl	F0
      002B4A F4               [12] 2366 	cpl	a
      002B4B 04               [12] 2367 	inc	a
      002B4C                       2368 00382$:
      002B4C A4               [48] 2369 	mul	ab
      002B4D 30 D5 0A         [24] 2370 	jnb	F0,00383$
      002B50 F4               [12] 2371 	cpl	a
      002B51 24 01            [12] 2372 	add	a,#0x01
      002B53 C5 F0            [12] 2373 	xch	a,b
      002B55 F4               [12] 2374 	cpl	a
      002B56 34 00            [12] 2375 	addc	a,#0x00
      002B58 C5 F0            [12] 2376 	xch	a,b
      002B5A                       2377 00383$:
      002B5A 24 4C            [12] 2378 	add	a,#_buffer_n
      002B5C FC               [12] 2379 	mov	r4,a
      002B5D 74 2A            [12] 2380 	mov	a,#(_buffer_n >> 8)
      002B5F 35 F0            [12] 2381 	addc	a,b
      002B61 FD               [12] 2382 	mov	r5,a
      002B62 8C 82            [24] 2383 	mov	dpl,r4
      002B64 8D 83            [24] 2384 	mov	dph,r5
      002B66 E0               [24] 2385 	movx	a,@dptr
      002B67 FE               [12] 2386 	mov	r6,a
      002B68 A3               [24] 2387 	inc	dptr
      002B69 E0               [24] 2388 	movx	a,@dptr
      002B6A FF               [12] 2389 	mov	r7,a
      002B6B C0 05            [24] 2390 	push	ar5
      002B6D C0 04            [24] 2391 	push	ar4
      002B6F C0 03            [24] 2392 	push	ar3
      002B71 C0 02            [24] 2393 	push	ar2
      002B73 C0 01            [24] 2394 	push	ar1
      002B75 C0 00            [24] 2395 	push	ar0
      002B77 C0 06            [24] 2396 	push	ar6
      002B79 C0 07            [24] 2397 	push	ar7
      002B7B 74 EA            [12] 2398 	mov	a,#___str_51
      002B7D C0 E0            [24] 2399 	push	acc
      002B7F 74 39            [12] 2400 	mov	a,#(___str_51 >> 8)
      002B81 C0 E0            [24] 2401 	push	acc
      002B83 12 31 7A         [24] 2402 	lcall	_printf_tiny
      002B86 E5 81            [12] 2403 	mov	a,sp
      002B88 24 FC            [12] 2404 	add	a,#0xfc
      002B8A F5 81            [12] 2405 	mov	sp,a
      002B8C D0 00            [24] 2406 	pop	ar0
      002B8E D0 01            [24] 2407 	pop	ar1
      002B90 D0 02            [24] 2408 	pop	ar2
      002B92 D0 03            [24] 2409 	pop	ar3
      002B94 D0 04            [24] 2410 	pop	ar4
      002B96 D0 05            [24] 2411 	pop	ar5
                                   2412 ;	main.c:315: printf_tiny("\n\rEnding Address0x%x\n\r",(uint16_t)(buffer_n[m-2])+(uint16_t)(buff_size[m]));
      002B98 8C 82            [24] 2413 	mov	dpl,r4
      002B9A 8D 83            [24] 2414 	mov	dph,r5
      002B9C E0               [24] 2415 	movx	a,@dptr
      002B9D FC               [12] 2416 	mov	r4,a
      002B9E A3               [24] 2417 	inc	dptr
      002B9F E0               [24] 2418 	movx	a,@dptr
      002BA0 FD               [12] 2419 	mov	r5,a
      002BA1 8C 0C            [24] 2420 	mov	_main_sloc2_1_0,r4
      002BA3 8D 0D            [24] 2421 	mov	(_main_sloc2_1_0 + 1),r5
      002BA5 E8               [12] 2422 	mov	a,r0
      002BA6 28               [12] 2423 	add	a,r0
      002BA7 FE               [12] 2424 	mov	r6,a
      002BA8 E9               [12] 2425 	mov	a,r1
      002BA9 33               [12] 2426 	rlc	a
      002BAA FF               [12] 2427 	mov	r7,a
      002BAB EE               [12] 2428 	mov	a,r6
      002BAC 24 BA            [12] 2429 	add	a,#_main_buff_size_65536_61
      002BAE FE               [12] 2430 	mov	r6,a
      002BAF EF               [12] 2431 	mov	a,r7
      002BB0 34 2A            [12] 2432 	addc	a,#(_main_buff_size_65536_61 >> 8)
      002BB2 FF               [12] 2433 	mov	r7,a
      002BB3 8E 82            [24] 2434 	mov	dpl,r6
      002BB5 8F 83            [24] 2435 	mov	dph,r7
      002BB7 E0               [24] 2436 	movx	a,@dptr
      002BB8 FC               [12] 2437 	mov	r4,a
      002BB9 A3               [24] 2438 	inc	dptr
      002BBA E0               [24] 2439 	movx	a,@dptr
      002BBB FD               [12] 2440 	mov	r5,a
      002BBC EC               [12] 2441 	mov	a,r4
      002BBD 25 0C            [12] 2442 	add	a,_main_sloc2_1_0
      002BBF FC               [12] 2443 	mov	r4,a
      002BC0 ED               [12] 2444 	mov	a,r5
      002BC1 35 0D            [12] 2445 	addc	a,(_main_sloc2_1_0 + 1)
      002BC3 FD               [12] 2446 	mov	r5,a
      002BC4 C0 07            [24] 2447 	push	ar7
      002BC6 C0 06            [24] 2448 	push	ar6
      002BC8 C0 05            [24] 2449 	push	ar5
      002BCA C0 04            [24] 2450 	push	ar4
      002BCC C0 03            [24] 2451 	push	ar3
      002BCE C0 02            [24] 2452 	push	ar2
      002BD0 C0 01            [24] 2453 	push	ar1
      002BD2 C0 00            [24] 2454 	push	ar0
      002BD4 C0 04            [24] 2455 	push	ar4
      002BD6 C0 05            [24] 2456 	push	ar5
      002BD8 74 00            [12] 2457 	mov	a,#___str_52
      002BDA C0 E0            [24] 2458 	push	acc
      002BDC 74 3A            [12] 2459 	mov	a,#(___str_52 >> 8)
      002BDE C0 E0            [24] 2460 	push	acc
      002BE0 12 31 7A         [24] 2461 	lcall	_printf_tiny
      002BE3 E5 81            [12] 2462 	mov	a,sp
      002BE5 24 FC            [12] 2463 	add	a,#0xfc
      002BE7 F5 81            [12] 2464 	mov	sp,a
      002BE9 D0 00            [24] 2465 	pop	ar0
      002BEB D0 01            [24] 2466 	pop	ar1
      002BED D0 02            [24] 2467 	pop	ar2
      002BEF D0 03            [24] 2468 	pop	ar3
      002BF1 D0 04            [24] 2469 	pop	ar4
      002BF3 D0 05            [24] 2470 	pop	ar5
      002BF5 D0 06            [24] 2471 	pop	ar6
      002BF7 D0 07            [24] 2472 	pop	ar7
                                   2473 ;	main.c:316: printf_tiny("\n\rBuffer Size%d\n\r",buff_size[m]);
      002BF9 8E 82            [24] 2474 	mov	dpl,r6
      002BFB 8F 83            [24] 2475 	mov	dph,r7
      002BFD E0               [24] 2476 	movx	a,@dptr
      002BFE FC               [12] 2477 	mov	r4,a
      002BFF A3               [24] 2478 	inc	dptr
      002C00 E0               [24] 2479 	movx	a,@dptr
      002C01 FD               [12] 2480 	mov	r5,a
      002C02 C0 07            [24] 2481 	push	ar7
      002C04 C0 06            [24] 2482 	push	ar6
      002C06 C0 05            [24] 2483 	push	ar5
      002C08 C0 04            [24] 2484 	push	ar4
      002C0A C0 03            [24] 2485 	push	ar3
      002C0C C0 02            [24] 2486 	push	ar2
      002C0E C0 01            [24] 2487 	push	ar1
      002C10 C0 00            [24] 2488 	push	ar0
      002C12 C0 04            [24] 2489 	push	ar4
      002C14 C0 05            [24] 2490 	push	ar5
      002C16 74 7F            [12] 2491 	mov	a,#___str_47
      002C18 C0 E0            [24] 2492 	push	acc
      002C1A 74 39            [12] 2493 	mov	a,#(___str_47 >> 8)
      002C1C C0 E0            [24] 2494 	push	acc
      002C1E 12 31 7A         [24] 2495 	lcall	_printf_tiny
      002C21 E5 81            [12] 2496 	mov	a,sp
      002C23 24 FC            [12] 2497 	add	a,#0xfc
      002C25 F5 81            [12] 2498 	mov	sp,a
                                   2499 ;	main.c:317: printf_tiny("\n\rStorage characters in buffer0\n\r");
      002C27 74 17            [12] 2500 	mov	a,#___str_53
      002C29 C0 E0            [24] 2501 	push	acc
      002C2B 74 3A            [12] 2502 	mov	a,#(___str_53 >> 8)
      002C2D C0 E0            [24] 2503 	push	acc
      002C2F 12 31 7A         [24] 2504 	lcall	_printf_tiny
      002C32 15 81            [12] 2505 	dec	sp
      002C34 15 81            [12] 2506 	dec	sp
      002C36 D0 00            [24] 2507 	pop	ar0
      002C38 D0 01            [24] 2508 	pop	ar1
      002C3A D0 02            [24] 2509 	pop	ar2
      002C3C D0 03            [24] 2510 	pop	ar3
      002C3E D0 04            [24] 2511 	pop	ar4
      002C40 D0 05            [24] 2512 	pop	ar5
      002C42 D0 06            [24] 2513 	pop	ar6
      002C44 D0 07            [24] 2514 	pop	ar7
                                   2515 ;	main.c:318: printf_tiny("\n\rFree Spaces in buffer%d\n\r",(buff_size[m]));
      002C46 8E 82            [24] 2516 	mov	dpl,r6
      002C48 8F 83            [24] 2517 	mov	dph,r7
      002C4A E0               [24] 2518 	movx	a,@dptr
      002C4B FE               [12] 2519 	mov	r6,a
      002C4C A3               [24] 2520 	inc	dptr
      002C4D E0               [24] 2521 	movx	a,@dptr
      002C4E FF               [12] 2522 	mov	r7,a
      002C4F C0 05            [24] 2523 	push	ar5
      002C51 C0 04            [24] 2524 	push	ar4
      002C53 C0 03            [24] 2525 	push	ar3
      002C55 C0 02            [24] 2526 	push	ar2
      002C57 C0 01            [24] 2527 	push	ar1
      002C59 C0 00            [24] 2528 	push	ar0
      002C5B C0 06            [24] 2529 	push	ar6
      002C5D C0 07            [24] 2530 	push	ar7
      002C5F 74 03            [12] 2531 	mov	a,#___str_43
      002C61 C0 E0            [24] 2532 	push	acc
      002C63 74 39            [12] 2533 	mov	a,#(___str_43 >> 8)
      002C65 C0 E0            [24] 2534 	push	acc
      002C67 12 31 7A         [24] 2535 	lcall	_printf_tiny
      002C6A E5 81            [12] 2536 	mov	a,sp
      002C6C 24 FC            [12] 2537 	add	a,#0xfc
      002C6E F5 81            [12] 2538 	mov	sp,a
      002C70 D0 00            [24] 2539 	pop	ar0
      002C72 D0 01            [24] 2540 	pop	ar1
      002C74 D0 02            [24] 2541 	pop	ar2
      002C76 D0 03            [24] 2542 	pop	ar3
      002C78 D0 04            [24] 2543 	pop	ar4
      002C7A D0 05            [24] 2544 	pop	ar5
                                   2545 ;	main.c:377: for(total_buffer_count=2;(total_buffer_count)<(j+2);(total_buffer_count)++)
      002C7C D0 05            [24] 2546 	pop	ar5
      002C7E D0 04            [24] 2547 	pop	ar4
                                   2548 ;	main.c:318: printf_tiny("\n\rFree Spaces in buffer%d\n\r",(buff_size[m]));
      002C80                       2549 00177$:
                                   2550 ;	main.c:309: for(int m=2;m<=(j+2);m++)
      002C80 08               [12] 2551 	inc	r0
      002C81 B8 00 01         [24] 2552 	cjne	r0,#0x00,00384$
      002C84 09               [12] 2553 	inc	r1
      002C85                       2554 00384$:
      002C85 02 2A BA         [24] 2555 	ljmp	00176$
      002C88                       2556 00122$:
                                   2557 ;	main.c:322: printf_tiny("\n\rNumber of storage characters = %d\n\r",storage);
      002C88 C0 05            [24] 2558 	push	ar5
      002C8A C0 04            [24] 2559 	push	ar4
      002C8C 90 2B 34         [24] 2560 	mov	dptr,#_storage
      002C8F E0               [24] 2561 	movx	a,@dptr
      002C90 C0 E0            [24] 2562 	push	acc
      002C92 A3               [24] 2563 	inc	dptr
      002C93 E0               [24] 2564 	movx	a,@dptr
      002C94 C0 E0            [24] 2565 	push	acc
      002C96 74 39            [12] 2566 	mov	a,#___str_54
      002C98 C0 E0            [24] 2567 	push	acc
      002C9A 74 3A            [12] 2568 	mov	a,#(___str_54 >> 8)
      002C9C C0 E0            [24] 2569 	push	acc
      002C9E 12 31 7A         [24] 2570 	lcall	_printf_tiny
      002CA1 E5 81            [12] 2571 	mov	a,sp
      002CA3 24 FC            [12] 2572 	add	a,#0xfc
      002CA5 F5 81            [12] 2573 	mov	sp,a
                                   2574 ;	main.c:323: printf_tiny("\n\rTotal number of characters received = %d\n\r",total_char);
      002CA7 90 2B 36         [24] 2575 	mov	dptr,#_total_char
      002CAA E0               [24] 2576 	movx	a,@dptr
      002CAB C0 E0            [24] 2577 	push	acc
      002CAD A3               [24] 2578 	inc	dptr
      002CAE E0               [24] 2579 	movx	a,@dptr
      002CAF C0 E0            [24] 2580 	push	acc
      002CB1 74 5F            [12] 2581 	mov	a,#___str_55
      002CB3 C0 E0            [24] 2582 	push	acc
      002CB5 74 3A            [12] 2583 	mov	a,#(___str_55 >> 8)
      002CB7 C0 E0            [24] 2584 	push	acc
      002CB9 12 31 7A         [24] 2585 	lcall	_printf_tiny
      002CBC E5 81            [12] 2586 	mov	a,sp
      002CBE 24 FC            [12] 2587 	add	a,#0xfc
      002CC0 F5 81            [12] 2588 	mov	sp,a
                                   2589 ;	main.c:324: printf_tiny("\n\rTotal number of buffers that were allocated since the start of the program = %d\n\r",(i+2));
      002CC2 90 2B 38         [24] 2590 	mov	dptr,#_i
      002CC5 E0               [24] 2591 	movx	a,@dptr
      002CC6 FE               [12] 2592 	mov	r6,a
      002CC7 A3               [24] 2593 	inc	dptr
      002CC8 E0               [24] 2594 	movx	a,@dptr
      002CC9 FF               [12] 2595 	mov	r7,a
      002CCA 74 02            [12] 2596 	mov	a,#0x02
      002CCC 2E               [12] 2597 	add	a,r6
      002CCD FE               [12] 2598 	mov	r6,a
      002CCE E4               [12] 2599 	clr	a
      002CCF 3F               [12] 2600 	addc	a,r7
      002CD0 FF               [12] 2601 	mov	r7,a
      002CD1 C0 06            [24] 2602 	push	ar6
      002CD3 C0 07            [24] 2603 	push	ar7
      002CD5 74 8C            [12] 2604 	mov	a,#___str_56
      002CD7 C0 E0            [24] 2605 	push	acc
      002CD9 74 3A            [12] 2606 	mov	a,#(___str_56 >> 8)
      002CDB C0 E0            [24] 2607 	push	acc
      002CDD 12 31 7A         [24] 2608 	lcall	_printf_tiny
      002CE0 E5 81            [12] 2609 	mov	a,sp
      002CE2 24 FC            [12] 2610 	add	a,#0xfc
      002CE4 F5 81            [12] 2611 	mov	sp,a
      002CE6 D0 04            [24] 2612 	pop	ar4
      002CE8 D0 05            [24] 2613 	pop	ar5
      002CEA 02 24 BA         [24] 2614 	ljmp	00173$
      002CED                       2615 00151$:
                                   2616 ;	main.c:327: else if(input_char == '=')
      002CED 74 3D            [12] 2617 	mov	a,#0x3d
      002CEF B5 08 06         [24] 2618 	cjne	a,_main_sloc0_1_0,00385$
      002CF2 E4               [12] 2619 	clr	a
      002CF3 B5 09 02         [24] 2620 	cjne	a,(_main_sloc0_1_0 + 1),00385$
      002CF6 80 03            [24] 2621 	sjmp	00386$
      002CF8                       2622 00385$:
      002CF8 02 2D FD         [24] 2623 	ljmp	00148$
      002CFB                       2624 00386$:
                                   2625 ;	main.c:329: printf_tiny("\n\rContents in Buffer 0\n\r");
      002CFB C0 05            [24] 2626 	push	ar5
      002CFD C0 04            [24] 2627 	push	ar4
      002CFF 74 E0            [12] 2628 	mov	a,#___str_57
      002D01 C0 E0            [24] 2629 	push	acc
      002D03 74 3A            [12] 2630 	mov	a,#(___str_57 >> 8)
      002D05 C0 E0            [24] 2631 	push	acc
      002D07 12 31 7A         [24] 2632 	lcall	_printf_tiny
      002D0A 15 81            [12] 2633 	dec	sp
      002D0C 15 81            [12] 2634 	dec	sp
      002D0E D0 04            [24] 2635 	pop	ar4
      002D10 D0 05            [24] 2636 	pop	ar5
                                   2637 ;	main.c:331: for((buff_0_count)=0;(buff_0_count)<storage;(buff_0_count)++)
      002D12 7E 00            [12] 2638 	mov	r6,#0x00
      002D14 7F 00            [12] 2639 	mov	r7,#0x00
      002D16                       2640 00179$:
      002D16 90 2B 34         [24] 2641 	mov	dptr,#_storage
      002D19 E0               [24] 2642 	movx	a,@dptr
      002D1A FA               [12] 2643 	mov	r2,a
      002D1B A3               [24] 2644 	inc	dptr
      002D1C E0               [24] 2645 	movx	a,@dptr
      002D1D FB               [12] 2646 	mov	r3,a
      002D1E C3               [12] 2647 	clr	c
      002D1F EE               [12] 2648 	mov	a,r6
      002D20 9A               [12] 2649 	subb	a,r2
      002D21 EF               [12] 2650 	mov	a,r7
      002D22 9B               [12] 2651 	subb	a,r3
      002D23 40 03            [24] 2652 	jc	00387$
      002D25 02 24 BA         [24] 2653 	ljmp	00173$
      002D28                       2654 00387$:
                                   2655 ;	main.c:333: if(buff_0_count==0)
      002D28 EE               [12] 2656 	mov	a,r6
      002D29 4F               [12] 2657 	orl	a,r7
      002D2A 70 42            [24] 2658 	jnz	00129$
                                   2659 ;	main.c:335: printf_tiny("0x%x>> %x",(uint16_t)(buffer_0+buff_0_count),*((buffer_0)+(buff_0_count)));
      002D2C 90 2A 48         [24] 2660 	mov	dptr,#_buffer_0
      002D2F E0               [24] 2661 	movx	a,@dptr
      002D30 FA               [12] 2662 	mov	r2,a
      002D31 A3               [24] 2663 	inc	dptr
      002D32 E0               [24] 2664 	movx	a,@dptr
      002D33 FB               [12] 2665 	mov	r3,a
      002D34 EE               [12] 2666 	mov	a,r6
      002D35 2A               [12] 2667 	add	a,r2
      002D36 FA               [12] 2668 	mov	r2,a
      002D37 EF               [12] 2669 	mov	a,r7
      002D38 3B               [12] 2670 	addc	a,r3
      002D39 FB               [12] 2671 	mov	r3,a
      002D3A 8A 82            [24] 2672 	mov	dpl,r2
      002D3C 8B 83            [24] 2673 	mov	dph,r3
      002D3E E0               [24] 2674 	movx	a,@dptr
      002D3F F8               [12] 2675 	mov	r0,a
      002D40 79 00            [12] 2676 	mov	r1,#0x00
      002D42 C0 07            [24] 2677 	push	ar7
      002D44 C0 06            [24] 2678 	push	ar6
      002D46 C0 05            [24] 2679 	push	ar5
      002D48 C0 04            [24] 2680 	push	ar4
      002D4A C0 00            [24] 2681 	push	ar0
      002D4C C0 01            [24] 2682 	push	ar1
      002D4E C0 02            [24] 2683 	push	ar2
      002D50 C0 03            [24] 2684 	push	ar3
      002D52 74 F9            [12] 2685 	mov	a,#___str_58
      002D54 C0 E0            [24] 2686 	push	acc
      002D56 74 3A            [12] 2687 	mov	a,#(___str_58 >> 8)
      002D58 C0 E0            [24] 2688 	push	acc
      002D5A 12 31 7A         [24] 2689 	lcall	_printf_tiny
      002D5D E5 81            [12] 2690 	mov	a,sp
      002D5F 24 FA            [12] 2691 	add	a,#0xfa
      002D61 F5 81            [12] 2692 	mov	sp,a
      002D63 D0 04            [24] 2693 	pop	ar4
      002D65 D0 05            [24] 2694 	pop	ar5
      002D67 D0 06            [24] 2695 	pop	ar6
      002D69 D0 07            [24] 2696 	pop	ar7
      002D6B 02 2D F5         [24] 2697 	ljmp	00180$
      002D6E                       2698 00129$:
                                   2699 ;	main.c:337: else if((buff_0_count%16)!=0)
      002D6E 74 0F            [12] 2700 	mov	a,#0x0f
      002D70 5E               [12] 2701 	anl	a,r6
      002D71 FA               [12] 2702 	mov	r2,a
      002D72 7B 00            [12] 2703 	mov	r3,#0x00
      002D74 4B               [12] 2704 	orl	a,r3
      002D75 60 3B            [24] 2705 	jz	00126$
                                   2706 ;	main.c:339: printf_tiny(" %x",*((buffer_0)+(buff_0_count)));
      002D77 90 2A 48         [24] 2707 	mov	dptr,#_buffer_0
      002D7A E0               [24] 2708 	movx	a,@dptr
      002D7B F8               [12] 2709 	mov	r0,a
      002D7C A3               [24] 2710 	inc	dptr
      002D7D E0               [24] 2711 	movx	a,@dptr
      002D7E F9               [12] 2712 	mov	r1,a
      002D7F EE               [12] 2713 	mov	a,r6
      002D80 28               [12] 2714 	add	a,r0
      002D81 F5 82            [12] 2715 	mov	dpl,a
      002D83 EF               [12] 2716 	mov	a,r7
      002D84 39               [12] 2717 	addc	a,r1
      002D85 F5 83            [12] 2718 	mov	dph,a
      002D87 E0               [24] 2719 	movx	a,@dptr
      002D88 F8               [12] 2720 	mov	r0,a
      002D89 79 00            [12] 2721 	mov	r1,#0x00
      002D8B C0 07            [24] 2722 	push	ar7
      002D8D C0 06            [24] 2723 	push	ar6
      002D8F C0 05            [24] 2724 	push	ar5
      002D91 C0 04            [24] 2725 	push	ar4
      002D93 C0 00            [24] 2726 	push	ar0
      002D95 C0 01            [24] 2727 	push	ar1
      002D97 74 03            [12] 2728 	mov	a,#___str_59
      002D99 C0 E0            [24] 2729 	push	acc
      002D9B 74 3B            [12] 2730 	mov	a,#(___str_59 >> 8)
      002D9D C0 E0            [24] 2731 	push	acc
      002D9F 12 31 7A         [24] 2732 	lcall	_printf_tiny
      002DA2 E5 81            [12] 2733 	mov	a,sp
      002DA4 24 FC            [12] 2734 	add	a,#0xfc
      002DA6 F5 81            [12] 2735 	mov	sp,a
      002DA8 D0 04            [24] 2736 	pop	ar4
      002DAA D0 05            [24] 2737 	pop	ar5
      002DAC D0 06            [24] 2738 	pop	ar6
      002DAE D0 07            [24] 2739 	pop	ar7
      002DB0 80 43            [24] 2740 	sjmp	00180$
      002DB2                       2741 00126$:
                                   2742 ;	main.c:341: else if(buff_0_count%16==0)
      002DB2 EA               [12] 2743 	mov	a,r2
      002DB3 4B               [12] 2744 	orl	a,r3
      002DB4 70 3F            [24] 2745 	jnz	00180$
                                   2746 ;	main.c:343: printf_tiny("\n\r0x%x>> %x",(uint16_t)(buffer_0+buff_0_count),*((buffer_0)+(buff_0_count)));
      002DB6 90 2A 48         [24] 2747 	mov	dptr,#_buffer_0
      002DB9 E0               [24] 2748 	movx	a,@dptr
      002DBA FA               [12] 2749 	mov	r2,a
      002DBB A3               [24] 2750 	inc	dptr
      002DBC E0               [24] 2751 	movx	a,@dptr
      002DBD FB               [12] 2752 	mov	r3,a
      002DBE EE               [12] 2753 	mov	a,r6
      002DBF 2A               [12] 2754 	add	a,r2
      002DC0 FA               [12] 2755 	mov	r2,a
      002DC1 EF               [12] 2756 	mov	a,r7
      002DC2 3B               [12] 2757 	addc	a,r3
      002DC3 FB               [12] 2758 	mov	r3,a
      002DC4 8A 82            [24] 2759 	mov	dpl,r2
      002DC6 8B 83            [24] 2760 	mov	dph,r3
      002DC8 E0               [24] 2761 	movx	a,@dptr
      002DC9 F8               [12] 2762 	mov	r0,a
      002DCA 79 00            [12] 2763 	mov	r1,#0x00
      002DCC C0 07            [24] 2764 	push	ar7
      002DCE C0 06            [24] 2765 	push	ar6
      002DD0 C0 05            [24] 2766 	push	ar5
      002DD2 C0 04            [24] 2767 	push	ar4
      002DD4 C0 00            [24] 2768 	push	ar0
      002DD6 C0 01            [24] 2769 	push	ar1
      002DD8 C0 02            [24] 2770 	push	ar2
      002DDA C0 03            [24] 2771 	push	ar3
      002DDC 74 07            [12] 2772 	mov	a,#___str_60
      002DDE C0 E0            [24] 2773 	push	acc
      002DE0 74 3B            [12] 2774 	mov	a,#(___str_60 >> 8)
      002DE2 C0 E0            [24] 2775 	push	acc
      002DE4 12 31 7A         [24] 2776 	lcall	_printf_tiny
      002DE7 E5 81            [12] 2777 	mov	a,sp
      002DE9 24 FA            [12] 2778 	add	a,#0xfa
      002DEB F5 81            [12] 2779 	mov	sp,a
      002DED D0 04            [24] 2780 	pop	ar4
      002DEF D0 05            [24] 2781 	pop	ar5
      002DF1 D0 06            [24] 2782 	pop	ar6
      002DF3 D0 07            [24] 2783 	pop	ar7
      002DF5                       2784 00180$:
                                   2785 ;	main.c:331: for((buff_0_count)=0;(buff_0_count)<storage;(buff_0_count)++)
      002DF5 0E               [12] 2786 	inc	r6
      002DF6 BE 00 01         [24] 2787 	cjne	r6,#0x00,00391$
      002DF9 0F               [12] 2788 	inc	r7
      002DFA                       2789 00391$:
      002DFA 02 2D 16         [24] 2790 	ljmp	00179$
      002DFD                       2791 00148$:
                                   2792 ;	main.c:347: else if(input_char == '&')
      002DFD 74 26            [12] 2793 	mov	a,#0x26
      002DFF B5 08 06         [24] 2794 	cjne	a,_main_sloc0_1_0,00392$
      002E02 E4               [12] 2795 	clr	a
      002E03 B5 09 02         [24] 2796 	cjne	a,(_main_sloc0_1_0 + 1),00392$
      002E06 80 03            [24] 2797 	sjmp	00393$
      002E08                       2798 00392$:
      002E08 02 2F 06         [24] 2799 	ljmp	00145$
      002E0B                       2800 00393$:
                                   2801 ;	main.c:349: printf_tiny("\n\rContents in heap\n\r");
      002E0B C0 05            [24] 2802 	push	ar5
      002E0D C0 04            [24] 2803 	push	ar4
      002E0F 74 13            [12] 2804 	mov	a,#___str_61
      002E11 C0 E0            [24] 2805 	push	acc
      002E13 74 3B            [12] 2806 	mov	a,#(___str_61 >> 8)
      002E15 C0 E0            [24] 2807 	push	acc
      002E17 12 31 7A         [24] 2808 	lcall	_printf_tiny
      002E1A 15 81            [12] 2809 	dec	sp
      002E1C 15 81            [12] 2810 	dec	sp
      002E1E D0 04            [24] 2811 	pop	ar4
      002E20 D0 05            [24] 2812 	pop	ar5
                                   2813 ;	main.c:350: for((buff_0_count)=0;(buff_0_count)<=256;(buff_0_count)++)
      002E22 7E 00            [12] 2814 	mov	r6,#0x00
      002E24 7F 00            [12] 2815 	mov	r7,#0x00
      002E26                       2816 00181$:
                                   2817 ;	main.c:352: if(buff_0_count==0)
      002E26 EE               [12] 2818 	mov	a,r6
      002E27 4F               [12] 2819 	orl	a,r7
      002E28 70 42            [24] 2820 	jnz	00138$
                                   2821 ;	main.c:354: printf_tiny("0x%x>> %x",(uint16_t)(buffer_0+buff_0_count),*((buffer_0)+(buff_0_count)));
      002E2A 90 2A 48         [24] 2822 	mov	dptr,#_buffer_0
      002E2D E0               [24] 2823 	movx	a,@dptr
      002E2E FA               [12] 2824 	mov	r2,a
      002E2F A3               [24] 2825 	inc	dptr
      002E30 E0               [24] 2826 	movx	a,@dptr
      002E31 FB               [12] 2827 	mov	r3,a
      002E32 EE               [12] 2828 	mov	a,r6
      002E33 2A               [12] 2829 	add	a,r2
      002E34 FA               [12] 2830 	mov	r2,a
      002E35 EF               [12] 2831 	mov	a,r7
      002E36 3B               [12] 2832 	addc	a,r3
      002E37 FB               [12] 2833 	mov	r3,a
      002E38 8A 82            [24] 2834 	mov	dpl,r2
      002E3A 8B 83            [24] 2835 	mov	dph,r3
      002E3C E0               [24] 2836 	movx	a,@dptr
      002E3D F8               [12] 2837 	mov	r0,a
      002E3E 79 00            [12] 2838 	mov	r1,#0x00
      002E40 C0 07            [24] 2839 	push	ar7
      002E42 C0 06            [24] 2840 	push	ar6
      002E44 C0 05            [24] 2841 	push	ar5
      002E46 C0 04            [24] 2842 	push	ar4
      002E48 C0 00            [24] 2843 	push	ar0
      002E4A C0 01            [24] 2844 	push	ar1
      002E4C C0 02            [24] 2845 	push	ar2
      002E4E C0 03            [24] 2846 	push	ar3
      002E50 74 F9            [12] 2847 	mov	a,#___str_58
      002E52 C0 E0            [24] 2848 	push	acc
      002E54 74 3A            [12] 2849 	mov	a,#(___str_58 >> 8)
      002E56 C0 E0            [24] 2850 	push	acc
      002E58 12 31 7A         [24] 2851 	lcall	_printf_tiny
      002E5B E5 81            [12] 2852 	mov	a,sp
      002E5D 24 FA            [12] 2853 	add	a,#0xfa
      002E5F F5 81            [12] 2854 	mov	sp,a
      002E61 D0 04            [24] 2855 	pop	ar4
      002E63 D0 05            [24] 2856 	pop	ar5
      002E65 D0 06            [24] 2857 	pop	ar6
      002E67 D0 07            [24] 2858 	pop	ar7
      002E69 02 2E F3         [24] 2859 	ljmp	00182$
      002E6C                       2860 00138$:
                                   2861 ;	main.c:356: else if((buff_0_count%16)!=0)
      002E6C 74 0F            [12] 2862 	mov	a,#0x0f
      002E6E 5E               [12] 2863 	anl	a,r6
      002E6F FA               [12] 2864 	mov	r2,a
      002E70 7B 00            [12] 2865 	mov	r3,#0x00
      002E72 4B               [12] 2866 	orl	a,r3
      002E73 60 3B            [24] 2867 	jz	00135$
                                   2868 ;	main.c:358: printf_tiny(" %x",*((buffer_0)+(buff_0_count)));
      002E75 90 2A 48         [24] 2869 	mov	dptr,#_buffer_0
      002E78 E0               [24] 2870 	movx	a,@dptr
      002E79 F8               [12] 2871 	mov	r0,a
      002E7A A3               [24] 2872 	inc	dptr
      002E7B E0               [24] 2873 	movx	a,@dptr
      002E7C F9               [12] 2874 	mov	r1,a
      002E7D EE               [12] 2875 	mov	a,r6
      002E7E 28               [12] 2876 	add	a,r0
      002E7F F5 82            [12] 2877 	mov	dpl,a
      002E81 EF               [12] 2878 	mov	a,r7
      002E82 39               [12] 2879 	addc	a,r1
      002E83 F5 83            [12] 2880 	mov	dph,a
      002E85 E0               [24] 2881 	movx	a,@dptr
      002E86 F8               [12] 2882 	mov	r0,a
      002E87 79 00            [12] 2883 	mov	r1,#0x00
      002E89 C0 07            [24] 2884 	push	ar7
      002E8B C0 06            [24] 2885 	push	ar6
      002E8D C0 05            [24] 2886 	push	ar5
      002E8F C0 04            [24] 2887 	push	ar4
      002E91 C0 00            [24] 2888 	push	ar0
      002E93 C0 01            [24] 2889 	push	ar1
      002E95 74 03            [12] 2890 	mov	a,#___str_59
      002E97 C0 E0            [24] 2891 	push	acc
      002E99 74 3B            [12] 2892 	mov	a,#(___str_59 >> 8)
      002E9B C0 E0            [24] 2893 	push	acc
      002E9D 12 31 7A         [24] 2894 	lcall	_printf_tiny
      002EA0 E5 81            [12] 2895 	mov	a,sp
      002EA2 24 FC            [12] 2896 	add	a,#0xfc
      002EA4 F5 81            [12] 2897 	mov	sp,a
      002EA6 D0 04            [24] 2898 	pop	ar4
      002EA8 D0 05            [24] 2899 	pop	ar5
      002EAA D0 06            [24] 2900 	pop	ar6
      002EAC D0 07            [24] 2901 	pop	ar7
      002EAE 80 43            [24] 2902 	sjmp	00182$
      002EB0                       2903 00135$:
                                   2904 ;	main.c:360: else if(buff_0_count%16==0)
      002EB0 EA               [12] 2905 	mov	a,r2
      002EB1 4B               [12] 2906 	orl	a,r3
      002EB2 70 3F            [24] 2907 	jnz	00182$
                                   2908 ;	main.c:362: printf_tiny("\n\r0x%x>> %x",(uint16_t)(buffer_0+buff_0_count),*((buffer_0)+(buff_0_count)));
      002EB4 90 2A 48         [24] 2909 	mov	dptr,#_buffer_0
      002EB7 E0               [24] 2910 	movx	a,@dptr
      002EB8 FA               [12] 2911 	mov	r2,a
      002EB9 A3               [24] 2912 	inc	dptr
      002EBA E0               [24] 2913 	movx	a,@dptr
      002EBB FB               [12] 2914 	mov	r3,a
      002EBC EE               [12] 2915 	mov	a,r6
      002EBD 2A               [12] 2916 	add	a,r2
      002EBE FA               [12] 2917 	mov	r2,a
      002EBF EF               [12] 2918 	mov	a,r7
      002EC0 3B               [12] 2919 	addc	a,r3
      002EC1 FB               [12] 2920 	mov	r3,a
      002EC2 8A 82            [24] 2921 	mov	dpl,r2
      002EC4 8B 83            [24] 2922 	mov	dph,r3
      002EC6 E0               [24] 2923 	movx	a,@dptr
      002EC7 F8               [12] 2924 	mov	r0,a
      002EC8 79 00            [12] 2925 	mov	r1,#0x00
      002ECA C0 07            [24] 2926 	push	ar7
      002ECC C0 06            [24] 2927 	push	ar6
      002ECE C0 05            [24] 2928 	push	ar5
      002ED0 C0 04            [24] 2929 	push	ar4
      002ED2 C0 00            [24] 2930 	push	ar0
      002ED4 C0 01            [24] 2931 	push	ar1
      002ED6 C0 02            [24] 2932 	push	ar2
      002ED8 C0 03            [24] 2933 	push	ar3
      002EDA 74 07            [12] 2934 	mov	a,#___str_60
      002EDC C0 E0            [24] 2935 	push	acc
      002EDE 74 3B            [12] 2936 	mov	a,#(___str_60 >> 8)
      002EE0 C0 E0            [24] 2937 	push	acc
      002EE2 12 31 7A         [24] 2938 	lcall	_printf_tiny
      002EE5 E5 81            [12] 2939 	mov	a,sp
      002EE7 24 FA            [12] 2940 	add	a,#0xfa
      002EE9 F5 81            [12] 2941 	mov	sp,a
      002EEB D0 04            [24] 2942 	pop	ar4
      002EED D0 05            [24] 2943 	pop	ar5
      002EEF D0 06            [24] 2944 	pop	ar6
      002EF1 D0 07            [24] 2945 	pop	ar7
      002EF3                       2946 00182$:
                                   2947 ;	main.c:350: for((buff_0_count)=0;(buff_0_count)<=256;(buff_0_count)++)
      002EF3 0E               [12] 2948 	inc	r6
      002EF4 BE 00 01         [24] 2949 	cjne	r6,#0x00,00397$
      002EF7 0F               [12] 2950 	inc	r7
      002EF8                       2951 00397$:
      002EF8 C3               [12] 2952 	clr	c
      002EF9 E4               [12] 2953 	clr	a
      002EFA 9E               [12] 2954 	subb	a,r6
      002EFB 74 01            [12] 2955 	mov	a,#0x01
      002EFD 9F               [12] 2956 	subb	a,r7
      002EFE 40 03            [24] 2957 	jc	00398$
      002F00 02 2E 26         [24] 2958 	ljmp	00181$
      002F03                       2959 00398$:
      002F03 02 24 BA         [24] 2960 	ljmp	00173$
      002F06                       2961 00145$:
                                   2962 ;	main.c:367: else if (input_char == '@')
      002F06 74 40            [12] 2963 	mov	a,#0x40
      002F08 B5 08 06         [24] 2964 	cjne	a,_main_sloc0_1_0,00399$
      002F0B E4               [12] 2965 	clr	a
      002F0C B5 09 02         [24] 2966 	cjne	a,(_main_sloc0_1_0 + 1),00399$
      002F0F 80 03            [24] 2967 	sjmp	00400$
      002F11                       2968 00399$:
      002F11 02 24 BA         [24] 2969 	ljmp	00173$
      002F14                       2970 00400$:
                                   2971 ;	main.c:369: printf_tiny("\n\rFree Buffer 0\n\r");
      002F14 C0 05            [24] 2972 	push	ar5
      002F16 C0 04            [24] 2973 	push	ar4
      002F18 74 28            [12] 2974 	mov	a,#___str_62
      002F1A C0 E0            [24] 2975 	push	acc
      002F1C 74 3B            [12] 2976 	mov	a,#(___str_62 >> 8)
      002F1E C0 E0            [24] 2977 	push	acc
      002F20 12 31 7A         [24] 2978 	lcall	_printf_tiny
      002F23 15 81            [12] 2979 	dec	sp
      002F25 15 81            [12] 2980 	dec	sp
                                   2981 ;	main.c:370: free(buffer_0);
      002F27 90 2A 48         [24] 2982 	mov	dptr,#_buffer_0
      002F2A E0               [24] 2983 	movx	a,@dptr
      002F2B FE               [12] 2984 	mov	r6,a
      002F2C A3               [24] 2985 	inc	dptr
      002F2D E0               [24] 2986 	movx	a,@dptr
      002F2E FF               [12] 2987 	mov	r7,a
      002F2F 7B 00            [12] 2988 	mov	r3,#0x00
      002F31 8E 82            [24] 2989 	mov	dpl,r6
      002F33 8F 83            [24] 2990 	mov	dph,r7
      002F35 8B F0            [24] 2991 	mov	b,r3
      002F37 12 30 23         [24] 2992 	lcall	_free
                                   2993 ;	main.c:371: printf_tiny("\n\rBuffer 1 will now become empty\n\r");
      002F3A 74 3A            [12] 2994 	mov	a,#___str_63
      002F3C C0 E0            [24] 2995 	push	acc
      002F3E 74 3B            [12] 2996 	mov	a,#(___str_63 >> 8)
      002F40 C0 E0            [24] 2997 	push	acc
      002F42 12 31 7A         [24] 2998 	lcall	_printf_tiny
      002F45 15 81            [12] 2999 	dec	sp
      002F47 15 81            [12] 3000 	dec	sp
                                   3001 ;	main.c:373: printf_tiny("\n\rFreeing Buffer 1\n\r");
      002F49 74 5D            [12] 3002 	mov	a,#___str_64
      002F4B C0 E0            [24] 3003 	push	acc
      002F4D 74 3B            [12] 3004 	mov	a,#(___str_64 >> 8)
      002F4F C0 E0            [24] 3005 	push	acc
      002F51 12 31 7A         [24] 3006 	lcall	_printf_tiny
      002F54 15 81            [12] 3007 	dec	sp
      002F56 15 81            [12] 3008 	dec	sp
                                   3009 ;	main.c:374: free(buffer_1);
      002F58 90 2A 4A         [24] 3010 	mov	dptr,#_buffer_1
      002F5B E0               [24] 3011 	movx	a,@dptr
      002F5C FE               [12] 3012 	mov	r6,a
      002F5D A3               [24] 3013 	inc	dptr
      002F5E E0               [24] 3014 	movx	a,@dptr
      002F5F FF               [12] 3015 	mov	r7,a
      002F60 7B 00            [12] 3016 	mov	r3,#0x00
      002F62 8E 82            [24] 3017 	mov	dpl,r6
      002F64 8F 83            [24] 3018 	mov	dph,r7
      002F66 8B F0            [24] 3019 	mov	b,r3
      002F68 12 30 23         [24] 3020 	lcall	_free
                                   3021 ;	main.c:375: printf_tiny("\n\rBuffer 1 is empty\n\r");
      002F6B 74 72            [12] 3022 	mov	a,#___str_65
      002F6D C0 E0            [24] 3023 	push	acc
      002F6F 74 3B            [12] 3024 	mov	a,#(___str_65 >> 8)
      002F71 C0 E0            [24] 3025 	push	acc
      002F73 12 31 7A         [24] 3026 	lcall	_printf_tiny
      002F76 15 81            [12] 3027 	dec	sp
      002F78 15 81            [12] 3028 	dec	sp
      002F7A D0 04            [24] 3029 	pop	ar4
      002F7C D0 05            [24] 3030 	pop	ar5
                                   3031 ;	main.c:377: for(total_buffer_count=2;(total_buffer_count)<(j+2);(total_buffer_count)++)
      002F7E 74 02            [12] 3032 	mov	a,#0x02
      002F80 25 10            [12] 3033 	add	a,_main_sloc4_1_0
      002F82 FE               [12] 3034 	mov	r6,a
      002F83 E4               [12] 3035 	clr	a
      002F84 35 11            [12] 3036 	addc	a,(_main_sloc4_1_0 + 1)
      002F86 FF               [12] 3037 	mov	r7,a
      002F87 7A 02            [12] 3038 	mov	r2,#0x02
      002F89 7B 00            [12] 3039 	mov	r3,#0x00
      002F8B                       3040 00184$:
      002F8B 8E 00            [24] 3041 	mov	ar0,r6
      002F8D 8F 01            [24] 3042 	mov	ar1,r7
      002F8F C3               [12] 3043 	clr	c
      002F90 EA               [12] 3044 	mov	a,r2
      002F91 98               [12] 3045 	subb	a,r0
      002F92 EB               [12] 3046 	mov	a,r3
      002F93 99               [12] 3047 	subb	a,r1
      002F94 40 03            [24] 3048 	jc	00401$
      002F96 02 24 BA         [24] 3049 	ljmp	00173$
      002F99                       3050 00401$:
                                   3051 ;	main.c:379: printf_tiny("\n\rFreeing buffer_%d\n\r",total_buffer_count);
      002F99 C0 04            [24] 3052 	push	ar4
      002F9B C0 05            [24] 3053 	push	ar5
      002F9D C0 07            [24] 3054 	push	ar7
      002F9F C0 06            [24] 3055 	push	ar6
      002FA1 C0 05            [24] 3056 	push	ar5
      002FA3 C0 04            [24] 3057 	push	ar4
      002FA5 C0 03            [24] 3058 	push	ar3
      002FA7 C0 02            [24] 3059 	push	ar2
      002FA9 C0 02            [24] 3060 	push	ar2
      002FAB C0 03            [24] 3061 	push	ar3
      002FAD 74 88            [12] 3062 	mov	a,#___str_66
      002FAF C0 E0            [24] 3063 	push	acc
      002FB1 74 3B            [12] 3064 	mov	a,#(___str_66 >> 8)
      002FB3 C0 E0            [24] 3065 	push	acc
      002FB5 12 31 7A         [24] 3066 	lcall	_printf_tiny
      002FB8 E5 81            [12] 3067 	mov	a,sp
      002FBA 24 FC            [12] 3068 	add	a,#0xfc
      002FBC F5 81            [12] 3069 	mov	sp,a
      002FBE D0 02            [24] 3070 	pop	ar2
      002FC0 D0 03            [24] 3071 	pop	ar3
      002FC2 D0 04            [24] 3072 	pop	ar4
      002FC4 D0 05            [24] 3073 	pop	ar5
                                   3074 ;	main.c:380: free(buffer_n[total_buffer_count]);
      002FC6 EA               [12] 3075 	mov	a,r2
      002FC7 2A               [12] 3076 	add	a,r2
      002FC8 F8               [12] 3077 	mov	r0,a
      002FC9 EB               [12] 3078 	mov	a,r3
      002FCA 33               [12] 3079 	rlc	a
      002FCB F9               [12] 3080 	mov	r1,a
      002FCC E8               [12] 3081 	mov	a,r0
      002FCD 24 4C            [12] 3082 	add	a,#_buffer_n
      002FCF F5 82            [12] 3083 	mov	dpl,a
      002FD1 E9               [12] 3084 	mov	a,r1
      002FD2 34 2A            [12] 3085 	addc	a,#(_buffer_n >> 8)
      002FD4 F5 83            [12] 3086 	mov	dph,a
      002FD6 E0               [24] 3087 	movx	a,@dptr
      002FD7 F8               [12] 3088 	mov	r0,a
      002FD8 A3               [24] 3089 	inc	dptr
      002FD9 E0               [24] 3090 	movx	a,@dptr
      002FDA F9               [12] 3091 	mov	r1,a
      002FDB 7D 00            [12] 3092 	mov	r5,#0x00
      002FDD 88 82            [24] 3093 	mov	dpl,r0
      002FDF 89 83            [24] 3094 	mov	dph,r1
      002FE1 8D F0            [24] 3095 	mov	b,r5
      002FE3 C0 05            [24] 3096 	push	ar5
      002FE5 C0 04            [24] 3097 	push	ar4
      002FE7 C0 03            [24] 3098 	push	ar3
      002FE9 C0 02            [24] 3099 	push	ar2
      002FEB 12 30 23         [24] 3100 	lcall	_free
      002FEE D0 02            [24] 3101 	pop	ar2
      002FF0 D0 03            [24] 3102 	pop	ar3
                                   3103 ;	main.c:381: printf_tiny("\n\rBuffer %d freed \n\r",total_buffer_count);
      002FF2 C0 03            [24] 3104 	push	ar3
      002FF4 C0 02            [24] 3105 	push	ar2
      002FF6 C0 02            [24] 3106 	push	ar2
      002FF8 C0 03            [24] 3107 	push	ar3
      002FFA 74 9E            [12] 3108 	mov	a,#___str_67
      002FFC C0 E0            [24] 3109 	push	acc
      002FFE 74 3B            [12] 3110 	mov	a,#(___str_67 >> 8)
      003000 C0 E0            [24] 3111 	push	acc
      003002 12 31 7A         [24] 3112 	lcall	_printf_tiny
      003005 E5 81            [12] 3113 	mov	a,sp
      003007 24 FC            [12] 3114 	add	a,#0xfc
      003009 F5 81            [12] 3115 	mov	sp,a
      00300B D0 02            [24] 3116 	pop	ar2
      00300D D0 03            [24] 3117 	pop	ar3
      00300F D0 04            [24] 3118 	pop	ar4
      003011 D0 05            [24] 3119 	pop	ar5
      003013 D0 06            [24] 3120 	pop	ar6
      003015 D0 07            [24] 3121 	pop	ar7
                                   3122 ;	main.c:377: for(total_buffer_count=2;(total_buffer_count)<(j+2);(total_buffer_count)++)
      003017 0A               [12] 3123 	inc	r2
      003018 BA 00 01         [24] 3124 	cjne	r2,#0x00,00402$
      00301B 0B               [12] 3125 	inc	r3
      00301C                       3126 00402$:
      00301C D0 05            [24] 3127 	pop	ar5
      00301E D0 04            [24] 3128 	pop	ar4
                                   3129 ;	main.c:396: }
      003020 02 2F 8B         [24] 3130 	ljmp	00184$
                                   3131 	.area CSEG    (CODE)
                                   3132 	.area CONST   (CODE)
                                   3133 	.area CONST   (CODE)
      003466                       3134 ___str_0:
      003466 45 6E 74 65 72 20 61  3135 	.ascii "Enter a value divisible btw 48 and 4800 and divisible by 16"
             20 76 61 6C 75 65 20
             64 69 76 69 73 69 62
             6C 65 20 62 74 77 20
             34 38 20 61 6E 64 20
             34 38 30 30 20 61 6E
             64 20 64 69 76 69 73
             69 62 6C 65 20 62 79
             20 31 36
      0034A1 0D                    3136 	.db 0x0d
      0034A2 0A                    3137 	.db 0x0a
      0034A3 00                    3138 	.db 0x00
                                   3139 	.area CSEG    (CODE)
                                   3140 	.area CONST   (CODE)
      0034A4                       3141 ___str_1:
      0034A4 61 3D 20 25 64        3142 	.ascii "a= %d"
      0034A9 0D                    3143 	.db 0x0d
      0034AA 0A                    3144 	.db 0x0a
      0034AB 00                    3145 	.db 0x00
                                   3146 	.area CSEG    (CODE)
                                   3147 	.area CONST   (CODE)
      0034AC                       3148 ___str_2:
      0034AC 62 3D 20 25 64        3149 	.ascii "b= %d"
      0034B1 0D                    3150 	.db 0x0d
      0034B2 0A                    3151 	.db 0x0a
      0034B3 00                    3152 	.db 0x00
                                   3153 	.area CSEG    (CODE)
                                   3154 	.area CONST   (CODE)
      0034B4                       3155 ___str_3:
      0034B4 20 63 20 3D 20 25 64  3156 	.ascii " c = %d"
      0034BB 0D                    3157 	.db 0x0d
      0034BC 0A                    3158 	.db 0x0a
      0034BD 00                    3159 	.db 0x00
                                   3160 	.area CSEG    (CODE)
                                   3161 	.area CONST   (CODE)
      0034BE                       3162 ___str_4:
      0034BE 20 64 20 3D 20 25 64  3163 	.ascii " d = %d "
             20
      0034C6 0D                    3164 	.db 0x0d
      0034C7 0A                    3165 	.db 0x0a
      0034C8 00                    3166 	.db 0x00
                                   3167 	.area CSEG    (CODE)
                                   3168 	.area CONST   (CODE)
      0034C9                       3169 ___str_5:
      0034C9 6E 75 6D 62 65 72 20  3170 	.ascii "number = %d"
             3D 20 25 64
      0034D4 0A                    3171 	.db 0x0a
      0034D5 0D                    3172 	.db 0x0d
      0034D6 00                    3173 	.db 0x00
                                   3174 	.area CSEG    (CODE)
                                   3175 	.area CONST   (CODE)
      0034D7                       3176 ___str_6:
      0034D7 76 61 6C 69 64 20 69  3177 	.ascii "valid input"
             6E 70 75 74
      0034E2 0D                    3178 	.db 0x0d
      0034E3 0A                    3179 	.db 0x0a
      0034E4 00                    3180 	.db 0x00
                                   3181 	.area CSEG    (CODE)
                                   3182 	.area CONST   (CODE)
      0034E5                       3183 ___str_7:
      0034E5 6E 75 6D 3D 20 25 64  3184 	.ascii "num= %d"
      0034EC 00                    3185 	.db 0x00
                                   3186 	.area CSEG    (CODE)
                                   3187 	.area CONST   (CODE)
      0034ED                       3188 ___str_8:
      0034ED 6E 6F 74 20 61 20 76  3189 	.ascii "not a valid input"
             61 6C 69 64 20 69 6E
             70 75 74
      0034FE 0D                    3190 	.db 0x0d
      0034FF 0A                    3191 	.db 0x0a
      003500 00                    3192 	.db 0x00
                                   3193 	.area CSEG    (CODE)
                                   3194 	.area CONST   (CODE)
      003501                       3195 ___str_9:
      003501 45 6E 74 65 72 20 61  3196 	.ascii "Enter a value divisible btw 30 and 300"
             20 76 61 6C 75 65 20
             64 69 76 69 73 69 62
             6C 65 20 62 74 77 20
             33 30 20 61 6E 64 20
             33 30 30
      003527 0D                    3197 	.db 0x0d
      003528 0A                    3198 	.db 0x0a
      003529 00                    3199 	.db 0x00
                                   3200 	.area CSEG    (CODE)
                                   3201 	.area CONST   (CODE)
      00352A                       3202 ___str_10:
      00352A 20 71 20 3D 20 25 64  3203 	.ascii " q = %d "
             20
      003532 0D                    3204 	.db 0x0d
      003533 0A                    3205 	.db 0x0a
      003534 00                    3206 	.db 0x00
                                   3207 	.area CSEG    (CODE)
                                   3208 	.area CONST   (CODE)
      003535                       3209 ___str_11:
      003535 20 72 20 3D 20 25 64  3210 	.ascii " r = %d "
             20
      00353D 0D                    3211 	.db 0x0d
      00353E 0A                    3212 	.db 0x0a
      00353F 00                    3213 	.db 0x00
                                   3214 	.area CSEG    (CODE)
                                   3215 	.area CONST   (CODE)
      003540                       3216 ___str_12:
      003540 20 73 20 3D 20 25 64  3217 	.ascii " s = %d "
             20
      003548 0D                    3218 	.db 0x0d
      003549 0A                    3219 	.db 0x0a
      00354A 00                    3220 	.db 0x00
                                   3221 	.area CSEG    (CODE)
                                   3222 	.area CONST   (CODE)
      00354B                       3223 ___str_13:
      00354B 6E 65 77 20 76 61 6C  3224 	.ascii "new value of buffer is = %d"
             75 65 20 6F 66 20 62
             75 66 66 65 72 20 69
             73 20 3D 20 25 64
      003566 00                    3225 	.db 0x00
                                   3226 	.area CSEG    (CODE)
                                   3227 	.area CONST   (CODE)
      003567                       3228 ___str_14:
      003567 65 6E 74 65 72 20 74  3229 	.ascii "enter the number of buffer to delete"
             68 65 20 6E 75 6D 62
             65 72 20 6F 66 20 62
             75 66 66 65 72 20 74
             6F 20 64 65 6C 65 74
             65
      00358B 00                    3230 	.db 0x00
                                   3231 	.area CSEG    (CODE)
                                   3232 	.area CONST   (CODE)
      00358C                       3233 ___str_15:
      00358C 74 68 65 20 6E 75 6D  3234 	.ascii "the number is %d"
             62 65 72 20 69 73 20
             25 64
      00359C 00                    3235 	.db 0x00
                                   3236 	.area CSEG    (CODE)
                                   3237 	.area CONST   (CODE)
      00359D                       3238 ___str_16:
      00359D 6D 61 6C 6C 6F 63 20  3239 	.ascii "malloc for buffer0 is successful"
             66 6F 72 20 62 75 66
             66 65 72 30 20 69 73
             20 73 75 63 63 65 73
             73 66 75 6C
      0035BD 0D                    3240 	.db 0x0d
      0035BE 0A                    3241 	.db 0x0a
      0035BF 00                    3242 	.db 0x00
                                   3243 	.area CSEG    (CODE)
                                   3244 	.area CONST   (CODE)
      0035C0                       3245 ___str_17:
      0035C0 73 74 61 72 74 69 6E  3246 	.ascii "starting address of buffer 0 is %x"
             67 20 61 64 64 72 65
             73 73 20 6F 66 20 62
             75 66 66 65 72 20 30
             20 69 73 20 25 78
      0035E2 0D                    3247 	.db 0x0d
      0035E3 0A                    3248 	.db 0x0a
      0035E4 00                    3249 	.db 0x00
                                   3250 	.area CSEG    (CODE)
                                   3251 	.area CONST   (CODE)
      0035E5                       3252 ___str_18:
      0035E5 6D 61 6C 6C 6F 63 20  3253 	.ascii "malloc for buffer1 is successful"
             66 6F 72 20 62 75 66
             66 65 72 31 20 69 73
             20 73 75 63 63 65 73
             73 66 75 6C
      003605 0D                    3254 	.db 0x0d
      003606 0A                    3255 	.db 0x0a
      003607 00                    3256 	.db 0x00
                                   3257 	.area CSEG    (CODE)
                                   3258 	.area CONST   (CODE)
      003608                       3259 ___str_19:
      003608 73 74 61 72 74 69 6E  3260 	.ascii "starting address of buffer 1 is %x"
             67 20 61 64 64 72 65
             73 73 20 6F 66 20 62
             75 66 66 65 72 20 31
             20 69 73 20 25 78
      00362A 0D                    3261 	.db 0x0d
      00362B 0A                    3262 	.db 0x0a
      00362C 00                    3263 	.db 0x00
                                   3264 	.area CSEG    (CODE)
                                   3265 	.area CONST   (CODE)
      00362D                       3266 ___str_20:
      00362D 45 6E 74 65 72 20 61  3267 	.ascii "Enter a character"
             20 63 68 61 72 61 63
             74 65 72
      00363E 0D                    3268 	.db 0x0d
      00363F 0A                    3269 	.db 0x0a
      003640 00                    3270 	.db 0x00
                                   3271 	.area CSEG    (CODE)
                                   3272 	.area CONST   (CODE)
      003641                       3273 ___str_21:
      003641 74 68 65 20 69 6E 70  3274 	.ascii "the input character is %d"
             75 74 20 63 68 61 72
             61 63 74 65 72 20 69
             73 20 25 64
      00365A 0D                    3275 	.db 0x0d
      00365B 0A                    3276 	.db 0x0a
      00365C 00                    3277 	.db 0x00
                                   3278 	.area CSEG    (CODE)
                                   3279 	.area CONST   (CODE)
      00365D                       3280 ___str_22:
      00365D 62 75 66 66 65 72 20  3281 	.ascii "buffer is "
             69 73 20
      003667 0D                    3282 	.db 0x0d
      003668 0A                    3283 	.db 0x0a
      003669 25 70                 3284 	.ascii "%p"
      00366B 00                    3285 	.db 0x00
                                   3286 	.area CSEG    (CODE)
                                   3287 	.area CONST   (CODE)
      00366C                       3288 ___str_23:
      00366C 63 6F 75 6E 74 20 3D  3289 	.ascii "count = %d"
             20 25 64
      003676 0D                    3290 	.db 0x0d
      003677 0A                    3291 	.db 0x0a
      003678 00                    3292 	.db 0x00
                                   3293 	.area CSEG    (CODE)
                                   3294 	.area CONST   (CODE)
      003679                       3295 ___str_24:
      003679 62 75 66 66 65 72 20  3296 	.ascii "buffer is full"
             69 73 20 66 75 6C 6C
      003687 0D                    3297 	.db 0x0d
      003688 0A                    3298 	.db 0x0a
      003689 00                    3299 	.db 0x00
                                   3300 	.area CSEG    (CODE)
                                   3301 	.area CONST   (CODE)
      00368A                       3302 ___str_25:
      00368A 20 41 6C 6C 6F 63 61  3303 	.ascii " Allocating a new buffer"
             74 69 6E 67 20 61 20
             6E 65 77 20 62 75 66
             66 65 72
      0036A2 0D                    3304 	.db 0x0d
      0036A3 0A                    3305 	.db 0x0a
      0036A4 00                    3306 	.db 0x00
                                   3307 	.area CSEG    (CODE)
                                   3308 	.area CONST   (CODE)
      0036A5                       3309 ___str_26:
      0036A5 65 6E 74 65 72 20 61  3310 	.ascii "enter a new value between 30 and 300"
             20 6E 65 77 20 76 61
             6C 75 65 20 62 65 74
             77 65 65 6E 20 33 30
             20 61 6E 64 20 33 30
             30
      0036C9 0D                    3311 	.db 0x0d
      0036CA 0A                    3312 	.db 0x0a
      0036CB 00                    3313 	.db 0x00
                                   3314 	.area CSEG    (CODE)
                                   3315 	.area CONST   (CODE)
      0036CC                       3316 ___str_27:
      0036CC 0A                    3317 	.db 0x0a
      0036CD 0D                    3318 	.db 0x0d
      0036CE 4D 65 6D 6F 72 79 20  3319 	.ascii "Memory Allocation for Buffer_%d Failed"
             41 6C 6C 6F 63 61 74
             69 6F 6E 20 66 6F 72
             20 42 75 66 66 65 72
             5F 25 64 20 46 61 69
             6C 65 64
      0036F4 0A                    3320 	.db 0x0a
      0036F5 0D                    3321 	.db 0x0d
      0036F6 50 72 65 73 73 20 27  3322 	.ascii "Press '+' to Try again"
             2B 27 20 74 6F 20 54
             72 79 20 61 67 61 69
             6E
      00370C 0A                    3323 	.db 0x0a
      00370D 0D                    3324 	.db 0x0d
      00370E 00                    3325 	.db 0x00
                                   3326 	.area CSEG    (CODE)
                                   3327 	.area CONST   (CODE)
      00370F                       3328 ___str_28:
      00370F 0A                    3329 	.db 0x0a
      003710 0D                    3330 	.db 0x0d
      003711 4D 65 6D 6F 72 79 20  3331 	.ascii "Memory Allocation Successful for Buffer_%d"
             41 6C 6C 6F 63 61 74
             69 6F 6E 20 53 75 63
             63 65 73 73 66 75 6C
             20 66 6F 72 20 42 75
             66 66 65 72 5F 25 64
      00373B 0A                    3332 	.db 0x0a
      00373C 0D                    3333 	.db 0x0d
      00373D 00                    3334 	.db 0x00
                                   3335 	.area CSEG    (CODE)
                                   3336 	.area CONST   (CODE)
      00373E                       3337 ___str_29:
      00373E 0A                    3338 	.db 0x0a
      00373F 0D                    3339 	.db 0x0d
      003740 42 75 66 66 65 72 5F  3340 	.ascii "Buffer_%d allocated of size %d"
             25 64 20 61 6C 6C 6F
             63 61 74 65 64 20 6F
             66 20 73 69 7A 65 20
             25 64
      00375E 0A                    3341 	.db 0x0a
      00375F 0D                    3342 	.db 0x0d
      003760 00                    3343 	.db 0x00
                                   3344 	.area CSEG    (CODE)
                                   3345 	.area CONST   (CODE)
      003761                       3346 ___str_30:
      003761 0A                    3347 	.db 0x0a
      003762 0D                    3348 	.db 0x0d
      003763 41 64 64 72 65 73 73  3349 	.ascii "Address of buffer_%d = 0x%x"
             20 6F 66 20 62 75 66
             66 65 72 5F 25 64 20
             3D 20 30 78 25 78
      00377E 0A                    3350 	.db 0x0a
      00377F 0D                    3351 	.db 0x0d
      003780 00                    3352 	.db 0x00
                                   3353 	.area CSEG    (CODE)
                                   3354 	.area CONST   (CODE)
      003781                       3355 ___str_31:
      003781 0A                    3356 	.db 0x0a
      003782 0D                    3357 	.db 0x0d
      003783 45 6E 74 65 72 20 61  3358 	.ascii "Enter a valid buffer number"
             20 76 61 6C 69 64 20
             62 75 66 66 65 72 20
             6E 75 6D 62 65 72
      00379E 0A                    3359 	.db 0x0a
      00379F 0D                    3360 	.db 0x0d
      0037A0 00                    3361 	.db 0x00
                                   3362 	.area CSEG    (CODE)
                                   3363 	.area CONST   (CODE)
      0037A1                       3364 ___str_32:
      0037A1 0A                    3365 	.db 0x0a
      0037A2 0D                    3366 	.db 0x0d
      0037A3 42 75 66 66 65 72 20  3367 	.ascii "Buffer 0 cannot be deleted!"
             30 20 63 61 6E 6E 6F
             74 20 62 65 20 64 65
             6C 65 74 65 64 21
      0037BE 0A                    3368 	.db 0x0a
      0037BF 0D                    3369 	.db 0x0d
      0037C0 00                    3370 	.db 0x00
                                   3371 	.area CSEG    (CODE)
                                   3372 	.area CONST   (CODE)
      0037C1                       3373 ___str_33:
      0037C1 0A                    3374 	.db 0x0a
      0037C2 0D                    3375 	.db 0x0d
      0037C3 42 75 66 66 65 72 20  3376 	.ascii "Buffer 1>%d"
             31 3E 25 64
      0037CE 0A                    3377 	.db 0x0a
      0037CF 0D                    3378 	.db 0x0d
      0037D0 00                    3379 	.db 0x00
                                   3380 	.area CSEG    (CODE)
                                   3381 	.area CONST   (CODE)
      0037D1                       3382 ___str_34:
      0037D1 42 75 66 66 65 72 20  3383 	.ascii "Buffer 1 deleted"
             31 20 64 65 6C 65 74
             65 64
      0037E1 0D                    3384 	.db 0x0d
      0037E2 0A                    3385 	.db 0x0a
      0037E3 00                    3386 	.db 0x00
                                   3387 	.area CSEG    (CODE)
                                   3388 	.area CONST   (CODE)
      0037E4                       3389 ___str_35:
      0037E4 0A                    3390 	.db 0x0a
      0037E5 0D                    3391 	.db 0x0d
      0037E6 44 65 6C 65 74 69 6E  3392 	.ascii "Deleting buffer_%d........."
             67 20 62 75 66 66 65
             72 5F 25 64 2E 2E 2E
             2E 2E 2E 2E 2E 2E
      003801 0A                    3393 	.db 0x0a
      003802 0D                    3394 	.db 0x0d
      003803 00                    3395 	.db 0x00
                                   3396 	.area CSEG    (CODE)
                                   3397 	.area CONST   (CODE)
      003804                       3398 ___str_36:
      003804 0A                    3399 	.db 0x0a
      003805 0D                    3400 	.db 0x0d
      003806 42 75 66 66 65 72 20  3401 	.ascii "Buffer %d  is free"
             25 64 20 20 69 73 20
             66 72 65 65
      003818 0A                    3402 	.db 0x0a
      003819 0D                    3403 	.db 0x0d
      00381A 00                    3404 	.db 0x00
                                   3405 	.area CSEG    (CODE)
                                   3406 	.area CONST   (CODE)
      00381B                       3407 ___str_37:
      00381B 0A                    3408 	.db 0x0a
      00381C 0D                    3409 	.db 0x0d
      00381D 45 6E 74 65 72 20 61  3410 	.ascii "Enter a valid buffer number"
             20 76 61 6C 69 64 20
             62 75 66 66 65 72 20
             6E 75 6D 62 65 72
      003838 0A                    3411 	.db 0x0a
      003839 0D                    3412 	.db 0x0d
      00383A 50 72 65 73 73 20 27  3413 	.ascii "Press '-' to delete any valid buffer"
             2D 27 20 74 6F 20 64
             65 6C 65 74 65 20 61
             6E 79 20 76 61 6C 69
             64 20 62 75 66 66 65
             72
      00385E 0A                    3414 	.db 0x0a
      00385F 0D                    3415 	.db 0x0d
      003860 00                    3416 	.db 0x00
                                   3417 	.area CSEG    (CODE)
                                   3418 	.area CONST   (CODE)
      003861                       3419 ___str_38:
      003861 20 48 45 41 50 20 52  3420 	.ascii " HEAP REPORT of buffer_0 "
             45 50 4F 52 54 20 6F
             66 20 62 75 66 66 65
             72 5F 30 20
      00387A 0D                    3421 	.db 0x0d
      00387B 0A                    3422 	.db 0x0a
      00387C 00                    3423 	.db 0x00
                                   3424 	.area CSEG    (CODE)
                                   3425 	.area CONST   (CODE)
      00387D                       3426 ___str_39:
      00387D 0A                    3427 	.db 0x0a
      00387E 0D                    3428 	.db 0x0d
      00387F 53 74 61 72 74 20 41  3429 	.ascii "Start Addressof buffer_0x%x"
             64 64 72 65 73 73 6F
             66 20 62 75 66 66 65
             72 5F 30 78 25 78
      00389A 0A                    3430 	.db 0x0a
      00389B 0D                    3431 	.db 0x0d
      00389C 00                    3432 	.db 0x00
                                   3433 	.area CSEG    (CODE)
                                   3434 	.area CONST   (CODE)
      00389D                       3435 ___str_40:
      00389D 0A                    3436 	.db 0x0a
      00389E 0D                    3437 	.db 0x0d
      00389F 45 6E 64 69 6E 67 20  3438 	.ascii "Ending Address of buffer_0x%x"
             41 64 64 72 65 73 73
             20 6F 66 20 62 75 66
             66 65 72 5F 30 78 25
             78
      0038BC 0A                    3439 	.db 0x0a
      0038BD 0D                    3440 	.db 0x0d
      0038BE 00                    3441 	.db 0x00
                                   3442 	.area CSEG    (CODE)
                                   3443 	.area CONST   (CODE)
      0038BF                       3444 ___str_41:
      0038BF 0A                    3445 	.db 0x0a
      0038C0 0D                    3446 	.db 0x0d
      0038C1 42 75 66 66 65 72 20  3447 	.ascii "Buffer Size of buffer_0 %d"
             53 69 7A 65 20 6F 66
             20 62 75 66 66 65 72
             5F 30 20 25 64
      0038DB 0A                    3448 	.db 0x0a
      0038DC 0D                    3449 	.db 0x0d
      0038DD 00                    3450 	.db 0x00
                                   3451 	.area CSEG    (CODE)
                                   3452 	.area CONST   (CODE)
      0038DE                       3453 ___str_42:
      0038DE 0A                    3454 	.db 0x0a
      0038DF 0D                    3455 	.db 0x0d
      0038E0 53 74 6F 72 65 64 20  3456 	.ascii "Stored characters in buffer>>>%d"
             63 68 61 72 61 63 74
             65 72 73 20 69 6E 20
             62 75 66 66 65 72 3E
             3E 3E 25 64
      003900 0A                    3457 	.db 0x0a
      003901 0D                    3458 	.db 0x0d
      003902 00                    3459 	.db 0x00
                                   3460 	.area CSEG    (CODE)
                                   3461 	.area CONST   (CODE)
      003903                       3462 ___str_43:
      003903 0A                    3463 	.db 0x0a
      003904 0D                    3464 	.db 0x0d
      003905 46 72 65 65 20 53 70  3465 	.ascii "Free Spaces in buffer%d"
             61 63 65 73 20 69 6E
             20 62 75 66 66 65 72
             25 64
      00391C 0A                    3466 	.db 0x0a
      00391D 0D                    3467 	.db 0x0d
      00391E 00                    3468 	.db 0x00
                                   3469 	.area CSEG    (CODE)
                                   3470 	.area CONST   (CODE)
      00391F                       3471 ___str_44:
      00391F 0A                    3472 	.db 0x0a
      003920 0D                    3473 	.db 0x0d
      003921 48 65 61 70 20 73 74  3474 	.ascii "Heap status of buffer_1"
             61 74 75 73 20 6F 66
             20 62 75 66 66 65 72
             5F 31
      003938 0A                    3475 	.db 0x0a
      003939 0D                    3476 	.db 0x0d
      00393A 00                    3477 	.db 0x00
                                   3478 	.area CSEG    (CODE)
                                   3479 	.area CONST   (CODE)
      00393B                       3480 ___str_45:
      00393B 0A                    3481 	.db 0x0a
      00393C 0D                    3482 	.db 0x0d
      00393D 53 74 61 72 74 20 41  3483 	.ascii "Start Address of buffer_1 x%x"
             64 64 72 65 73 73 20
             6F 66 20 62 75 66 66
             65 72 5F 31 20 78 25
             78
      00395A 0A                    3484 	.db 0x0a
      00395B 0D                    3485 	.db 0x0d
      00395C 00                    3486 	.db 0x00
                                   3487 	.area CSEG    (CODE)
                                   3488 	.area CONST   (CODE)
      00395D                       3489 ___str_46:
      00395D 0A                    3490 	.db 0x0a
      00395E 0D                    3491 	.db 0x0d
      00395F 45 6E 64 69 6E 67 20  3492 	.ascii "Ending Address of buffer_1x%x"
             41 64 64 72 65 73 73
             20 6F 66 20 62 75 66
             66 65 72 5F 31 78 25
             78
      00397C 0A                    3493 	.db 0x0a
      00397D 0D                    3494 	.db 0x0d
      00397E 00                    3495 	.db 0x00
                                   3496 	.area CSEG    (CODE)
                                   3497 	.area CONST   (CODE)
      00397F                       3498 ___str_47:
      00397F 0A                    3499 	.db 0x0a
      003980 0D                    3500 	.db 0x0d
      003981 42 75 66 66 65 72 20  3501 	.ascii "Buffer Size%d"
             53 69 7A 65 25 64
      00398E 0A                    3502 	.db 0x0a
      00398F 0D                    3503 	.db 0x0d
      003990 00                    3504 	.db 0x00
                                   3505 	.area CSEG    (CODE)
                                   3506 	.area CONST   (CODE)
      003991                       3507 ___str_48:
      003991 0A                    3508 	.db 0x0a
      003992 0D                    3509 	.db 0x0d
      003993 53 74 6F 72 61 67 65  3510 	.ascii "Storage characters in buffer>>>0"
             20 63 68 61 72 61 63
             74 65 72 73 20 69 6E
             20 62 75 66 66 65 72
             3E 3E 3E 30
      0039B3 0A                    3511 	.db 0x0a
      0039B4 0D                    3512 	.db 0x0d
      0039B5 00                    3513 	.db 0x00
                                   3514 	.area CSEG    (CODE)
                                   3515 	.area CONST   (CODE)
      0039B6                       3516 ___str_49:
      0039B6 0A                    3517 	.db 0x0a
      0039B7 0D                    3518 	.db 0x0d
      0039B8 46 72 65 65 20 53 70  3519 	.ascii "Free Spaces in buffer>>>>>>>>>>%d"
             61 63 65 73 20 69 6E
             20 62 75 66 66 65 72
             3E 3E 3E 3E 3E 3E 3E
             3E 3E 3E 25 64
      0039D9 0A                    3520 	.db 0x0a
      0039DA 0D                    3521 	.db 0x0d
      0039DB 00                    3522 	.db 0x00
                                   3523 	.area CSEG    (CODE)
                                   3524 	.area CONST   (CODE)
      0039DC                       3525 ___str_50:
      0039DC 0A                    3526 	.db 0x0a
      0039DD 0D                    3527 	.db 0x0d
      0039DE 42 55 46 46 45 52 20  3528 	.ascii "BUFFER %d"
             25 64
      0039E7 0A                    3529 	.db 0x0a
      0039E8 0D                    3530 	.db 0x0d
      0039E9 00                    3531 	.db 0x00
                                   3532 	.area CSEG    (CODE)
                                   3533 	.area CONST   (CODE)
      0039EA                       3534 ___str_51:
      0039EA 0A                    3535 	.db 0x0a
      0039EB 0D                    3536 	.db 0x0d
      0039EC 53 74 61 72 74 20 41  3537 	.ascii "Start Address0x%x"
             64 64 72 65 73 73 30
             78 25 78
      0039FD 0A                    3538 	.db 0x0a
      0039FE 0D                    3539 	.db 0x0d
      0039FF 00                    3540 	.db 0x00
                                   3541 	.area CSEG    (CODE)
                                   3542 	.area CONST   (CODE)
      003A00                       3543 ___str_52:
      003A00 0A                    3544 	.db 0x0a
      003A01 0D                    3545 	.db 0x0d
      003A02 45 6E 64 69 6E 67 20  3546 	.ascii "Ending Address0x%x"
             41 64 64 72 65 73 73
             30 78 25 78
      003A14 0A                    3547 	.db 0x0a
      003A15 0D                    3548 	.db 0x0d
      003A16 00                    3549 	.db 0x00
                                   3550 	.area CSEG    (CODE)
                                   3551 	.area CONST   (CODE)
      003A17                       3552 ___str_53:
      003A17 0A                    3553 	.db 0x0a
      003A18 0D                    3554 	.db 0x0d
      003A19 53 74 6F 72 61 67 65  3555 	.ascii "Storage characters in buffer0"
             20 63 68 61 72 61 63
             74 65 72 73 20 69 6E
             20 62 75 66 66 65 72
             30
      003A36 0A                    3556 	.db 0x0a
      003A37 0D                    3557 	.db 0x0d
      003A38 00                    3558 	.db 0x00
                                   3559 	.area CSEG    (CODE)
                                   3560 	.area CONST   (CODE)
      003A39                       3561 ___str_54:
      003A39 0A                    3562 	.db 0x0a
      003A3A 0D                    3563 	.db 0x0d
      003A3B 4E 75 6D 62 65 72 20  3564 	.ascii "Number of storage characters = %d"
             6F 66 20 73 74 6F 72
             61 67 65 20 63 68 61
             72 61 63 74 65 72 73
             20 3D 20 25 64
      003A5C 0A                    3565 	.db 0x0a
      003A5D 0D                    3566 	.db 0x0d
      003A5E 00                    3567 	.db 0x00
                                   3568 	.area CSEG    (CODE)
                                   3569 	.area CONST   (CODE)
      003A5F                       3570 ___str_55:
      003A5F 0A                    3571 	.db 0x0a
      003A60 0D                    3572 	.db 0x0d
      003A61 54 6F 74 61 6C 20 6E  3573 	.ascii "Total number of characters received = %d"
             75 6D 62 65 72 20 6F
             66 20 63 68 61 72 61
             63 74 65 72 73 20 72
             65 63 65 69 76 65 64
             20 3D 20 25 64
      003A89 0A                    3574 	.db 0x0a
      003A8A 0D                    3575 	.db 0x0d
      003A8B 00                    3576 	.db 0x00
                                   3577 	.area CSEG    (CODE)
                                   3578 	.area CONST   (CODE)
      003A8C                       3579 ___str_56:
      003A8C 0A                    3580 	.db 0x0a
      003A8D 0D                    3581 	.db 0x0d
      003A8E 54 6F 74 61 6C 20 6E  3582 	.ascii "Total number of buffers that were allocated since the start "
             75 6D 62 65 72 20 6F
             66 20 62 75 66 66 65
             72 73 20 74 68 61 74
             20 77 65 72 65 20 61
             6C 6C 6F 63 61 74 65
             64 20 73 69 6E 63 65
             20 74 68 65 20 73 74
             61 72 74 20
      003ACA 6F 66 20 74 68 65 20  3583 	.ascii "of the program = %d"
             70 72 6F 67 72 61 6D
             20 3D 20 25 64
      003ADD 0A                    3584 	.db 0x0a
      003ADE 0D                    3585 	.db 0x0d
      003ADF 00                    3586 	.db 0x00
                                   3587 	.area CSEG    (CODE)
                                   3588 	.area CONST   (CODE)
      003AE0                       3589 ___str_57:
      003AE0 0A                    3590 	.db 0x0a
      003AE1 0D                    3591 	.db 0x0d
      003AE2 43 6F 6E 74 65 6E 74  3592 	.ascii "Contents in Buffer 0"
             73 20 69 6E 20 42 75
             66 66 65 72 20 30
      003AF6 0A                    3593 	.db 0x0a
      003AF7 0D                    3594 	.db 0x0d
      003AF8 00                    3595 	.db 0x00
                                   3596 	.area CSEG    (CODE)
                                   3597 	.area CONST   (CODE)
      003AF9                       3598 ___str_58:
      003AF9 30 78 25 78 3E 3E 20  3599 	.ascii "0x%x>> %x"
             25 78
      003B02 00                    3600 	.db 0x00
                                   3601 	.area CSEG    (CODE)
                                   3602 	.area CONST   (CODE)
      003B03                       3603 ___str_59:
      003B03 20 25 78              3604 	.ascii " %x"
      003B06 00                    3605 	.db 0x00
                                   3606 	.area CSEG    (CODE)
                                   3607 	.area CONST   (CODE)
      003B07                       3608 ___str_60:
      003B07 0A                    3609 	.db 0x0a
      003B08 0D                    3610 	.db 0x0d
      003B09 30 78 25 78 3E 3E 20  3611 	.ascii "0x%x>> %x"
             25 78
      003B12 00                    3612 	.db 0x00
                                   3613 	.area CSEG    (CODE)
                                   3614 	.area CONST   (CODE)
      003B13                       3615 ___str_61:
      003B13 0A                    3616 	.db 0x0a
      003B14 0D                    3617 	.db 0x0d
      003B15 43 6F 6E 74 65 6E 74  3618 	.ascii "Contents in heap"
             73 20 69 6E 20 68 65
             61 70
      003B25 0A                    3619 	.db 0x0a
      003B26 0D                    3620 	.db 0x0d
      003B27 00                    3621 	.db 0x00
                                   3622 	.area CSEG    (CODE)
                                   3623 	.area CONST   (CODE)
      003B28                       3624 ___str_62:
      003B28 0A                    3625 	.db 0x0a
      003B29 0D                    3626 	.db 0x0d
      003B2A 46 72 65 65 20 42 75  3627 	.ascii "Free Buffer 0"
             66 66 65 72 20 30
      003B37 0A                    3628 	.db 0x0a
      003B38 0D                    3629 	.db 0x0d
      003B39 00                    3630 	.db 0x00
                                   3631 	.area CSEG    (CODE)
                                   3632 	.area CONST   (CODE)
      003B3A                       3633 ___str_63:
      003B3A 0A                    3634 	.db 0x0a
      003B3B 0D                    3635 	.db 0x0d
      003B3C 42 75 66 66 65 72 20  3636 	.ascii "Buffer 1 will now become empty"
             31 20 77 69 6C 6C 20
             6E 6F 77 20 62 65 63
             6F 6D 65 20 65 6D 70
             74 79
      003B5A 0A                    3637 	.db 0x0a
      003B5B 0D                    3638 	.db 0x0d
      003B5C 00                    3639 	.db 0x00
                                   3640 	.area CSEG    (CODE)
                                   3641 	.area CONST   (CODE)
      003B5D                       3642 ___str_64:
      003B5D 0A                    3643 	.db 0x0a
      003B5E 0D                    3644 	.db 0x0d
      003B5F 46 72 65 65 69 6E 67  3645 	.ascii "Freeing Buffer 1"
             20 42 75 66 66 65 72
             20 31
      003B6F 0A                    3646 	.db 0x0a
      003B70 0D                    3647 	.db 0x0d
      003B71 00                    3648 	.db 0x00
                                   3649 	.area CSEG    (CODE)
                                   3650 	.area CONST   (CODE)
      003B72                       3651 ___str_65:
      003B72 0A                    3652 	.db 0x0a
      003B73 0D                    3653 	.db 0x0d
      003B74 42 75 66 66 65 72 20  3654 	.ascii "Buffer 1 is empty"
             31 20 69 73 20 65 6D
             70 74 79
      003B85 0A                    3655 	.db 0x0a
      003B86 0D                    3656 	.db 0x0d
      003B87 00                    3657 	.db 0x00
                                   3658 	.area CSEG    (CODE)
                                   3659 	.area CONST   (CODE)
      003B88                       3660 ___str_66:
      003B88 0A                    3661 	.db 0x0a
      003B89 0D                    3662 	.db 0x0d
      003B8A 46 72 65 65 69 6E 67  3663 	.ascii "Freeing buffer_%d"
             20 62 75 66 66 65 72
             5F 25 64
      003B9B 0A                    3664 	.db 0x0a
      003B9C 0D                    3665 	.db 0x0d
      003B9D 00                    3666 	.db 0x00
                                   3667 	.area CSEG    (CODE)
                                   3668 	.area CONST   (CODE)
      003B9E                       3669 ___str_67:
      003B9E 0A                    3670 	.db 0x0a
      003B9F 0D                    3671 	.db 0x0d
      003BA0 42 75 66 66 65 72 20  3672 	.ascii "Buffer %d freed "
             25 64 20 66 72 65 65
             64 20
      003BB0 0A                    3673 	.db 0x0a
      003BB1 0D                    3674 	.db 0x0d
      003BB2 00                    3675 	.db 0x00
                                   3676 	.area CSEG    (CODE)
                                   3677 	.area XINIT   (CODE)
      003BB3                       3678 __xinit__storage:
      003BB3 00 00                 3679 	.byte #0x00, #0x00	; 0
      003BB5                       3680 __xinit__total_char:
      003BB5 00 00                 3681 	.byte #0x00, #0x00	; 0
      003BB7                       3682 __xinit__i:
      003BB7 00 00                 3683 	.byte #0x00, #0x00	;  0
                                   3684 	.area CABS    (ABS,CODE)
