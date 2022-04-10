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
                                     12 	.globl _eereset
                                     13 	.globl _I2CStart
                                     14 	.globl _getinput
                                     15 	.globl __sdcc_external_startup
                                     16 	.globl _delay
                                     17 	.globl _printf_tiny
                                     18 	.globl _printf
                                     19 	.globl _P5_7
                                     20 	.globl _P5_6
                                     21 	.globl _P5_5
                                     22 	.globl _P5_4
                                     23 	.globl _P5_3
                                     24 	.globl _P5_2
                                     25 	.globl _P5_1
                                     26 	.globl _P5_0
                                     27 	.globl _P4_7
                                     28 	.globl _P4_6
                                     29 	.globl _P4_5
                                     30 	.globl _P4_4
                                     31 	.globl _P4_3
                                     32 	.globl _P4_2
                                     33 	.globl _P4_1
                                     34 	.globl _P4_0
                                     35 	.globl _PX0L
                                     36 	.globl _PT0L
                                     37 	.globl _PX1L
                                     38 	.globl _PT1L
                                     39 	.globl _PSL
                                     40 	.globl _PT2L
                                     41 	.globl _PPCL
                                     42 	.globl _EC
                                     43 	.globl _CCF0
                                     44 	.globl _CCF1
                                     45 	.globl _CCF2
                                     46 	.globl _CCF3
                                     47 	.globl _CCF4
                                     48 	.globl _CR
                                     49 	.globl _CF
                                     50 	.globl _TF2
                                     51 	.globl _EXF2
                                     52 	.globl _RCLK
                                     53 	.globl _TCLK
                                     54 	.globl _EXEN2
                                     55 	.globl _TR2
                                     56 	.globl _C_T2
                                     57 	.globl _CP_RL2
                                     58 	.globl _T2CON_7
                                     59 	.globl _T2CON_6
                                     60 	.globl _T2CON_5
                                     61 	.globl _T2CON_4
                                     62 	.globl _T2CON_3
                                     63 	.globl _T2CON_2
                                     64 	.globl _T2CON_1
                                     65 	.globl _T2CON_0
                                     66 	.globl _PT2
                                     67 	.globl _ET2
                                     68 	.globl _CY
                                     69 	.globl _AC
                                     70 	.globl _F0
                                     71 	.globl _RS1
                                     72 	.globl _RS0
                                     73 	.globl _OV
                                     74 	.globl _F1
                                     75 	.globl _P
                                     76 	.globl _PS
                                     77 	.globl _PT1
                                     78 	.globl _PX1
                                     79 	.globl _PT0
                                     80 	.globl _PX0
                                     81 	.globl _RD
                                     82 	.globl _WR
                                     83 	.globl _T1
                                     84 	.globl _T0
                                     85 	.globl _INT1
                                     86 	.globl _INT0
                                     87 	.globl _TXD
                                     88 	.globl _RXD
                                     89 	.globl _P3_7
                                     90 	.globl _P3_6
                                     91 	.globl _P3_5
                                     92 	.globl _P3_4
                                     93 	.globl _P3_3
                                     94 	.globl _P3_2
                                     95 	.globl _P3_1
                                     96 	.globl _P3_0
                                     97 	.globl _EA
                                     98 	.globl _ES
                                     99 	.globl _ET1
                                    100 	.globl _EX1
                                    101 	.globl _ET0
                                    102 	.globl _EX0
                                    103 	.globl _P2_7
                                    104 	.globl _P2_6
                                    105 	.globl _P2_5
                                    106 	.globl _P2_4
                                    107 	.globl _P2_3
                                    108 	.globl _P2_2
                                    109 	.globl _P2_1
                                    110 	.globl _P2_0
                                    111 	.globl _SM0
                                    112 	.globl _SM1
                                    113 	.globl _SM2
                                    114 	.globl _REN
                                    115 	.globl _TB8
                                    116 	.globl _RB8
                                    117 	.globl _TI
                                    118 	.globl _RI
                                    119 	.globl _P1_7
                                    120 	.globl _P1_6
                                    121 	.globl _P1_5
                                    122 	.globl _P1_4
                                    123 	.globl _P1_3
                                    124 	.globl _P1_2
                                    125 	.globl _P1_1
                                    126 	.globl _P1_0
                                    127 	.globl _TF1
                                    128 	.globl _TR1
                                    129 	.globl _TF0
                                    130 	.globl _TR0
                                    131 	.globl _IE1
                                    132 	.globl _IT1
                                    133 	.globl _IE0
                                    134 	.globl _IT0
                                    135 	.globl _P0_7
                                    136 	.globl _P0_6
                                    137 	.globl _P0_5
                                    138 	.globl _P0_4
                                    139 	.globl _P0_3
                                    140 	.globl _P0_2
                                    141 	.globl _P0_1
                                    142 	.globl _P0_0
                                    143 	.globl _EECON
                                    144 	.globl _KBF
                                    145 	.globl _KBE
                                    146 	.globl _KBLS
                                    147 	.globl _BRL
                                    148 	.globl _BDRCON
                                    149 	.globl _T2MOD
                                    150 	.globl _SPDAT
                                    151 	.globl _SPSTA
                                    152 	.globl _SPCON
                                    153 	.globl _SADEN
                                    154 	.globl _SADDR
                                    155 	.globl _WDTPRG
                                    156 	.globl _WDTRST
                                    157 	.globl _P5
                                    158 	.globl _P4
                                    159 	.globl _IPH1
                                    160 	.globl _IPL1
                                    161 	.globl _IPH0
                                    162 	.globl _IPL0
                                    163 	.globl _IEN1
                                    164 	.globl _IEN0
                                    165 	.globl _CMOD
                                    166 	.globl _CL
                                    167 	.globl _CH
                                    168 	.globl _CCON
                                    169 	.globl _CCAPM4
                                    170 	.globl _CCAPM3
                                    171 	.globl _CCAPM2
                                    172 	.globl _CCAPM1
                                    173 	.globl _CCAPM0
                                    174 	.globl _CCAP4L
                                    175 	.globl _CCAP3L
                                    176 	.globl _CCAP2L
                                    177 	.globl _CCAP1L
                                    178 	.globl _CCAP0L
                                    179 	.globl _CCAP4H
                                    180 	.globl _CCAP3H
                                    181 	.globl _CCAP2H
                                    182 	.globl _CCAP1H
                                    183 	.globl _CCAP0H
                                    184 	.globl _CKCON1
                                    185 	.globl _CKCON0
                                    186 	.globl _CKRL
                                    187 	.globl _AUXR1
                                    188 	.globl _AUXR
                                    189 	.globl _TH2
                                    190 	.globl _TL2
                                    191 	.globl _RCAP2H
                                    192 	.globl _RCAP2L
                                    193 	.globl _T2CON
                                    194 	.globl _B
                                    195 	.globl _ACC
                                    196 	.globl _PSW
                                    197 	.globl _IP
                                    198 	.globl _P3
                                    199 	.globl _IE
                                    200 	.globl _P2
                                    201 	.globl _SBUF
                                    202 	.globl _SCON
                                    203 	.globl _P1
                                    204 	.globl _TH1
                                    205 	.globl _TH0
                                    206 	.globl _TL1
                                    207 	.globl _TL0
                                    208 	.globl _TMOD
                                    209 	.globl _TCON
                                    210 	.globl _PCON
                                    211 	.globl _DPH
                                    212 	.globl _DPL
                                    213 	.globl _SP
                                    214 	.globl _P0
                                    215 	.globl _reeprom_PARM_2
                                    216 	.globl _weeprom_PARM_3
                                    217 	.globl _weeprom_PARM_2
                                    218 	.globl _putchar
                                    219 	.globl _getchar
                                    220 	.globl _stop
                                    221 	.globl _in
                                    222 	.globl _outs
                                    223 	.globl _out
                                    224 	.globl _weeprom
                                    225 	.globl _read
                                    226 	.globl _reeprom
                                    227 ;--------------------------------------------------------
                                    228 ; special function registers
                                    229 ;--------------------------------------------------------
                                    230 	.area RSEG    (ABS,DATA)
      000000                        231 	.org 0x0000
                           000080   232 _P0	=	0x0080
                           000081   233 _SP	=	0x0081
                           000082   234 _DPL	=	0x0082
                           000083   235 _DPH	=	0x0083
                           000087   236 _PCON	=	0x0087
                           000088   237 _TCON	=	0x0088
                           000089   238 _TMOD	=	0x0089
                           00008A   239 _TL0	=	0x008a
                           00008B   240 _TL1	=	0x008b
                           00008C   241 _TH0	=	0x008c
                           00008D   242 _TH1	=	0x008d
                           000090   243 _P1	=	0x0090
                           000098   244 _SCON	=	0x0098
                           000099   245 _SBUF	=	0x0099
                           0000A0   246 _P2	=	0x00a0
                           0000A8   247 _IE	=	0x00a8
                           0000B0   248 _P3	=	0x00b0
                           0000B8   249 _IP	=	0x00b8
                           0000D0   250 _PSW	=	0x00d0
                           0000E0   251 _ACC	=	0x00e0
                           0000F0   252 _B	=	0x00f0
                           0000C8   253 _T2CON	=	0x00c8
                           0000CA   254 _RCAP2L	=	0x00ca
                           0000CB   255 _RCAP2H	=	0x00cb
                           0000CC   256 _TL2	=	0x00cc
                           0000CD   257 _TH2	=	0x00cd
                           00008E   258 _AUXR	=	0x008e
                           0000A2   259 _AUXR1	=	0x00a2
                           000097   260 _CKRL	=	0x0097
                           00008F   261 _CKCON0	=	0x008f
                           0000AF   262 _CKCON1	=	0x00af
                           0000FA   263 _CCAP0H	=	0x00fa
                           0000FB   264 _CCAP1H	=	0x00fb
                           0000FC   265 _CCAP2H	=	0x00fc
                           0000FD   266 _CCAP3H	=	0x00fd
                           0000FE   267 _CCAP4H	=	0x00fe
                           0000EA   268 _CCAP0L	=	0x00ea
                           0000EB   269 _CCAP1L	=	0x00eb
                           0000EC   270 _CCAP2L	=	0x00ec
                           0000ED   271 _CCAP3L	=	0x00ed
                           0000EE   272 _CCAP4L	=	0x00ee
                           0000DA   273 _CCAPM0	=	0x00da
                           0000DB   274 _CCAPM1	=	0x00db
                           0000DC   275 _CCAPM2	=	0x00dc
                           0000DD   276 _CCAPM3	=	0x00dd
                           0000DE   277 _CCAPM4	=	0x00de
                           0000D8   278 _CCON	=	0x00d8
                           0000F9   279 _CH	=	0x00f9
                           0000E9   280 _CL	=	0x00e9
                           0000D9   281 _CMOD	=	0x00d9
                           0000A8   282 _IEN0	=	0x00a8
                           0000B1   283 _IEN1	=	0x00b1
                           0000B8   284 _IPL0	=	0x00b8
                           0000B7   285 _IPH0	=	0x00b7
                           0000B2   286 _IPL1	=	0x00b2
                           0000B3   287 _IPH1	=	0x00b3
                           0000C0   288 _P4	=	0x00c0
                           0000E8   289 _P5	=	0x00e8
                           0000A6   290 _WDTRST	=	0x00a6
                           0000A7   291 _WDTPRG	=	0x00a7
                           0000A9   292 _SADDR	=	0x00a9
                           0000B9   293 _SADEN	=	0x00b9
                           0000C3   294 _SPCON	=	0x00c3
                           0000C4   295 _SPSTA	=	0x00c4
                           0000C5   296 _SPDAT	=	0x00c5
                           0000C9   297 _T2MOD	=	0x00c9
                           00009B   298 _BDRCON	=	0x009b
                           00009A   299 _BRL	=	0x009a
                           00009C   300 _KBLS	=	0x009c
                           00009D   301 _KBE	=	0x009d
                           00009E   302 _KBF	=	0x009e
                           0000D2   303 _EECON	=	0x00d2
                                    304 ;--------------------------------------------------------
                                    305 ; special function bits
                                    306 ;--------------------------------------------------------
                                    307 	.area RSEG    (ABS,DATA)
      000000                        308 	.org 0x0000
                           000080   309 _P0_0	=	0x0080
                           000081   310 _P0_1	=	0x0081
                           000082   311 _P0_2	=	0x0082
                           000083   312 _P0_3	=	0x0083
                           000084   313 _P0_4	=	0x0084
                           000085   314 _P0_5	=	0x0085
                           000086   315 _P0_6	=	0x0086
                           000087   316 _P0_7	=	0x0087
                           000088   317 _IT0	=	0x0088
                           000089   318 _IE0	=	0x0089
                           00008A   319 _IT1	=	0x008a
                           00008B   320 _IE1	=	0x008b
                           00008C   321 _TR0	=	0x008c
                           00008D   322 _TF0	=	0x008d
                           00008E   323 _TR1	=	0x008e
                           00008F   324 _TF1	=	0x008f
                           000090   325 _P1_0	=	0x0090
                           000091   326 _P1_1	=	0x0091
                           000092   327 _P1_2	=	0x0092
                           000093   328 _P1_3	=	0x0093
                           000094   329 _P1_4	=	0x0094
                           000095   330 _P1_5	=	0x0095
                           000096   331 _P1_6	=	0x0096
                           000097   332 _P1_7	=	0x0097
                           000098   333 _RI	=	0x0098
                           000099   334 _TI	=	0x0099
                           00009A   335 _RB8	=	0x009a
                           00009B   336 _TB8	=	0x009b
                           00009C   337 _REN	=	0x009c
                           00009D   338 _SM2	=	0x009d
                           00009E   339 _SM1	=	0x009e
                           00009F   340 _SM0	=	0x009f
                           0000A0   341 _P2_0	=	0x00a0
                           0000A1   342 _P2_1	=	0x00a1
                           0000A2   343 _P2_2	=	0x00a2
                           0000A3   344 _P2_3	=	0x00a3
                           0000A4   345 _P2_4	=	0x00a4
                           0000A5   346 _P2_5	=	0x00a5
                           0000A6   347 _P2_6	=	0x00a6
                           0000A7   348 _P2_7	=	0x00a7
                           0000A8   349 _EX0	=	0x00a8
                           0000A9   350 _ET0	=	0x00a9
                           0000AA   351 _EX1	=	0x00aa
                           0000AB   352 _ET1	=	0x00ab
                           0000AC   353 _ES	=	0x00ac
                           0000AF   354 _EA	=	0x00af
                           0000B0   355 _P3_0	=	0x00b0
                           0000B1   356 _P3_1	=	0x00b1
                           0000B2   357 _P3_2	=	0x00b2
                           0000B3   358 _P3_3	=	0x00b3
                           0000B4   359 _P3_4	=	0x00b4
                           0000B5   360 _P3_5	=	0x00b5
                           0000B6   361 _P3_6	=	0x00b6
                           0000B7   362 _P3_7	=	0x00b7
                           0000B0   363 _RXD	=	0x00b0
                           0000B1   364 _TXD	=	0x00b1
                           0000B2   365 _INT0	=	0x00b2
                           0000B3   366 _INT1	=	0x00b3
                           0000B4   367 _T0	=	0x00b4
                           0000B5   368 _T1	=	0x00b5
                           0000B6   369 _WR	=	0x00b6
                           0000B7   370 _RD	=	0x00b7
                           0000B8   371 _PX0	=	0x00b8
                           0000B9   372 _PT0	=	0x00b9
                           0000BA   373 _PX1	=	0x00ba
                           0000BB   374 _PT1	=	0x00bb
                           0000BC   375 _PS	=	0x00bc
                           0000D0   376 _P	=	0x00d0
                           0000D1   377 _F1	=	0x00d1
                           0000D2   378 _OV	=	0x00d2
                           0000D3   379 _RS0	=	0x00d3
                           0000D4   380 _RS1	=	0x00d4
                           0000D5   381 _F0	=	0x00d5
                           0000D6   382 _AC	=	0x00d6
                           0000D7   383 _CY	=	0x00d7
                           0000AD   384 _ET2	=	0x00ad
                           0000BD   385 _PT2	=	0x00bd
                           0000C8   386 _T2CON_0	=	0x00c8
                           0000C9   387 _T2CON_1	=	0x00c9
                           0000CA   388 _T2CON_2	=	0x00ca
                           0000CB   389 _T2CON_3	=	0x00cb
                           0000CC   390 _T2CON_4	=	0x00cc
                           0000CD   391 _T2CON_5	=	0x00cd
                           0000CE   392 _T2CON_6	=	0x00ce
                           0000CF   393 _T2CON_7	=	0x00cf
                           0000C8   394 _CP_RL2	=	0x00c8
                           0000C9   395 _C_T2	=	0x00c9
                           0000CA   396 _TR2	=	0x00ca
                           0000CB   397 _EXEN2	=	0x00cb
                           0000CC   398 _TCLK	=	0x00cc
                           0000CD   399 _RCLK	=	0x00cd
                           0000CE   400 _EXF2	=	0x00ce
                           0000CF   401 _TF2	=	0x00cf
                           0000DF   402 _CF	=	0x00df
                           0000DE   403 _CR	=	0x00de
                           0000DC   404 _CCF4	=	0x00dc
                           0000DB   405 _CCF3	=	0x00db
                           0000DA   406 _CCF2	=	0x00da
                           0000D9   407 _CCF1	=	0x00d9
                           0000D8   408 _CCF0	=	0x00d8
                           0000AE   409 _EC	=	0x00ae
                           0000BE   410 _PPCL	=	0x00be
                           0000BD   411 _PT2L	=	0x00bd
                           0000BC   412 _PSL	=	0x00bc
                           0000BB   413 _PT1L	=	0x00bb
                           0000BA   414 _PX1L	=	0x00ba
                           0000B9   415 _PT0L	=	0x00b9
                           0000B8   416 _PX0L	=	0x00b8
                           0000C0   417 _P4_0	=	0x00c0
                           0000C1   418 _P4_1	=	0x00c1
                           0000C2   419 _P4_2	=	0x00c2
                           0000C3   420 _P4_3	=	0x00c3
                           0000C4   421 _P4_4	=	0x00c4
                           0000C5   422 _P4_5	=	0x00c5
                           0000C6   423 _P4_6	=	0x00c6
                           0000C7   424 _P4_7	=	0x00c7
                           0000E8   425 _P5_0	=	0x00e8
                           0000E9   426 _P5_1	=	0x00e9
                           0000EA   427 _P5_2	=	0x00ea
                           0000EB   428 _P5_3	=	0x00eb
                           0000EC   429 _P5_4	=	0x00ec
                           0000ED   430 _P5_5	=	0x00ed
                           0000EE   431 _P5_6	=	0x00ee
                           0000EF   432 _P5_7	=	0x00ef
                                    433 ;--------------------------------------------------------
                                    434 ; overlayable register banks
                                    435 ;--------------------------------------------------------
                                    436 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        437 	.ds 8
                                    438 ;--------------------------------------------------------
                                    439 ; internal ram data
                                    440 ;--------------------------------------------------------
                                    441 	.area DSEG    (DATA)
                                    442 ;--------------------------------------------------------
                                    443 ; overlayable items in internal ram 
                                    444 ;--------------------------------------------------------
                                    445 ;--------------------------------------------------------
                                    446 ; Stack segment in internal ram 
                                    447 ;--------------------------------------------------------
                                    448 	.area	SSEG
      000014                        449 __start__stack:
      000014                        450 	.ds	1
                                    451 
                                    452 ;--------------------------------------------------------
                                    453 ; indirectly addressable internal ram data
                                    454 ;--------------------------------------------------------
                                    455 	.area ISEG    (DATA)
                                    456 ;--------------------------------------------------------
                                    457 ; absolute internal ram data
                                    458 ;--------------------------------------------------------
                                    459 	.area IABS    (ABS,DATA)
                                    460 	.area IABS    (ABS,DATA)
                                    461 ;--------------------------------------------------------
                                    462 ; bit data
                                    463 ;--------------------------------------------------------
                                    464 	.area BSEG    (BIT)
                                    465 ;--------------------------------------------------------
                                    466 ; paged external ram data
                                    467 ;--------------------------------------------------------
                                    468 	.area PSEG    (PAG,XDATA)
                                    469 ;--------------------------------------------------------
                                    470 ; external ram data
                                    471 ;--------------------------------------------------------
                                    472 	.area XSEG    (XDATA)
      000400                        473 _putchar_c_65536_75:
      000400                        474 	.ds 2
      000402                        475 _getinput_e_65536_79:
      000402                        476 	.ds 1
      000403                        477 _getinput_f_65536_79:
      000403                        478 	.ds 1
      000404                        479 _in_aux_65536_86:
      000404                        480 	.ds 1
      000405                        481 _outs_datum_65536_89:
      000405                        482 	.ds 1
      000406                        483 _out_datum_65536_93:
      000406                        484 	.ds 1
      000407                        485 _weeprom_PARM_2:
      000407                        486 	.ds 1
      000408                        487 _weeprom_PARM_3:
      000408                        488 	.ds 1
      000409                        489 _weeprom_page_65536_97:
      000409                        490 	.ds 1
      00040A                        491 _read_readcmd_65536_99:
      00040A                        492 	.ds 1
      00040B                        493 _reeprom_PARM_2:
      00040B                        494 	.ds 1
      00040C                        495 _reeprom_page_65536_101:
      00040C                        496 	.ds 1
      00040D                        497 _eereset_datum_65536_104:
      00040D                        498 	.ds 1
                                    499 ;--------------------------------------------------------
                                    500 ; absolute external ram data
                                    501 ;--------------------------------------------------------
                                    502 	.area XABS    (ABS,XDATA)
                                    503 ;--------------------------------------------------------
                                    504 ; external initialized ram data
                                    505 ;--------------------------------------------------------
                                    506 	.area XISEG   (XDATA)
                                    507 	.area HOME    (CODE)
                                    508 	.area GSINIT0 (CODE)
                                    509 	.area GSINIT1 (CODE)
                                    510 	.area GSINIT2 (CODE)
                                    511 	.area GSINIT3 (CODE)
                                    512 	.area GSINIT4 (CODE)
                                    513 	.area GSINIT5 (CODE)
                                    514 	.area GSINIT  (CODE)
                                    515 	.area GSFINAL (CODE)
                                    516 	.area CSEG    (CODE)
                                    517 ;--------------------------------------------------------
                                    518 ; interrupt vector 
                                    519 ;--------------------------------------------------------
                                    520 	.area HOME    (CODE)
      002000                        521 __interrupt_vect:
      002000 02 20 06         [24]  522 	ljmp	__sdcc_gsinit_startup
                                    523 ;--------------------------------------------------------
                                    524 ; global & static initialisations
                                    525 ;--------------------------------------------------------
                                    526 	.area HOME    (CODE)
                                    527 	.area GSINIT  (CODE)
                                    528 	.area GSFINAL (CODE)
                                    529 	.area GSINIT  (CODE)
                                    530 	.globl __sdcc_gsinit_startup
                                    531 	.globl __sdcc_program_startup
                                    532 	.globl __start__stack
                                    533 	.globl __mcs51_genXINIT
                                    534 	.globl __mcs51_genXRAMCLEAR
                                    535 	.globl __mcs51_genRAMCLEAR
                                    536 	.area GSFINAL (CODE)
      00205F 02 20 03         [24]  537 	ljmp	__sdcc_program_startup
                                    538 ;--------------------------------------------------------
                                    539 ; Home
                                    540 ;--------------------------------------------------------
                                    541 	.area HOME    (CODE)
                                    542 	.area HOME    (CODE)
      002003                        543 __sdcc_program_startup:
      002003 02 22 E3         [24]  544 	ljmp	_main
                                    545 ;	return from main will return to caller
                                    546 ;--------------------------------------------------------
                                    547 ; code
                                    548 ;--------------------------------------------------------
                                    549 	.area CSEG    (CODE)
                                    550 ;------------------------------------------------------------
                                    551 ;Allocation info for local variables in function 'delay'
                                    552 ;------------------------------------------------------------
                                    553 ;j                         Allocated with name '_delay_j_65536_73'
                                    554 ;------------------------------------------------------------
                                    555 ;	main.c:45: void delay(void){
                                    556 ;	-----------------------------------------
                                    557 ;	 function delay
                                    558 ;	-----------------------------------------
      002062                        559 _delay:
                           000007   560 	ar7 = 0x07
                           000006   561 	ar6 = 0x06
                           000005   562 	ar5 = 0x05
                           000004   563 	ar4 = 0x04
                           000003   564 	ar3 = 0x03
                           000002   565 	ar2 = 0x02
                           000001   566 	ar1 = 0x01
                           000000   567 	ar0 = 0x00
                                    568 ;	main.c:47: while(j++ < DELAY);
      002062 7E 00            [12]  569 	mov	r6,#0x00
      002064 7F 00            [12]  570 	mov	r7,#0x00
      002066                        571 00101$:
      002066 8F 05            [24]  572 	mov	ar5,r7
      002068 0E               [12]  573 	inc	r6
      002069 BE 00 01         [24]  574 	cjne	r6,#0x00,00111$
      00206C 0F               [12]  575 	inc	r7
      00206D                        576 00111$:
      00206D ED               [12]  577 	mov	a,r5
      00206E 20 E7 F5         [24]  578 	jb	acc.7,00101$
                                    579 ;	main.c:48: }
      002071 22               [24]  580 	ret
                                    581 ;------------------------------------------------------------
                                    582 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    583 ;------------------------------------------------------------
                                    584 ;	main.c:49: _sdcc_external_startup()
                                    585 ;	-----------------------------------------
                                    586 ;	 function _sdcc_external_startup
                                    587 ;	-----------------------------------------
      002072                        588 __sdcc_external_startup:
                                    589 ;	main.c:51: AUXR |= 0x0C;
      002072 43 8E 0C         [24]  590 	orl	_AUXR,#0x0c
                                    591 ;	main.c:52: return 0;
      002075 90 00 00         [24]  592 	mov	dptr,#0x0000
                                    593 ;	main.c:53: }
      002078 22               [24]  594 	ret
                                    595 ;------------------------------------------------------------
                                    596 ;Allocation info for local variables in function 'putchar'
                                    597 ;------------------------------------------------------------
                                    598 ;c                         Allocated with name '_putchar_c_65536_75'
                                    599 ;------------------------------------------------------------
                                    600 ;	main.c:57: int putchar (int c)
                                    601 ;	-----------------------------------------
                                    602 ;	 function putchar
                                    603 ;	-----------------------------------------
      002079                        604 _putchar:
      002079 AF 83            [24]  605 	mov	r7,dph
      00207B E5 82            [12]  606 	mov	a,dpl
      00207D 90 04 00         [24]  607 	mov	dptr,#_putchar_c_65536_75
      002080 F0               [24]  608 	movx	@dptr,a
      002081 EF               [12]  609 	mov	a,r7
      002082 A3               [24]  610 	inc	dptr
      002083 F0               [24]  611 	movx	@dptr,a
                                    612 ;	main.c:59: while (!TI);
      002084                        613 00101$:
      002084 30 99 FD         [24]  614 	jnb	_TI,00101$
                                    615 ;	main.c:60: SBUF = c;           // load serial port with transmit value
      002087 90 04 00         [24]  616 	mov	dptr,#_putchar_c_65536_75
      00208A E0               [24]  617 	movx	a,@dptr
      00208B FE               [12]  618 	mov	r6,a
      00208C A3               [24]  619 	inc	dptr
      00208D E0               [24]  620 	movx	a,@dptr
      00208E FF               [12]  621 	mov	r7,a
      00208F 8E 99            [24]  622 	mov	_SBUF,r6
                                    623 ;	main.c:61: TI = 0;             // clear TI flag
                                    624 ;	assignBit
      002091 C2 99            [12]  625 	clr	_TI
                                    626 ;	main.c:63: return c;
      002093 8E 82            [24]  627 	mov	dpl,r6
      002095 8F 83            [24]  628 	mov	dph,r7
                                    629 ;	main.c:64: }
      002097 22               [24]  630 	ret
                                    631 ;------------------------------------------------------------
                                    632 ;Allocation info for local variables in function 'getchar'
                                    633 ;------------------------------------------------------------
                                    634 ;	main.c:67: int getchar (void)
                                    635 ;	-----------------------------------------
                                    636 ;	 function getchar
                                    637 ;	-----------------------------------------
      002098                        638 _getchar:
                                    639 ;	main.c:69: while (!RI);
      002098                        640 00101$:
                                    641 ;	main.c:70: RI = 0;                         // clear RI flag
                                    642 ;	assignBit
      002098 10 98 02         [24]  643 	jbc	_RI,00114$
      00209B 80 FB            [24]  644 	sjmp	00101$
      00209D                        645 00114$:
                                    646 ;	main.c:71: return SBUF;                    // return character from SBUF
      00209D AE 99            [24]  647 	mov	r6,_SBUF
      00209F 7F 00            [12]  648 	mov	r7,#0x00
      0020A1 8E 82            [24]  649 	mov	dpl,r6
      0020A3 8F 83            [24]  650 	mov	dph,r7
                                    651 ;	main.c:72: }
      0020A5 22               [24]  652 	ret
                                    653 ;------------------------------------------------------------
                                    654 ;Allocation info for local variables in function 'getinput'
                                    655 ;------------------------------------------------------------
                                    656 ;number                    Allocated with name '_getinput_number_65536_79'
                                    657 ;e                         Allocated with name '_getinput_e_65536_79'
                                    658 ;f                         Allocated with name '_getinput_f_65536_79'
                                    659 ;a                         Allocated with name '_getinput_a_65536_79'
                                    660 ;b                         Allocated with name '_getinput_b_65537_80'
                                    661 ;------------------------------------------------------------
                                    662 ;	main.c:77: uint8_t getinput()
                                    663 ;	-----------------------------------------
                                    664 ;	 function getinput
                                    665 ;	-----------------------------------------
      0020A6                        666 _getinput:
                                    667 ;	main.c:81: int a = getchar();
      0020A6 12 20 98         [24]  668 	lcall	_getchar
      0020A9 AE 82            [24]  669 	mov	r6,dpl
      0020AB AF 83            [24]  670 	mov	r7,dph
                                    671 ;	main.c:82: if(a>='A'&& a<='F')
      0020AD C3               [12]  672 	clr	c
      0020AE EE               [12]  673 	mov	a,r6
      0020AF 94 41            [12]  674 	subb	a,#0x41
      0020B1 EF               [12]  675 	mov	a,r7
      0020B2 64 80            [12]  676 	xrl	a,#0x80
      0020B4 94 80            [12]  677 	subb	a,#0x80
      0020B6 40 19            [24]  678 	jc	00102$
      0020B8 74 46            [12]  679 	mov	a,#0x46
      0020BA 9E               [12]  680 	subb	a,r6
      0020BB 74 80            [12]  681 	mov	a,#(0x00 ^ 0x80)
      0020BD 8F F0            [24]  682 	mov	b,r7
      0020BF 63 F0 80         [24]  683 	xrl	b,#0x80
      0020C2 95 F0            [12]  684 	subb	a,b
      0020C4 40 0B            [24]  685 	jc	00102$
                                    686 ;	main.c:83: e=a-'7';
      0020C6 8E 05            [24]  687 	mov	ar5,r6
      0020C8 ED               [12]  688 	mov	a,r5
      0020C9 24 C9            [12]  689 	add	a,#0xc9
      0020CB 90 04 02         [24]  690 	mov	dptr,#_getinput_e_65536_79
      0020CE F0               [24]  691 	movx	@dptr,a
      0020CF 80 09            [24]  692 	sjmp	00103$
      0020D1                        693 00102$:
                                    694 ;	main.c:85: e = a - '0';
      0020D1 8E 05            [24]  695 	mov	ar5,r6
      0020D3 ED               [12]  696 	mov	a,r5
      0020D4 24 D0            [12]  697 	add	a,#0xd0
      0020D6 90 04 02         [24]  698 	mov	dptr,#_getinput_e_65536_79
      0020D9 F0               [24]  699 	movx	@dptr,a
      0020DA                        700 00103$:
                                    701 ;	main.c:86: putchar(a);
      0020DA 8E 82            [24]  702 	mov	dpl,r6
      0020DC 8F 83            [24]  703 	mov	dph,r7
      0020DE 12 20 79         [24]  704 	lcall	_putchar
                                    705 ;	main.c:87: int b = getchar();
      0020E1 12 20 98         [24]  706 	lcall	_getchar
      0020E4 AE 82            [24]  707 	mov	r6,dpl
      0020E6 AF 83            [24]  708 	mov	r7,dph
                                    709 ;	main.c:88: if(b>='A'&& b<='F')
      0020E8 C3               [12]  710 	clr	c
      0020E9 EE               [12]  711 	mov	a,r6
      0020EA 94 41            [12]  712 	subb	a,#0x41
      0020EC EF               [12]  713 	mov	a,r7
      0020ED 64 80            [12]  714 	xrl	a,#0x80
      0020EF 94 80            [12]  715 	subb	a,#0x80
      0020F1 40 19            [24]  716 	jc	00106$
      0020F3 74 46            [12]  717 	mov	a,#0x46
      0020F5 9E               [12]  718 	subb	a,r6
      0020F6 74 80            [12]  719 	mov	a,#(0x00 ^ 0x80)
      0020F8 8F F0            [24]  720 	mov	b,r7
      0020FA 63 F0 80         [24]  721 	xrl	b,#0x80
      0020FD 95 F0            [12]  722 	subb	a,b
      0020FF 40 0B            [24]  723 	jc	00106$
                                    724 ;	main.c:89: f=b-'7';
      002101 8E 05            [24]  725 	mov	ar5,r6
      002103 ED               [12]  726 	mov	a,r5
      002104 24 C9            [12]  727 	add	a,#0xc9
      002106 90 04 03         [24]  728 	mov	dptr,#_getinput_f_65536_79
      002109 F0               [24]  729 	movx	@dptr,a
      00210A 80 09            [24]  730 	sjmp	00107$
      00210C                        731 00106$:
                                    732 ;	main.c:91: f = b - '0';
      00210C 8E 05            [24]  733 	mov	ar5,r6
      00210E ED               [12]  734 	mov	a,r5
      00210F 24 D0            [12]  735 	add	a,#0xd0
      002111 90 04 03         [24]  736 	mov	dptr,#_getinput_f_65536_79
      002114 F0               [24]  737 	movx	@dptr,a
      002115                        738 00107$:
                                    739 ;	main.c:92: putchar(b);
      002115 8E 82            [24]  740 	mov	dpl,r6
      002117 8F 83            [24]  741 	mov	dph,r7
      002119 12 20 79         [24]  742 	lcall	_putchar
                                    743 ;	main.c:102: number = (e*16) + f;
      00211C 90 04 02         [24]  744 	mov	dptr,#_getinput_e_65536_79
      00211F E0               [24]  745 	movx	a,@dptr
      002120 FF               [12]  746 	mov	r7,a
      002121 E4               [12]  747 	clr	a
      002122 CF               [12]  748 	xch	a,r7
      002123 C4               [12]  749 	swap	a
      002124 CF               [12]  750 	xch	a,r7
      002125 6F               [12]  751 	xrl	a,r7
      002126 CF               [12]  752 	xch	a,r7
      002127 54 F0            [12]  753 	anl	a,#0xf0
      002129 CF               [12]  754 	xch	a,r7
      00212A 6F               [12]  755 	xrl	a,r7
      00212B FE               [12]  756 	mov	r6,a
      00212C 90 04 03         [24]  757 	mov	dptr,#_getinput_f_65536_79
      00212F E0               [24]  758 	movx	a,@dptr
      002130 7C 00            [12]  759 	mov	r4,#0x00
      002132 2F               [12]  760 	add	a,r7
      002133 FF               [12]  761 	mov	r7,a
      002134 EC               [12]  762 	mov	a,r4
      002135 3E               [12]  763 	addc	a,r6
      002136 FE               [12]  764 	mov	r6,a
                                    765 ;	main.c:103: if(number <= 0xFF)
      002137 C3               [12]  766 	clr	c
      002138 74 FF            [12]  767 	mov	a,#0xff
      00213A 9F               [12]  768 	subb	a,r7
      00213B 74 80            [12]  769 	mov	a,#(0x00 ^ 0x80)
      00213D 8E F0            [24]  770 	mov	b,r6
      00213F 63 F0 80         [24]  771 	xrl	b,#0x80
      002142 95 F0            [12]  772 	subb	a,b
      002144 40 03            [24]  773 	jc	00110$
                                    774 ;	main.c:104: return number;
      002146 8F 82            [24]  775 	mov	dpl,r7
      002148 22               [24]  776 	ret
      002149                        777 00110$:
                                    778 ;	main.c:106: getinput();
                                    779 ;	main.c:107: }
      002149 02 20 A6         [24]  780 	ljmp	_getinput
                                    781 ;------------------------------------------------------------
                                    782 ;Allocation info for local variables in function 'I2CStart'
                                    783 ;------------------------------------------------------------
                                    784 ;	main.c:112: void I2CStart(void){
                                    785 ;	-----------------------------------------
                                    786 ;	 function I2CStart
                                    787 ;	-----------------------------------------
      00214C                        788 _I2CStart:
                                    789 ;	main.c:113: SDA = 1;
                                    790 ;	assignBit
      00214C D2 97            [12]  791 	setb	_P1_7
                                    792 ;	main.c:114: SCK = 1;
                                    793 ;	assignBit
      00214E D2 96            [12]  794 	setb	_P1_6
                                    795 ;	main.c:115: delay();
      002150 12 20 62         [24]  796 	lcall	_delay
                                    797 ;	main.c:116: SDA = 0;
                                    798 ;	assignBit
      002153 C2 97            [12]  799 	clr	_P1_7
                                    800 ;	main.c:117: delay();
      002155 12 20 62         [24]  801 	lcall	_delay
                                    802 ;	main.c:118: SCK = 0;
                                    803 ;	assignBit
      002158 C2 96            [12]  804 	clr	_P1_6
                                    805 ;	main.c:119: delay();
                                    806 ;	main.c:120: }
      00215A 02 20 62         [24]  807 	ljmp	_delay
                                    808 ;------------------------------------------------------------
                                    809 ;Allocation info for local variables in function 'stop'
                                    810 ;------------------------------------------------------------
                                    811 ;	main.c:132: void stop (void)
                                    812 ;	-----------------------------------------
                                    813 ;	 function stop
                                    814 ;	-----------------------------------------
      00215D                        815 _stop:
                                    816 ;	main.c:134: SDA = 0; // stop condition, data = 0
                                    817 ;	assignBit
      00215D C2 97            [12]  818 	clr	_P1_7
                                    819 ;	main.c:135: delay();
      00215F 12 20 62         [24]  820 	lcall	_delay
                                    821 ;	main.c:136: SCK = 1; // clock = 1
                                    822 ;	assignBit
      002162 D2 96            [12]  823 	setb	_P1_6
                                    824 ;	main.c:137: delay();
      002164 12 20 62         [24]  825 	lcall	_delay
                                    826 ;	main.c:138: SDA = 1; // data = 1
                                    827 ;	assignBit
      002167 D2 97            [12]  828 	setb	_P1_7
                                    829 ;	main.c:139: }
      002169 22               [24]  830 	ret
                                    831 ;------------------------------------------------------------
                                    832 ;Allocation info for local variables in function 'in'
                                    833 ;------------------------------------------------------------
                                    834 ;i                         Allocated with name '_in_i_65536_86'
                                    835 ;aux                       Allocated with name '_in_aux_65536_86'
                                    836 ;------------------------------------------------------------
                                    837 ;	main.c:152: char in (void)
                                    838 ;	-----------------------------------------
                                    839 ;	 function in
                                    840 ;	-----------------------------------------
      00216A                        841 _in:
                                    842 ;	main.c:155: char aux = 0; // auxiliary storage
      00216A 90 04 04         [24]  843 	mov	dptr,#_in_aux_65536_86
      00216D E4               [12]  844 	clr	a
      00216E F0               [24]  845 	movx	@dptr,a
                                    846 ;	main.c:156: SDA = 1; // insure port pin = 1 for input
                                    847 ;	assignBit
      00216F D2 97            [12]  848 	setb	_P1_7
                                    849 ;	main.c:157: for (i = 0; i < 8; i++) // bit shifting cycle
      002171 7F 00            [12]  850 	mov	r7,#0x00
      002173                        851 00105$:
                                    852 ;	main.c:159: SCK = 0; // clock = 0
                                    853 ;	assignBit
      002173 C2 96            [12]  854 	clr	_P1_6
                                    855 ;	main.c:160: delay();
      002175 C0 07            [24]  856 	push	ar7
      002177 12 20 62         [24]  857 	lcall	_delay
      00217A D0 07            [24]  858 	pop	ar7
                                    859 ;	main.c:161: SCK = 1; // clock = 1
                                    860 ;	assignBit
      00217C D2 96            [12]  861 	setb	_P1_6
                                    862 ;	main.c:162: aux = aux << 1; // load bit position
      00217E 90 04 04         [24]  863 	mov	dptr,#_in_aux_65536_86
      002181 E0               [24]  864 	movx	a,@dptr
      002182 25 E0            [12]  865 	add	a,acc
      002184 F0               [24]  866 	movx	@dptr,a
                                    867 ;	main.c:163: if (SDA) // check SDA data from port pin
      002185 30 97 0A         [24]  868 	jnb	_P1_7,00102$
                                    869 ;	main.c:164: aux = aux | 0x01; // if port pin = 1, set LSB (bit position)
      002188 90 04 04         [24]  870 	mov	dptr,#_in_aux_65536_86
      00218B E0               [24]  871 	movx	a,@dptr
      00218C 43 E0 01         [24]  872 	orl	acc,#0x01
      00218F F0               [24]  873 	movx	@dptr,a
      002190 80 08            [24]  874 	sjmp	00106$
      002192                        875 00102$:
                                    876 ;	main.c:166: aux = aux & 0xFE; // else port pin = ,clear LSB (bit position)
      002192 90 04 04         [24]  877 	mov	dptr,#_in_aux_65536_86
      002195 E0               [24]  878 	movx	a,@dptr
      002196 53 E0 FE         [24]  879 	anl	acc,#0xfe
      002199 F0               [24]  880 	movx	@dptr,a
      00219A                        881 00106$:
                                    882 ;	main.c:157: for (i = 0; i < 8; i++) // bit shifting cycle
      00219A 0F               [12]  883 	inc	r7
      00219B BF 08 00         [24]  884 	cjne	r7,#0x08,00123$
      00219E                        885 00123$:
      00219E 40 D3            [24]  886 	jc	00105$
                                    887 ;	main.c:168: SCK = 0; // clock = 0
                                    888 ;	assignBit
      0021A0 C2 96            [12]  889 	clr	_P1_6
                                    890 ;	main.c:169: return (aux); // return data received
      0021A2 90 04 04         [24]  891 	mov	dptr,#_in_aux_65536_86
      0021A5 E0               [24]  892 	movx	a,@dptr
                                    893 ;	main.c:170: }
      0021A6 F5 82            [12]  894 	mov	dpl,a
      0021A8 22               [24]  895 	ret
                                    896 ;------------------------------------------------------------
                                    897 ;Allocation info for local variables in function 'outs'
                                    898 ;------------------------------------------------------------
                                    899 ;datum                     Allocated with name '_outs_datum_65536_89'
                                    900 ;i                         Allocated with name '_outs_i_65536_90'
                                    901 ;aux                       Allocated with name '_outs_aux_65536_90'
                                    902 ;------------------------------------------------------------
                                    903 ;	main.c:184: void outs (char datum)
                                    904 ;	-----------------------------------------
                                    905 ;	 function outs
                                    906 ;	-----------------------------------------
      0021A9                        907 _outs:
      0021A9 E5 82            [12]  908 	mov	a,dpl
      0021AB 90 04 05         [24]  909 	mov	dptr,#_outs_datum_65536_89
      0021AE F0               [24]  910 	movx	@dptr,a
                                    911 ;	main.c:188: SDA = 1; // set port pin SDA to insure data is HI
                                    912 ;	assignBit
      0021AF D2 97            [12]  913 	setb	_P1_7
                                    914 ;	main.c:189: SCK = 1; // set port pin SCK to insure clock is HI
                                    915 ;	assignBit
      0021B1 D2 96            [12]  916 	setb	_P1_6
                                    917 ;	main.c:190: delay();
      0021B3 12 20 62         [24]  918 	lcall	_delay
                                    919 ;	main.c:191: SDA = 0; // start condition, data = 0
                                    920 ;	assignBit
      0021B6 C2 97            [12]  921 	clr	_P1_7
                                    922 ;	main.c:192: delay();
      0021B8 12 20 62         [24]  923 	lcall	_delay
                                    924 ;	main.c:193: SCK = 0; // clock = 0
                                    925 ;	assignBit
      0021BB C2 96            [12]  926 	clr	_P1_6
                                    927 ;	main.c:194: for (i = 0; i < 8; i++) // bit shifting cycle
      0021BD 7F 00            [12]  928 	mov	r7,#0x00
      0021BF                        929 00105$:
                                    930 ;	main.c:196: aux = datum & 0x80; // check MSB bit
      0021BF 90 04 05         [24]  931 	mov	dptr,#_outs_datum_65536_89
      0021C2 E0               [24]  932 	movx	a,@dptr
      0021C3 20 E7 04         [24]  933 	jb	acc.7,00102$
                                    934 ;	main.c:197: if (aux == 0) // MSB = 0
                                    935 ;	main.c:198: SDA = 0; // then SDA = 0
                                    936 ;	assignBit
      0021C6 C2 97            [12]  937 	clr	_P1_7
      0021C8 80 02            [24]  938 	sjmp	00103$
      0021CA                        939 00102$:
                                    940 ;	main.c:200: SDA = 1; // else MSB =1, then SDA = 1
                                    941 ;	assignBit
      0021CA D2 97            [12]  942 	setb	_P1_7
      0021CC                        943 00103$:
                                    944 ;	main.c:201: SCK = 1; // clock = 1
                                    945 ;	assignBit
      0021CC D2 96            [12]  946 	setb	_P1_6
                                    947 ;	main.c:202: delay();
      0021CE C0 07            [24]  948 	push	ar7
      0021D0 12 20 62         [24]  949 	lcall	_delay
      0021D3 D0 07            [24]  950 	pop	ar7
                                    951 ;	main.c:203: SCK = 0; // clock = 0
                                    952 ;	assignBit
      0021D5 C2 96            [12]  953 	clr	_P1_6
                                    954 ;	main.c:204: datum = datum << 1; // rotate for next bit
      0021D7 90 04 05         [24]  955 	mov	dptr,#_outs_datum_65536_89
      0021DA E0               [24]  956 	movx	a,@dptr
      0021DB 25 E0            [12]  957 	add	a,acc
      0021DD F0               [24]  958 	movx	@dptr,a
                                    959 ;	main.c:194: for (i = 0; i < 8; i++) // bit shifting cycle
      0021DE 0F               [12]  960 	inc	r7
      0021DF BF 08 00         [24]  961 	cjne	r7,#0x08,00123$
      0021E2                        962 00123$:
      0021E2 40 DB            [24]  963 	jc	00105$
                                    964 ;	main.c:206: SDA = 1; // set port pin for ack
                                    965 ;	assignBit
      0021E4 D2 97            [12]  966 	setb	_P1_7
                                    967 ;	main.c:207: delay();
      0021E6 12 20 62         [24]  968 	lcall	_delay
                                    969 ;	main.c:208: SCK = 1; // clock ack
                                    970 ;	assignBit
      0021E9 D2 96            [12]  971 	setb	_P1_6
                                    972 ;	main.c:209: delay();
      0021EB 12 20 62         [24]  973 	lcall	_delay
                                    974 ;	main.c:210: SCK = 0; // clock = 0
                                    975 ;	assignBit
      0021EE C2 96            [12]  976 	clr	_P1_6
                                    977 ;	main.c:211: }
      0021F0 22               [24]  978 	ret
                                    979 ;------------------------------------------------------------
                                    980 ;Allocation info for local variables in function 'out'
                                    981 ;------------------------------------------------------------
                                    982 ;datum                     Allocated with name '_out_datum_65536_93'
                                    983 ;i                         Allocated with name '_out_i_65536_94'
                                    984 ;aux                       Allocated with name '_out_aux_65536_94'
                                    985 ;------------------------------------------------------------
                                    986 ;	main.c:225: void out (char datum)
                                    987 ;	-----------------------------------------
                                    988 ;	 function out
                                    989 ;	-----------------------------------------
      0021F1                        990 _out:
      0021F1 E5 82            [12]  991 	mov	a,dpl
      0021F3 90 04 06         [24]  992 	mov	dptr,#_out_datum_65536_93
      0021F6 F0               [24]  993 	movx	@dptr,a
                                    994 ;	main.c:229: for (i = 0; i < 8; i++) // bit shifting cycle
      0021F7 7F 00            [12]  995 	mov	r7,#0x00
      0021F9                        996 00105$:
                                    997 ;	main.c:231: aux = datum & 0x80; // check MSB bit
      0021F9 90 04 06         [24]  998 	mov	dptr,#_out_datum_65536_93
      0021FC E0               [24]  999 	movx	a,@dptr
      0021FD 20 E7 04         [24] 1000 	jb	acc.7,00102$
                                   1001 ;	main.c:232: if (aux == 0) // MSB = 0
                                   1002 ;	main.c:233: SDA = 0; // then SDA = 0
                                   1003 ;	assignBit
      002200 C2 97            [12] 1004 	clr	_P1_7
      002202 80 02            [24] 1005 	sjmp	00103$
      002204                       1006 00102$:
                                   1007 ;	main.c:235: SDA = 1; // else MSB = 1, the SDA = 1
                                   1008 ;	assignBit
      002204 D2 97            [12] 1009 	setb	_P1_7
      002206                       1010 00103$:
                                   1011 ;	main.c:236: SCK = 1; // clock = 1
                                   1012 ;	assignBit
      002206 D2 96            [12] 1013 	setb	_P1_6
                                   1014 ;	main.c:237: delay();
      002208 C0 07            [24] 1015 	push	ar7
      00220A 12 20 62         [24] 1016 	lcall	_delay
      00220D D0 07            [24] 1017 	pop	ar7
                                   1018 ;	main.c:238: SCK = 0; // clock = 0
                                   1019 ;	assignBit
      00220F C2 96            [12] 1020 	clr	_P1_6
                                   1021 ;	main.c:239: datum = datum << 1; // rotate for next bit
      002211 90 04 06         [24] 1022 	mov	dptr,#_out_datum_65536_93
      002214 E0               [24] 1023 	movx	a,@dptr
      002215 25 E0            [12] 1024 	add	a,acc
      002217 F0               [24] 1025 	movx	@dptr,a
                                   1026 ;	main.c:229: for (i = 0; i < 8; i++) // bit shifting cycle
      002218 0F               [12] 1027 	inc	r7
      002219 BF 08 00         [24] 1028 	cjne	r7,#0x08,00123$
      00221C                       1029 00123$:
      00221C 40 DB            [24] 1030 	jc	00105$
                                   1031 ;	main.c:241: SDA = 1; // set port pin for ack
                                   1032 ;	assignBit
      00221E D2 97            [12] 1033 	setb	_P1_7
                                   1034 ;	main.c:242: delay();
      002220 12 20 62         [24] 1035 	lcall	_delay
                                   1036 ;	main.c:243: SCK = 1; // clock ack
                                   1037 ;	assignBit
      002223 D2 96            [12] 1038 	setb	_P1_6
                                   1039 ;	main.c:244: delay();
      002225 12 20 62         [24] 1040 	lcall	_delay
                                   1041 ;	main.c:245: SCK = 0; // clock = 0
                                   1042 ;	assignBit
      002228 C2 96            [12] 1043 	clr	_P1_6
                                   1044 ;	main.c:246: }
      00222A 22               [24] 1045 	ret
                                   1046 ;------------------------------------------------------------
                                   1047 ;Allocation info for local variables in function 'weeprom'
                                   1048 ;------------------------------------------------------------
                                   1049 ;address                   Allocated with name '_weeprom_PARM_2'
                                   1050 ;datum                     Allocated with name '_weeprom_PARM_3'
                                   1051 ;page                      Allocated with name '_weeprom_page_65536_97'
                                   1052 ;WRCMD                     Allocated with name '_weeprom_WRCMD_65536_98'
                                   1053 ;------------------------------------------------------------
                                   1054 ;	main.c:261: void weeprom (char page, char address, char datum)
                                   1055 ;	-----------------------------------------
                                   1056 ;	 function weeprom
                                   1057 ;	-----------------------------------------
      00222B                       1058 _weeprom:
      00222B E5 82            [12] 1059 	mov	a,dpl
      00222D 90 04 09         [24] 1060 	mov	dptr,#_weeprom_page_65536_97
      002230 F0               [24] 1061 	movx	@dptr,a
                                   1062 ;	main.c:264: page = page << 1; // move A0, A1 & A2 to their positions
      002231 E0               [24] 1063 	movx	a,@dptr
      002232 25 E0            [12] 1064 	add	a,acc
      002234 F0               [24] 1065 	movx	@dptr,a
                                   1066 ;	main.c:265: page = page & 0xFE; // clear r/w bit
      002235 E0               [24] 1067 	movx	a,@dptr
      002236 53 E0 FE         [24] 1068 	anl	acc,#0xfe
      002239 F0               [24] 1069 	movx	@dptr,a
                                   1070 ;	main.c:266: WRCMD = page | 0xA0; // build the write command
      00223A 90 04 09         [24] 1071 	mov	dptr,#_weeprom_page_65536_97
      00223D E0               [24] 1072 	movx	a,@dptr
      00223E 44 A0            [12] 1073 	orl	a,#0xa0
                                   1074 ;	main.c:267: outs (WRCMD); // send the write command with start condition
      002240 F5 82            [12] 1075 	mov	dpl,a
      002242 12 21 A9         [24] 1076 	lcall	_outs
                                   1077 ;	main.c:268: out (address); // send address
      002245 90 04 07         [24] 1078 	mov	dptr,#_weeprom_PARM_2
      002248 E0               [24] 1079 	movx	a,@dptr
      002249 F5 82            [12] 1080 	mov	dpl,a
      00224B 12 21 F1         [24] 1081 	lcall	_out
                                   1082 ;	main.c:269: out (datum); // send data
      00224E 90 04 08         [24] 1083 	mov	dptr,#_weeprom_PARM_3
      002251 E0               [24] 1084 	movx	a,@dptr
      002252 F5 82            [12] 1085 	mov	dpl,a
      002254 12 21 F1         [24] 1086 	lcall	_out
                                   1087 ;	main.c:270: stop (); // send stop condition
                                   1088 ;	main.c:271: }
      002257 02 21 5D         [24] 1089 	ljmp	_stop
                                   1090 ;------------------------------------------------------------
                                   1091 ;Allocation info for local variables in function 'read'
                                   1092 ;------------------------------------------------------------
                                   1093 ;readcmd                   Allocated with name '_read_readcmd_65536_99'
                                   1094 ;RDCMD                     Allocated with name '_read_RDCMD_65536_100'
                                   1095 ;aux                       Allocated with name '_read_aux_65536_100'
                                   1096 ;------------------------------------------------------------
                                   1097 ;	main.c:285: char read (char readcmd)
                                   1098 ;	-----------------------------------------
                                   1099 ;	 function read
                                   1100 ;	-----------------------------------------
      00225A                       1101 _read:
      00225A E5 82            [12] 1102 	mov	a,dpl
      00225C 90 04 0A         [24] 1103 	mov	dptr,#_read_readcmd_65536_99
      00225F F0               [24] 1104 	movx	@dptr,a
                                   1105 ;	main.c:289: RDCMD = readcmd | 0x01; // set r/w bit
      002260 E0               [24] 1106 	movx	a,@dptr
      002261 44 01            [12] 1107 	orl	a,#0x01
                                   1108 ;	main.c:290: outs (RDCMD); // send read command with start condition
      002263 F5 82            [12] 1109 	mov	dpl,a
      002265 12 21 A9         [24] 1110 	lcall	_outs
                                   1111 ;	main.c:291: aux = in(); // read current position
      002268 12 21 6A         [24] 1112 	lcall	_in
      00226B AF 82            [24] 1113 	mov	r7,dpl
                                   1114 ;	main.c:292: stop (); // send stop condition
      00226D C0 07            [24] 1115 	push	ar7
      00226F 12 21 5D         [24] 1116 	lcall	_stop
      002272 D0 07            [24] 1117 	pop	ar7
                                   1118 ;	main.c:293: return (aux); // return current position data
      002274 8F 82            [24] 1119 	mov	dpl,r7
                                   1120 ;	main.c:294: }
      002276 22               [24] 1121 	ret
                                   1122 ;------------------------------------------------------------
                                   1123 ;Allocation info for local variables in function 'reeprom'
                                   1124 ;------------------------------------------------------------
                                   1125 ;address                   Allocated with name '_reeprom_PARM_2'
                                   1126 ;page                      Allocated with name '_reeprom_page_65536_101'
                                   1127 ;aux                       Allocated with name '_reeprom_aux_65536_102'
                                   1128 ;WRCMD                     Allocated with name '_reeprom_WRCMD_65536_102'
                                   1129 ;------------------------------------------------------------
                                   1130 ;	main.c:309: char reeprom (char page, char address)
                                   1131 ;	-----------------------------------------
                                   1132 ;	 function reeprom
                                   1133 ;	-----------------------------------------
      002277                       1134 _reeprom:
      002277 E5 82            [12] 1135 	mov	a,dpl
      002279 90 04 0C         [24] 1136 	mov	dptr,#_reeprom_page_65536_101
      00227C F0               [24] 1137 	movx	@dptr,a
                                   1138 ;	main.c:313: aux = page; // preparing the write command
      00227D E0               [24] 1139 	movx	a,@dptr
                                   1140 ;	main.c:314: aux = aux << 1; // move A0, A1 & A2 to their positions
      00227E 25 E0            [12] 1141 	add	a,acc
      002280 FF               [12] 1142 	mov	r7,a
                                   1143 ;	main.c:315: aux = aux & 0xFE; // clear r/w bit
      002281 74 FE            [12] 1144 	mov	a,#0xfe
      002283 5F               [12] 1145 	anl	a,r7
                                   1146 ;	main.c:316: WRCMD = aux | 0xA0; // build the write command
      002284 44 A0            [12] 1147 	orl	a,#0xa0
                                   1148 ;	main.c:317: outs (WRCMD); // send the write command with start condition
      002286 FF               [12] 1149 	mov	r7,a
      002287 F5 82            [12] 1150 	mov	dpl,a
      002289 C0 07            [24] 1151 	push	ar7
      00228B 12 21 A9         [24] 1152 	lcall	_outs
                                   1153 ;	main.c:318: out (address); // send address
      00228E 90 04 0B         [24] 1154 	mov	dptr,#_reeprom_PARM_2
      002291 E0               [24] 1155 	movx	a,@dptr
      002292 F5 82            [12] 1156 	mov	dpl,a
      002294 12 21 F1         [24] 1157 	lcall	_out
      002297 D0 07            [24] 1158 	pop	ar7
                                   1159 ;	main.c:319: aux = read (WRCMD); // send read command and receive data
      002299 8F 82            [24] 1160 	mov	dpl,r7
                                   1161 ;	main.c:320: return (aux); // return solicited data
                                   1162 ;	main.c:321: }
      00229B 02 22 5A         [24] 1163 	ljmp	_read
                                   1164 ;------------------------------------------------------------
                                   1165 ;Allocation info for local variables in function 'eereset'
                                   1166 ;------------------------------------------------------------
                                   1167 ;datum                     Allocated with name '_eereset_datum_65536_104'
                                   1168 ;i                         Allocated with name '_eereset_i_65536_104'
                                   1169 ;aux                       Allocated with name '_eereset_aux_65536_104'
                                   1170 ;------------------------------------------------------------
                                   1171 ;	main.c:326: void eereset(void){
                                   1172 ;	-----------------------------------------
                                   1173 ;	 function eereset
                                   1174 ;	-----------------------------------------
      00229E                       1175 _eereset:
                                   1176 ;	main.c:327: char datum = 0x1FF;
      00229E 90 04 0D         [24] 1177 	mov	dptr,#_eereset_datum_65536_104
      0022A1 74 FF            [12] 1178 	mov	a,#0xff
      0022A3 F0               [24] 1179 	movx	@dptr,a
                                   1180 ;	main.c:330: SDA = 1; // set port pin SDA to insure data is HI
                                   1181 ;	assignBit
      0022A4 D2 97            [12] 1182 	setb	_P1_7
                                   1183 ;	main.c:331: SCK = 1; // set port pin SCK to insure clock is HI
                                   1184 ;	assignBit
      0022A6 D2 96            [12] 1185 	setb	_P1_6
                                   1186 ;	main.c:332: delay();
      0022A8 12 20 62         [24] 1187 	lcall	_delay
                                   1188 ;	main.c:333: SDA = 0; // start condition, data = 0
                                   1189 ;	assignBit
      0022AB C2 97            [12] 1190 	clr	_P1_7
                                   1191 ;	main.c:334: delay();
      0022AD 12 20 62         [24] 1192 	lcall	_delay
                                   1193 ;	main.c:335: SCK = 0; // clock = 0
                                   1194 ;	assignBit
      0022B0 C2 96            [12] 1195 	clr	_P1_6
                                   1196 ;	main.c:336: for (i = 0; i <= 8; i++) // bit shifting cycle
      0022B2 7F 00            [12] 1197 	mov	r7,#0x00
      0022B4                       1198 00105$:
                                   1199 ;	main.c:338: aux = datum & 0x100; // check MSB bit
      0022B4 90 04 0D         [24] 1200 	mov	dptr,#_eereset_datum_65536_104
      0022B7 E0               [24] 1201 	movx	a,@dptr
      0022B8 FE               [12] 1202 	mov	r6,a
                                   1203 ;	main.c:340: SDA = 0; // then SDA = 0
                                   1204 ;	assignBit
      0022B9 C2 97            [12] 1205 	clr	_P1_7
                                   1206 ;	main.c:343: SCK = 1; // clock = 1
                                   1207 ;	assignBit
      0022BB D2 96            [12] 1208 	setb	_P1_6
                                   1209 ;	main.c:344: delay();
      0022BD C0 07            [24] 1210 	push	ar7
      0022BF C0 06            [24] 1211 	push	ar6
      0022C1 12 20 62         [24] 1212 	lcall	_delay
      0022C4 D0 06            [24] 1213 	pop	ar6
      0022C6 D0 07            [24] 1214 	pop	ar7
                                   1215 ;	main.c:345: SCK = 0; // clock = 0
                                   1216 ;	assignBit
      0022C8 C2 96            [12] 1217 	clr	_P1_6
                                   1218 ;	main.c:346: datum = datum << 1; // rotate for next bit
      0022CA EE               [12] 1219 	mov	a,r6
      0022CB 2E               [12] 1220 	add	a,r6
      0022CC 90 04 0D         [24] 1221 	mov	dptr,#_eereset_datum_65536_104
      0022CF F0               [24] 1222 	movx	@dptr,a
                                   1223 ;	main.c:336: for (i = 0; i <= 8; i++) // bit shifting cycle
      0022D0 0F               [12] 1224 	inc	r7
      0022D1 EF               [12] 1225 	mov	a,r7
      0022D2 24 F7            [12] 1226 	add	a,#0xff - 0x08
      0022D4 50 DE            [24] 1227 	jnc	00105$
                                   1228 ;	main.c:348: SDA = 1; // set port pin for ack
                                   1229 ;	assignBit
      0022D6 D2 97            [12] 1230 	setb	_P1_7
                                   1231 ;	main.c:349: delay();
      0022D8 12 20 62         [24] 1232 	lcall	_delay
                                   1233 ;	main.c:350: SCK = 1; // clock ack
                                   1234 ;	assignBit
      0022DB D2 96            [12] 1235 	setb	_P1_6
                                   1236 ;	main.c:351: delay();
      0022DD 12 20 62         [24] 1237 	lcall	_delay
                                   1238 ;	main.c:352: SCK = 0; // clock = 0
                                   1239 ;	assignBit
      0022E0 C2 96            [12] 1240 	clr	_P1_6
                                   1241 ;	main.c:353: }
      0022E2 22               [24] 1242 	ret
                                   1243 ;------------------------------------------------------------
                                   1244 ;Allocation info for local variables in function 'main'
                                   1245 ;------------------------------------------------------------
                                   1246 ;input                     Allocated with name '_main_input_131073_109'
                                   1247 ;data                      Allocated with name '_main_data_196610_111'
                                   1248 ;address                   Allocated with name '_main_address_196611_112'
                                   1249 ;readcmd                   Allocated with name '_main_readcmd_196612_113'
                                   1250 ;i                         Allocated with name '_main_i_262148_114'
                                   1251 ;------------------------------------------------------------
                                   1252 ;	main.c:354: int main()
                                   1253 ;	-----------------------------------------
                                   1254 ;	 function main
                                   1255 ;	-----------------------------------------
      0022E3                       1256 _main:
                                   1257 ;	main.c:356: while(1){
      0022E3                       1258 00115$:
                                   1259 ;	main.c:357: printf_tiny("\r\n ******************I2C Function User Menu**************");
      0022E3 74 37            [12] 1260 	mov	a,#___str_0
      0022E5 C0 E0            [24] 1261 	push	acc
      0022E7 74 32            [12] 1262 	mov	a,#(___str_0 >> 8)
      0022E9 C0 E0            [24] 1263 	push	acc
      0022EB 12 25 71         [24] 1264 	lcall	_printf_tiny
      0022EE 15 81            [12] 1265 	dec	sp
      0022F0 15 81            [12] 1266 	dec	sp
                                   1267 ;	main.c:358: printf_tiny("\r\n Press W for the Data at address to write");
      0022F2 74 71            [12] 1268 	mov	a,#___str_1
      0022F4 C0 E0            [24] 1269 	push	acc
      0022F6 74 32            [12] 1270 	mov	a,#(___str_1 >> 8)
      0022F8 C0 E0            [24] 1271 	push	acc
      0022FA 12 25 71         [24] 1272 	lcall	_printf_tiny
      0022FD 15 81            [12] 1273 	dec	sp
      0022FF 15 81            [12] 1274 	dec	sp
                                   1275 ;	main.c:359: printf_tiny("\r\n Press R to read the data at memory location ");
      002301 74 9D            [12] 1276 	mov	a,#___str_2
      002303 C0 E0            [24] 1277 	push	acc
      002305 74 32            [12] 1278 	mov	a,#(___str_2 >> 8)
      002307 C0 E0            [24] 1279 	push	acc
      002309 12 25 71         [24] 1280 	lcall	_printf_tiny
      00230C 15 81            [12] 1281 	dec	sp
      00230E 15 81            [12] 1282 	dec	sp
                                   1283 ;	main.c:360: printf_tiny("\r\n Press H to print Hex Dump");
      002310 74 CD            [12] 1284 	mov	a,#___str_3
      002312 C0 E0            [24] 1285 	push	acc
      002314 74 32            [12] 1286 	mov	a,#(___str_3 >> 8)
      002316 C0 E0            [24] 1287 	push	acc
      002318 12 25 71         [24] 1288 	lcall	_printf_tiny
      00231B 15 81            [12] 1289 	dec	sp
      00231D 15 81            [12] 1290 	dec	sp
                                   1291 ;	main.c:361: printf_tiny("\r\n Press S for System reset");
      00231F 74 EA            [12] 1292 	mov	a,#___str_4
      002321 C0 E0            [24] 1293 	push	acc
      002323 74 32            [12] 1294 	mov	a,#(___str_4 >> 8)
      002325 C0 E0            [24] 1295 	push	acc
      002327 12 25 71         [24] 1296 	lcall	_printf_tiny
      00232A 15 81            [12] 1297 	dec	sp
      00232C 15 81            [12] 1298 	dec	sp
                                   1299 ;	main.c:362: printf_tiny("\r\n **************Please select the option from above********");
      00232E 74 06            [12] 1300 	mov	a,#___str_5
      002330 C0 E0            [24] 1301 	push	acc
      002332 74 33            [12] 1302 	mov	a,#(___str_5 >> 8)
      002334 C0 E0            [24] 1303 	push	acc
      002336 12 25 71         [24] 1304 	lcall	_printf_tiny
      002339 15 81            [12] 1305 	dec	sp
      00233B 15 81            [12] 1306 	dec	sp
                                   1307 ;	main.c:363: char input = getchar();
      00233D 12 20 98         [24] 1308 	lcall	_getchar
      002340 AE 82            [24] 1309 	mov	r6,dpl
      002342 AF 83            [24] 1310 	mov	r7,dph
                                   1311 ;	main.c:366: switch(input){
      002344 BE 48 03         [24] 1312 	cjne	r6,#0x48,00167$
      002347 02 24 42         [24] 1313 	ljmp	00104$
      00234A                       1314 00167$:
      00234A BE 50 03         [24] 1315 	cjne	r6,#0x50,00168$
      00234D 02 25 5E         [24] 1316 	ljmp	00112$
      002350                       1317 00168$:
      002350 BE 52 03         [24] 1318 	cjne	r6,#0x52,00169$
      002353 02 24 03         [24] 1319 	ljmp	00103$
      002356                       1320 00169$:
      002356 BE 53 03         [24] 1321 	cjne	r6,#0x53,00170$
      002359 02 25 46         [24] 1322 	ljmp	00111$
      00235C                       1323 00170$:
      00235C BE 54 02         [24] 1324 	cjne	r6,#0x54,00171$
      00235F 80 08            [24] 1325 	sjmp	00101$
      002361                       1326 00171$:
      002361 BE 57 02         [24] 1327 	cjne	r6,#0x57,00172$
      002364 80 1C            [24] 1328 	sjmp	00102$
      002366                       1329 00172$:
      002366 02 25 65         [24] 1330 	ljmp	00113$
                                   1331 ;	main.c:367: case 'T': I2CStart();
      002369                       1332 00101$:
      002369 C0 06            [24] 1333 	push	ar6
      00236B 12 21 4C         [24] 1334 	lcall	_I2CStart
                                   1335 ;	main.c:368: printf_tiny("\r\n I2C mode entered\n");
      00236E 74 43            [12] 1336 	mov	a,#___str_6
      002370 C0 E0            [24] 1337 	push	acc
      002372 74 33            [12] 1338 	mov	a,#(___str_6 >> 8)
      002374 C0 E0            [24] 1339 	push	acc
      002376 12 25 71         [24] 1340 	lcall	_printf_tiny
      002379 15 81            [12] 1341 	dec	sp
      00237B 15 81            [12] 1342 	dec	sp
      00237D D0 06            [24] 1343 	pop	ar6
                                   1344 ;	main.c:369: break;
      00237F 02 25 65         [24] 1345 	ljmp	00113$
                                   1346 ;	main.c:371: case 'W': printf_tiny("\r\nEnter the character->\n");
      002382                       1347 00102$:
      002382 C0 06            [24] 1348 	push	ar6
      002384 74 58            [12] 1349 	mov	a,#___str_7
      002386 C0 E0            [24] 1350 	push	acc
      002388 74 33            [12] 1351 	mov	a,#(___str_7 >> 8)
      00238A C0 E0            [24] 1352 	push	acc
      00238C 12 25 71         [24] 1353 	lcall	_printf_tiny
      00238F 15 81            [12] 1354 	dec	sp
      002391 15 81            [12] 1355 	dec	sp
                                   1356 ;	main.c:372: uint8_t data = getinput();
      002393 12 20 A6         [24] 1357 	lcall	_getinput
      002396 AF 82            [24] 1358 	mov	r7,dpl
      002398 D0 06            [24] 1359 	pop	ar6
                                   1360 ;	main.c:373: printf_tiny("\r\n%x",data);
      00239A 8F 04            [24] 1361 	mov	ar4,r7
      00239C 7D 00            [12] 1362 	mov	r5,#0x00
      00239E C0 07            [24] 1363 	push	ar7
      0023A0 C0 06            [24] 1364 	push	ar6
      0023A2 C0 04            [24] 1365 	push	ar4
      0023A4 C0 05            [24] 1366 	push	ar5
      0023A6 74 71            [12] 1367 	mov	a,#___str_8
      0023A8 C0 E0            [24] 1368 	push	acc
      0023AA 74 33            [12] 1369 	mov	a,#(___str_8 >> 8)
      0023AC C0 E0            [24] 1370 	push	acc
      0023AE 12 25 71         [24] 1371 	lcall	_printf_tiny
      0023B1 E5 81            [12] 1372 	mov	a,sp
      0023B3 24 FC            [12] 1373 	add	a,#0xfc
      0023B5 F5 81            [12] 1374 	mov	sp,a
                                   1375 ;	main.c:374: printf_tiny("\r\nEnter the Address in Hex between 00 and ff->\n");
      0023B7 74 76            [12] 1376 	mov	a,#___str_9
      0023B9 C0 E0            [24] 1377 	push	acc
      0023BB 74 33            [12] 1378 	mov	a,#(___str_9 >> 8)
      0023BD C0 E0            [24] 1379 	push	acc
      0023BF 12 25 71         [24] 1380 	lcall	_printf_tiny
      0023C2 15 81            [12] 1381 	dec	sp
      0023C4 15 81            [12] 1382 	dec	sp
                                   1383 ;	main.c:375: uint8_t address = getinput();
      0023C6 12 20 A6         [24] 1384 	lcall	_getinput
      0023C9 AD 82            [24] 1385 	mov	r5,dpl
                                   1386 ;	main.c:376: printf_tiny("\r\n%x",address);
      0023CB 8D 03            [24] 1387 	mov	ar3,r5
      0023CD 7C 00            [12] 1388 	mov	r4,#0x00
      0023CF C0 05            [24] 1389 	push	ar5
      0023D1 C0 03            [24] 1390 	push	ar3
      0023D3 C0 04            [24] 1391 	push	ar4
      0023D5 74 71            [12] 1392 	mov	a,#___str_8
      0023D7 C0 E0            [24] 1393 	push	acc
      0023D9 74 33            [12] 1394 	mov	a,#(___str_8 >> 8)
      0023DB C0 E0            [24] 1395 	push	acc
      0023DD 12 25 71         [24] 1396 	lcall	_printf_tiny
      0023E0 E5 81            [12] 1397 	mov	a,sp
      0023E2 24 FC            [12] 1398 	add	a,#0xfc
      0023E4 F5 81            [12] 1399 	mov	sp,a
      0023E6 D0 05            [24] 1400 	pop	ar5
      0023E8 D0 06            [24] 1401 	pop	ar6
      0023EA D0 07            [24] 1402 	pop	ar7
                                   1403 ;	main.c:377: weeprom(0x00,address,data);
      0023EC 90 04 07         [24] 1404 	mov	dptr,#_weeprom_PARM_2
      0023EF ED               [12] 1405 	mov	a,r5
      0023F0 F0               [24] 1406 	movx	@dptr,a
      0023F1 90 04 08         [24] 1407 	mov	dptr,#_weeprom_PARM_3
      0023F4 EF               [12] 1408 	mov	a,r7
      0023F5 F0               [24] 1409 	movx	@dptr,a
      0023F6 75 82 00         [24] 1410 	mov	dpl,#0x00
      0023F9 C0 06            [24] 1411 	push	ar6
      0023FB 12 22 2B         [24] 1412 	lcall	_weeprom
      0023FE D0 06            [24] 1413 	pop	ar6
                                   1414 ;	main.c:378: break;
      002400 02 25 65         [24] 1415 	ljmp	00113$
                                   1416 ;	main.c:380: case 'R': printf_tiny("\r\nEnter the address between 00 and ff to be Read->\n");
      002403                       1417 00103$:
      002403 C0 06            [24] 1418 	push	ar6
      002405 74 A6            [12] 1419 	mov	a,#___str_10
      002407 C0 E0            [24] 1420 	push	acc
      002409 74 33            [12] 1421 	mov	a,#(___str_10 >> 8)
      00240B C0 E0            [24] 1422 	push	acc
      00240D 12 25 71         [24] 1423 	lcall	_printf_tiny
      002410 15 81            [12] 1424 	dec	sp
      002412 15 81            [12] 1425 	dec	sp
                                   1426 ;	main.c:381: uint8_t readcmd = getinput();
      002414 12 20 A6         [24] 1427 	lcall	_getinput
      002417 AF 82            [24] 1428 	mov	r7,dpl
                                   1429 ;	main.c:382: printf_tiny("\r\n Data on that address is -> %x",reeprom(0x00,readcmd));
      002419 90 04 0B         [24] 1430 	mov	dptr,#_reeprom_PARM_2
      00241C EF               [12] 1431 	mov	a,r7
      00241D F0               [24] 1432 	movx	@dptr,a
      00241E 75 82 00         [24] 1433 	mov	dpl,#0x00
      002421 12 22 77         [24] 1434 	lcall	_reeprom
      002424 AF 82            [24] 1435 	mov	r7,dpl
      002426 7D 00            [12] 1436 	mov	r5,#0x00
      002428 C0 07            [24] 1437 	push	ar7
      00242A C0 05            [24] 1438 	push	ar5
      00242C 74 DA            [12] 1439 	mov	a,#___str_11
      00242E C0 E0            [24] 1440 	push	acc
      002430 74 33            [12] 1441 	mov	a,#(___str_11 >> 8)
      002432 C0 E0            [24] 1442 	push	acc
      002434 12 25 71         [24] 1443 	lcall	_printf_tiny
      002437 E5 81            [12] 1444 	mov	a,sp
      002439 24 FC            [12] 1445 	add	a,#0xfc
      00243B F5 81            [12] 1446 	mov	sp,a
      00243D D0 06            [24] 1447 	pop	ar6
                                   1448 ;	main.c:383: break;
      00243F 02 25 65         [24] 1449 	ljmp	00113$
                                   1450 ;	main.c:385: case 'H': printf_tiny("\r\nHexdump Printing................");
      002442                       1451 00104$:
      002442 C0 06            [24] 1452 	push	ar6
      002444 74 FB            [12] 1453 	mov	a,#___str_12
      002446 C0 E0            [24] 1454 	push	acc
      002448 74 33            [12] 1455 	mov	a,#(___str_12 >> 8)
      00244A C0 E0            [24] 1456 	push	acc
      00244C 12 25 71         [24] 1457 	lcall	_printf_tiny
      00244F 15 81            [12] 1458 	dec	sp
      002451 15 81            [12] 1459 	dec	sp
      002453 D0 06            [24] 1460 	pop	ar6
                                   1461 ;	main.c:386: for(int i = 0;i < 256;i++){
      002455 7D 00            [12] 1462 	mov	r5,#0x00
      002457 7F 00            [12] 1463 	mov	r7,#0x00
      002459                       1464 00118$:
      002459 C3               [12] 1465 	clr	c
      00245A EF               [12] 1466 	mov	a,r7
      00245B 64 80            [12] 1467 	xrl	a,#0x80
      00245D 94 81            [12] 1468 	subb	a,#0x81
      00245F 40 03            [24] 1469 	jc	00173$
      002461 02 25 65         [24] 1470 	ljmp	00113$
      002464                       1471 00173$:
                                   1472 ;	main.c:387: if((i % 16) == 0){
      002464 90 04 0E         [24] 1473 	mov	dptr,#__modsint_PARM_2
      002467 74 10            [12] 1474 	mov	a,#0x10
      002469 F0               [24] 1475 	movx	@dptr,a
      00246A E4               [12] 1476 	clr	a
      00246B A3               [24] 1477 	inc	dptr
      00246C F0               [24] 1478 	movx	@dptr,a
      00246D 8D 82            [24] 1479 	mov	dpl,r5
      00246F 8F 83            [24] 1480 	mov	dph,r7
      002471 C0 07            [24] 1481 	push	ar7
      002473 C0 06            [24] 1482 	push	ar6
      002475 C0 05            [24] 1483 	push	ar5
      002477 12 26 7A         [24] 1484 	lcall	__modsint
      00247A E5 82            [12] 1485 	mov	a,dpl
      00247C 85 83 F0         [24] 1486 	mov	b,dph
      00247F D0 05            [24] 1487 	pop	ar5
      002481 D0 06            [24] 1488 	pop	ar6
      002483 D0 07            [24] 1489 	pop	ar7
      002485 45 F0            [12] 1490 	orl	a,b
      002487 60 03            [24] 1491 	jz	00174$
      002489 02 25 0E         [24] 1492 	ljmp	00109$
      00248C                       1493 00174$:
                                   1494 ;	main.c:388: if(i == 0){
      00248C ED               [12] 1495 	mov	a,r5
      00248D 4F               [12] 1496 	orl	a,r7
      00248E 70 3E            [24] 1497 	jnz	00106$
                                   1498 ;	main.c:389: printf_tiny("\r\n");
      002490 C0 07            [24] 1499 	push	ar7
      002492 C0 06            [24] 1500 	push	ar6
      002494 C0 05            [24] 1501 	push	ar5
      002496 74 1E            [12] 1502 	mov	a,#___str_13
      002498 C0 E0            [24] 1503 	push	acc
      00249A 74 34            [12] 1504 	mov	a,#(___str_13 >> 8)
      00249C C0 E0            [24] 1505 	push	acc
      00249E 12 25 71         [24] 1506 	lcall	_printf_tiny
      0024A1 15 81            [12] 1507 	dec	sp
      0024A3 15 81            [12] 1508 	dec	sp
      0024A5 D0 05            [24] 1509 	pop	ar5
      0024A7 D0 06            [24] 1510 	pop	ar6
      0024A9 D0 07            [24] 1511 	pop	ar7
                                   1512 ;	main.c:390: printf_tiny("%x: ",i);
      0024AB C0 07            [24] 1513 	push	ar7
      0024AD C0 06            [24] 1514 	push	ar6
      0024AF C0 05            [24] 1515 	push	ar5
      0024B1 C0 05            [24] 1516 	push	ar5
      0024B3 C0 07            [24] 1517 	push	ar7
      0024B5 74 21            [12] 1518 	mov	a,#___str_14
      0024B7 C0 E0            [24] 1519 	push	acc
      0024B9 74 34            [12] 1520 	mov	a,#(___str_14 >> 8)
      0024BB C0 E0            [24] 1521 	push	acc
      0024BD 12 25 71         [24] 1522 	lcall	_printf_tiny
      0024C0 E5 81            [12] 1523 	mov	a,sp
      0024C2 24 FC            [12] 1524 	add	a,#0xfc
      0024C4 F5 81            [12] 1525 	mov	sp,a
      0024C6 D0 05            [24] 1526 	pop	ar5
      0024C8 D0 06            [24] 1527 	pop	ar6
      0024CA D0 07            [24] 1528 	pop	ar7
      0024CC 80 40            [24] 1529 	sjmp	00109$
      0024CE                       1530 00106$:
                                   1531 ;	main.c:393: printf_tiny("\r\n");
      0024CE C0 07            [24] 1532 	push	ar7
      0024D0 C0 06            [24] 1533 	push	ar6
      0024D2 C0 05            [24] 1534 	push	ar5
      0024D4 74 1E            [12] 1535 	mov	a,#___str_13
      0024D6 C0 E0            [24] 1536 	push	acc
      0024D8 74 34            [12] 1537 	mov	a,#(___str_13 >> 8)
      0024DA C0 E0            [24] 1538 	push	acc
      0024DC 12 25 71         [24] 1539 	lcall	_printf_tiny
      0024DF 15 81            [12] 1540 	dec	sp
      0024E1 15 81            [12] 1541 	dec	sp
      0024E3 D0 05            [24] 1542 	pop	ar5
      0024E5 D0 06            [24] 1543 	pop	ar6
      0024E7 D0 07            [24] 1544 	pop	ar7
                                   1545 ;	main.c:394: printf("%x:",i);
      0024E9 C0 07            [24] 1546 	push	ar7
      0024EB C0 06            [24] 1547 	push	ar6
      0024ED C0 05            [24] 1548 	push	ar5
      0024EF C0 05            [24] 1549 	push	ar5
      0024F1 C0 07            [24] 1550 	push	ar7
      0024F3 74 26            [12] 1551 	mov	a,#___str_15
      0024F5 C0 E0            [24] 1552 	push	acc
      0024F7 74 34            [12] 1553 	mov	a,#(___str_15 >> 8)
      0024F9 C0 E0            [24] 1554 	push	acc
      0024FB 74 80            [12] 1555 	mov	a,#0x80
      0024FD C0 E0            [24] 1556 	push	acc
      0024FF 12 27 DC         [24] 1557 	lcall	_printf
      002502 E5 81            [12] 1558 	mov	a,sp
      002504 24 FB            [12] 1559 	add	a,#0xfb
      002506 F5 81            [12] 1560 	mov	sp,a
      002508 D0 05            [24] 1561 	pop	ar5
      00250A D0 06            [24] 1562 	pop	ar6
      00250C D0 07            [24] 1563 	pop	ar7
      00250E                       1564 00109$:
                                   1565 ;	main.c:397: printf_tiny("%x ",reeprom(0x00,i));
      00250E 90 04 0B         [24] 1566 	mov	dptr,#_reeprom_PARM_2
      002511 ED               [12] 1567 	mov	a,r5
      002512 F0               [24] 1568 	movx	@dptr,a
      002513 75 82 00         [24] 1569 	mov	dpl,#0x00
      002516 C0 07            [24] 1570 	push	ar7
      002518 C0 06            [24] 1571 	push	ar6
      00251A C0 05            [24] 1572 	push	ar5
      00251C 12 22 77         [24] 1573 	lcall	_reeprom
      00251F AC 82            [24] 1574 	mov	r4,dpl
      002521 7B 00            [12] 1575 	mov	r3,#0x00
      002523 C0 04            [24] 1576 	push	ar4
      002525 C0 03            [24] 1577 	push	ar3
      002527 74 2A            [12] 1578 	mov	a,#___str_16
      002529 C0 E0            [24] 1579 	push	acc
      00252B 74 34            [12] 1580 	mov	a,#(___str_16 >> 8)
      00252D C0 E0            [24] 1581 	push	acc
      00252F 12 25 71         [24] 1582 	lcall	_printf_tiny
      002532 E5 81            [12] 1583 	mov	a,sp
      002534 24 FC            [12] 1584 	add	a,#0xfc
      002536 F5 81            [12] 1585 	mov	sp,a
      002538 D0 05            [24] 1586 	pop	ar5
      00253A D0 06            [24] 1587 	pop	ar6
      00253C D0 07            [24] 1588 	pop	ar7
                                   1589 ;	main.c:386: for(int i = 0;i < 256;i++){
      00253E 0D               [12] 1590 	inc	r5
      00253F BD 00 01         [24] 1591 	cjne	r5,#0x00,00176$
      002542 0F               [12] 1592 	inc	r7
      002543                       1593 00176$:
      002543 02 24 59         [24] 1594 	ljmp	00118$
                                   1595 ;	main.c:401: case 'S':  printf_tiny("\r\nSytem Resetting........");
      002546                       1596 00111$:
      002546 C0 06            [24] 1597 	push	ar6
      002548 74 2E            [12] 1598 	mov	a,#___str_17
      00254A C0 E0            [24] 1599 	push	acc
      00254C 74 34            [12] 1600 	mov	a,#(___str_17 >> 8)
      00254E C0 E0            [24] 1601 	push	acc
      002550 12 25 71         [24] 1602 	lcall	_printf_tiny
      002553 15 81            [12] 1603 	dec	sp
      002555 15 81            [12] 1604 	dec	sp
                                   1605 ;	main.c:402: eereset();
      002557 12 22 9E         [24] 1606 	lcall	_eereset
      00255A D0 06            [24] 1607 	pop	ar6
                                   1608 ;	main.c:403: break;
                                   1609 ;	main.c:405: case 'P':  stop();
      00255C 80 07            [24] 1610 	sjmp	00113$
      00255E                       1611 00112$:
      00255E C0 06            [24] 1612 	push	ar6
      002560 12 21 5D         [24] 1613 	lcall	_stop
      002563 D0 06            [24] 1614 	pop	ar6
                                   1615 ;	main.c:407: }
      002565                       1616 00113$:
                                   1617 ;	main.c:408: putchar(input);
      002565 7F 00            [12] 1618 	mov	r7,#0x00
      002567 8E 82            [24] 1619 	mov	dpl,r6
      002569 8F 83            [24] 1620 	mov	dph,r7
      00256B 12 20 79         [24] 1621 	lcall	_putchar
                                   1622 ;	main.c:410: return 0;
                                   1623 ;	main.c:411: }
      00256E 02 22 E3         [24] 1624 	ljmp	00115$
                                   1625 	.area CSEG    (CODE)
                                   1626 	.area CONST   (CODE)
                                   1627 	.area CONST   (CODE)
      003237                       1628 ___str_0:
      003237 0D                    1629 	.db 0x0d
      003238 0A                    1630 	.db 0x0a
      003239 20 2A 2A 2A 2A 2A 2A  1631 	.ascii " ******************I2C Function User Menu**************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 49 32
             43 20 46 75 6E 63 74
             69 6F 6E 20 55 73 65
             72 20 4D 65 6E 75 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A
      003270 00                    1632 	.db 0x00
                                   1633 	.area CSEG    (CODE)
                                   1634 	.area CONST   (CODE)
      003271                       1635 ___str_1:
      003271 0D                    1636 	.db 0x0d
      003272 0A                    1637 	.db 0x0a
      003273 20 50 72 65 73 73 20  1638 	.ascii " Press W for the Data at address to write"
             57 20 66 6F 72 20 74
             68 65 20 44 61 74 61
             20 61 74 20 61 64 64
             72 65 73 73 20 74 6F
             20 77 72 69 74 65
      00329C 00                    1639 	.db 0x00
                                   1640 	.area CSEG    (CODE)
                                   1641 	.area CONST   (CODE)
      00329D                       1642 ___str_2:
      00329D 0D                    1643 	.db 0x0d
      00329E 0A                    1644 	.db 0x0a
      00329F 20 50 72 65 73 73 20  1645 	.ascii " Press R to read the data at memory location "
             52 20 74 6F 20 72 65
             61 64 20 74 68 65 20
             64 61 74 61 20 61 74
             20 6D 65 6D 6F 72 79
             20 6C 6F 63 61 74 69
             6F 6E 20
      0032CC 00                    1646 	.db 0x00
                                   1647 	.area CSEG    (CODE)
                                   1648 	.area CONST   (CODE)
      0032CD                       1649 ___str_3:
      0032CD 0D                    1650 	.db 0x0d
      0032CE 0A                    1651 	.db 0x0a
      0032CF 20 50 72 65 73 73 20  1652 	.ascii " Press H to print Hex Dump"
             48 20 74 6F 20 70 72
             69 6E 74 20 48 65 78
             20 44 75 6D 70
      0032E9 00                    1653 	.db 0x00
                                   1654 	.area CSEG    (CODE)
                                   1655 	.area CONST   (CODE)
      0032EA                       1656 ___str_4:
      0032EA 0D                    1657 	.db 0x0d
      0032EB 0A                    1658 	.db 0x0a
      0032EC 20 50 72 65 73 73 20  1659 	.ascii " Press S for System reset"
             53 20 66 6F 72 20 53
             79 73 74 65 6D 20 72
             65 73 65 74
      003305 00                    1660 	.db 0x00
                                   1661 	.area CSEG    (CODE)
                                   1662 	.area CONST   (CODE)
      003306                       1663 ___str_5:
      003306 0D                    1664 	.db 0x0d
      003307 0A                    1665 	.db 0x0a
      003308 20 2A 2A 2A 2A 2A 2A  1666 	.ascii " **************Please select the option from above********"
             2A 2A 2A 2A 2A 2A 2A
             2A 50 6C 65 61 73 65
             20 73 65 6C 65 63 74
             20 74 68 65 20 6F 70
             74 69 6F 6E 20 66 72
             6F 6D 20 61 62 6F 76
             65 2A 2A 2A 2A 2A 2A
             2A 2A
      003342 00                    1667 	.db 0x00
                                   1668 	.area CSEG    (CODE)
                                   1669 	.area CONST   (CODE)
      003343                       1670 ___str_6:
      003343 0D                    1671 	.db 0x0d
      003344 0A                    1672 	.db 0x0a
      003345 20 49 32 43 20 6D 6F  1673 	.ascii " I2C mode entered"
             64 65 20 65 6E 74 65
             72 65 64
      003356 0A                    1674 	.db 0x0a
      003357 00                    1675 	.db 0x00
                                   1676 	.area CSEG    (CODE)
                                   1677 	.area CONST   (CODE)
      003358                       1678 ___str_7:
      003358 0D                    1679 	.db 0x0d
      003359 0A                    1680 	.db 0x0a
      00335A 45 6E 74 65 72 20 74  1681 	.ascii "Enter the character->"
             68 65 20 63 68 61 72
             61 63 74 65 72 2D 3E
      00336F 0A                    1682 	.db 0x0a
      003370 00                    1683 	.db 0x00
                                   1684 	.area CSEG    (CODE)
                                   1685 	.area CONST   (CODE)
      003371                       1686 ___str_8:
      003371 0D                    1687 	.db 0x0d
      003372 0A                    1688 	.db 0x0a
      003373 25 78                 1689 	.ascii "%x"
      003375 00                    1690 	.db 0x00
                                   1691 	.area CSEG    (CODE)
                                   1692 	.area CONST   (CODE)
      003376                       1693 ___str_9:
      003376 0D                    1694 	.db 0x0d
      003377 0A                    1695 	.db 0x0a
      003378 45 6E 74 65 72 20 74  1696 	.ascii "Enter the Address in Hex between 00 and ff->"
             68 65 20 41 64 64 72
             65 73 73 20 69 6E 20
             48 65 78 20 62 65 74
             77 65 65 6E 20 30 30
             20 61 6E 64 20 66 66
             2D 3E
      0033A4 0A                    1697 	.db 0x0a
      0033A5 00                    1698 	.db 0x00
                                   1699 	.area CSEG    (CODE)
                                   1700 	.area CONST   (CODE)
      0033A6                       1701 ___str_10:
      0033A6 0D                    1702 	.db 0x0d
      0033A7 0A                    1703 	.db 0x0a
      0033A8 45 6E 74 65 72 20 74  1704 	.ascii "Enter the address between 00 and ff to be Read->"
             68 65 20 61 64 64 72
             65 73 73 20 62 65 74
             77 65 65 6E 20 30 30
             20 61 6E 64 20 66 66
             20 74 6F 20 62 65 20
             52 65 61 64 2D 3E
      0033D8 0A                    1705 	.db 0x0a
      0033D9 00                    1706 	.db 0x00
                                   1707 	.area CSEG    (CODE)
                                   1708 	.area CONST   (CODE)
      0033DA                       1709 ___str_11:
      0033DA 0D                    1710 	.db 0x0d
      0033DB 0A                    1711 	.db 0x0a
      0033DC 20 44 61 74 61 20 6F  1712 	.ascii " Data on that address is -> %x"
             6E 20 74 68 61 74 20
             61 64 64 72 65 73 73
             20 69 73 20 2D 3E 20
             25 78
      0033FA 00                    1713 	.db 0x00
                                   1714 	.area CSEG    (CODE)
                                   1715 	.area CONST   (CODE)
      0033FB                       1716 ___str_12:
      0033FB 0D                    1717 	.db 0x0d
      0033FC 0A                    1718 	.db 0x0a
      0033FD 48 65 78 64 75 6D 70  1719 	.ascii "Hexdump Printing................"
             20 50 72 69 6E 74 69
             6E 67 2E 2E 2E 2E 2E
             2E 2E 2E 2E 2E 2E 2E
             2E 2E 2E 2E
      00341D 00                    1720 	.db 0x00
                                   1721 	.area CSEG    (CODE)
                                   1722 	.area CONST   (CODE)
      00341E                       1723 ___str_13:
      00341E 0D                    1724 	.db 0x0d
      00341F 0A                    1725 	.db 0x0a
      003420 00                    1726 	.db 0x00
                                   1727 	.area CSEG    (CODE)
                                   1728 	.area CONST   (CODE)
      003421                       1729 ___str_14:
      003421 25 78 3A 20           1730 	.ascii "%x: "
      003425 00                    1731 	.db 0x00
                                   1732 	.area CSEG    (CODE)
                                   1733 	.area CONST   (CODE)
      003426                       1734 ___str_15:
      003426 25 78 3A              1735 	.ascii "%x:"
      003429 00                    1736 	.db 0x00
                                   1737 	.area CSEG    (CODE)
                                   1738 	.area CONST   (CODE)
      00342A                       1739 ___str_16:
      00342A 25 78 20              1740 	.ascii "%x "
      00342D 00                    1741 	.db 0x00
                                   1742 	.area CSEG    (CODE)
                                   1743 	.area CONST   (CODE)
      00342E                       1744 ___str_17:
      00342E 0D                    1745 	.db 0x0d
      00342F 0A                    1746 	.db 0x0a
      003430 53 79 74 65 6D 20 52  1747 	.ascii "Sytem Resetting........"
             65 73 65 74 74 69 6E
             67 2E 2E 2E 2E 2E 2E
             2E 2E
      003447 00                    1748 	.db 0x00
                                   1749 	.area CSEG    (CODE)
                                   1750 	.area XINIT   (CODE)
                                   1751 	.area CABS    (ABS,CODE)
