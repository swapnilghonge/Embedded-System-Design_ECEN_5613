;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _eereset
	.globl _I2CStart
	.globl _getinput
	.globl __sdcc_external_startup
	.globl _delay
	.globl _printf_tiny
	.globl _printf
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
	.globl _reeprom_PARM_2
	.globl _weeprom_PARM_3
	.globl _weeprom_PARM_2
	.globl _putchar
	.globl _getchar
	.globl _stop
	.globl _in
	.globl _outs
	.globl _out
	.globl _weeprom
	.globl _read
	.globl _reeprom
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
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
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
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
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
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
_putchar_c_65536_75:
	.ds 2
_getinput_e_65536_79:
	.ds 1
_getinput_f_65536_79:
	.ds 1
_in_aux_65536_86:
	.ds 1
_outs_datum_65536_89:
	.ds 1
_out_datum_65536_93:
	.ds 1
_weeprom_PARM_2:
	.ds 1
_weeprom_PARM_3:
	.ds 1
_weeprom_page_65536_97:
	.ds 1
_read_readcmd_65536_99:
	.ds 1
_reeprom_PARM_2:
	.ds 1
_reeprom_page_65536_101:
	.ds 1
_eereset_datum_65536_104:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
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
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;j                         Allocated with name '_delay_j_65536_73'
;------------------------------------------------------------
;	main.c:45: void delay(void){
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main.c:47: while(j++ < DELAY);
	mov	r6,#0x00
	mov	r7,#0x00
00101$:
	mov	ar5,r7
	inc	r6
	cjne	r6,#0x00,00111$
	inc	r7
00111$:
	mov	a,r5
	jb	acc.7,00101$
;	main.c:48: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_sdcc_external_startup'
;------------------------------------------------------------
;	main.c:49: _sdcc_external_startup()
;	-----------------------------------------
;	 function _sdcc_external_startup
;	-----------------------------------------
__sdcc_external_startup:
;	main.c:51: AUXR |= 0x0C;
	orl	_AUXR,#0x0c
;	main.c:52: return 0;
	mov	dptr,#0x0000
;	main.c:53: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated with name '_putchar_c_65536_75'
;------------------------------------------------------------
;	main.c:57: int putchar (int c)
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_putchar_c_65536_75
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:59: while (!TI);
00101$:
	jnb	_TI,00101$
;	main.c:60: SBUF = c;           // load serial port with transmit value
	mov	dptr,#_putchar_c_65536_75
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	_SBUF,r6
;	main.c:61: TI = 0;             // clear TI flag
;	assignBit
	clr	_TI
;	main.c:63: return c;
	mov	dpl,r6
	mov	dph,r7
;	main.c:64: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;	main.c:67: int getchar (void)
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	main.c:69: while (!RI);
00101$:
;	main.c:70: RI = 0;                         // clear RI flag
;	assignBit
	jbc	_RI,00114$
	sjmp	00101$
00114$:
;	main.c:71: return SBUF;                    // return character from SBUF
	mov	r6,_SBUF
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
;	main.c:72: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getinput'
;------------------------------------------------------------
;number                    Allocated with name '_getinput_number_65536_79'
;e                         Allocated with name '_getinput_e_65536_79'
;f                         Allocated with name '_getinput_f_65536_79'
;a                         Allocated with name '_getinput_a_65536_79'
;b                         Allocated with name '_getinput_b_65537_80'
;------------------------------------------------------------
;	main.c:77: uint8_t getinput()
;	-----------------------------------------
;	 function getinput
;	-----------------------------------------
_getinput:
;	main.c:81: int a = getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
;	main.c:82: if(a>='A'&& a<='F')
	clr	c
	mov	a,r6
	subb	a,#0x41
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00102$
	mov	a,#0x46
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00102$
;	main.c:83: e=a-'7';
	mov	ar5,r6
	mov	a,r5
	add	a,#0xc9
	mov	dptr,#_getinput_e_65536_79
	movx	@dptr,a
	sjmp	00103$
00102$:
;	main.c:85: e = a - '0';
	mov	ar5,r6
	mov	a,r5
	add	a,#0xd0
	mov	dptr,#_getinput_e_65536_79
	movx	@dptr,a
00103$:
;	main.c:86: putchar(a);
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
;	main.c:87: int b = getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
;	main.c:88: if(b>='A'&& b<='F')
	clr	c
	mov	a,r6
	subb	a,#0x41
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00106$
	mov	a,#0x46
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00106$
;	main.c:89: f=b-'7';
	mov	ar5,r6
	mov	a,r5
	add	a,#0xc9
	mov	dptr,#_getinput_f_65536_79
	movx	@dptr,a
	sjmp	00107$
00106$:
;	main.c:91: f = b - '0';
	mov	ar5,r6
	mov	a,r5
	add	a,#0xd0
	mov	dptr,#_getinput_f_65536_79
	movx	@dptr,a
00107$:
;	main.c:92: putchar(b);
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
;	main.c:102: number = (e*16) + f;
	mov	dptr,#_getinput_e_65536_79
	movx	a,@dptr
	mov	r7,a
	clr	a
	xch	a,r7
	swap	a
	xch	a,r7
	xrl	a,r7
	xch	a,r7
	anl	a,#0xf0
	xch	a,r7
	xrl	a,r7
	mov	r6,a
	mov	dptr,#_getinput_f_65536_79
	movx	a,@dptr
	mov	r4,#0x00
	add	a,r7
	mov	r7,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
;	main.c:103: if(number <= 0xFF)
	clr	c
	mov	a,#0xff
	subb	a,r7
	mov	a,#(0x00 ^ 0x80)
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jc	00110$
;	main.c:104: return number;
	mov	dpl,r7
	ret
00110$:
;	main.c:106: getinput();
;	main.c:107: }
	ljmp	_getinput
;------------------------------------------------------------
;Allocation info for local variables in function 'I2CStart'
;------------------------------------------------------------
;	main.c:112: void I2CStart(void){
;	-----------------------------------------
;	 function I2CStart
;	-----------------------------------------
_I2CStart:
;	main.c:113: SDA = 1;
;	assignBit
	setb	_P1_7
;	main.c:114: SCK = 1;
;	assignBit
	setb	_P1_6
;	main.c:115: delay();
	lcall	_delay
;	main.c:116: SDA = 0;
;	assignBit
	clr	_P1_7
;	main.c:117: delay();
	lcall	_delay
;	main.c:118: SCK = 0;
;	assignBit
	clr	_P1_6
;	main.c:119: delay();
;	main.c:120: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'stop'
;------------------------------------------------------------
;	main.c:132: void stop (void)
;	-----------------------------------------
;	 function stop
;	-----------------------------------------
_stop:
;	main.c:134: SDA = 0; // stop condition, data = 0
;	assignBit
	clr	_P1_7
;	main.c:135: delay();
	lcall	_delay
;	main.c:136: SCK = 1; // clock = 1
;	assignBit
	setb	_P1_6
;	main.c:137: delay();
	lcall	_delay
;	main.c:138: SDA = 1; // data = 1
;	assignBit
	setb	_P1_7
;	main.c:139: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'in'
;------------------------------------------------------------
;i                         Allocated with name '_in_i_65536_86'
;aux                       Allocated with name '_in_aux_65536_86'
;------------------------------------------------------------
;	main.c:152: char in (void)
;	-----------------------------------------
;	 function in
;	-----------------------------------------
_in:
;	main.c:155: char aux = 0; // auxiliary storage
	mov	dptr,#_in_aux_65536_86
	clr	a
	movx	@dptr,a
;	main.c:156: SDA = 1; // insure port pin = 1 for input
;	assignBit
	setb	_P1_7
;	main.c:157: for (i = 0; i < 8; i++) // bit shifting cycle
	mov	r7,#0x00
00105$:
;	main.c:159: SCK = 0; // clock = 0
;	assignBit
	clr	_P1_6
;	main.c:160: delay();
	push	ar7
	lcall	_delay
	pop	ar7
;	main.c:161: SCK = 1; // clock = 1
;	assignBit
	setb	_P1_6
;	main.c:162: aux = aux << 1; // load bit position
	mov	dptr,#_in_aux_65536_86
	movx	a,@dptr
	add	a,acc
	movx	@dptr,a
;	main.c:163: if (SDA) // check SDA data from port pin
	jnb	_P1_7,00102$
;	main.c:164: aux = aux | 0x01; // if port pin = 1, set LSB (bit position)
	mov	dptr,#_in_aux_65536_86
	movx	a,@dptr
	orl	acc,#0x01
	movx	@dptr,a
	sjmp	00106$
00102$:
;	main.c:166: aux = aux & 0xFE; // else port pin = ,clear LSB (bit position)
	mov	dptr,#_in_aux_65536_86
	movx	a,@dptr
	anl	acc,#0xfe
	movx	@dptr,a
00106$:
;	main.c:157: for (i = 0; i < 8; i++) // bit shifting cycle
	inc	r7
	cjne	r7,#0x08,00123$
00123$:
	jc	00105$
;	main.c:168: SCK = 0; // clock = 0
;	assignBit
	clr	_P1_6
;	main.c:169: return (aux); // return data received
	mov	dptr,#_in_aux_65536_86
	movx	a,@dptr
;	main.c:170: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'outs'
;------------------------------------------------------------
;datum                     Allocated with name '_outs_datum_65536_89'
;i                         Allocated with name '_outs_i_65536_90'
;aux                       Allocated with name '_outs_aux_65536_90'
;------------------------------------------------------------
;	main.c:184: void outs (char datum)
;	-----------------------------------------
;	 function outs
;	-----------------------------------------
_outs:
	mov	a,dpl
	mov	dptr,#_outs_datum_65536_89
	movx	@dptr,a
;	main.c:188: SDA = 1; // set port pin SDA to insure data is HI
;	assignBit
	setb	_P1_7
;	main.c:189: SCK = 1; // set port pin SCK to insure clock is HI
;	assignBit
	setb	_P1_6
;	main.c:190: delay();
	lcall	_delay
;	main.c:191: SDA = 0; // start condition, data = 0
;	assignBit
	clr	_P1_7
;	main.c:192: delay();
	lcall	_delay
;	main.c:193: SCK = 0; // clock = 0
;	assignBit
	clr	_P1_6
;	main.c:194: for (i = 0; i < 8; i++) // bit shifting cycle
	mov	r7,#0x00
00105$:
;	main.c:196: aux = datum & 0x80; // check MSB bit
	mov	dptr,#_outs_datum_65536_89
	movx	a,@dptr
	jb	acc.7,00102$
;	main.c:197: if (aux == 0) // MSB = 0
;	main.c:198: SDA = 0; // then SDA = 0
;	assignBit
	clr	_P1_7
	sjmp	00103$
00102$:
;	main.c:200: SDA = 1; // else MSB =1, then SDA = 1
;	assignBit
	setb	_P1_7
00103$:
;	main.c:201: SCK = 1; // clock = 1
;	assignBit
	setb	_P1_6
;	main.c:202: delay();
	push	ar7
	lcall	_delay
	pop	ar7
;	main.c:203: SCK = 0; // clock = 0
;	assignBit
	clr	_P1_6
;	main.c:204: datum = datum << 1; // rotate for next bit
	mov	dptr,#_outs_datum_65536_89
	movx	a,@dptr
	add	a,acc
	movx	@dptr,a
;	main.c:194: for (i = 0; i < 8; i++) // bit shifting cycle
	inc	r7
	cjne	r7,#0x08,00123$
00123$:
	jc	00105$
;	main.c:206: SDA = 1; // set port pin for ack
;	assignBit
	setb	_P1_7
;	main.c:207: delay();
	lcall	_delay
;	main.c:208: SCK = 1; // clock ack
;	assignBit
	setb	_P1_6
;	main.c:209: delay();
	lcall	_delay
;	main.c:210: SCK = 0; // clock = 0
;	assignBit
	clr	_P1_6
;	main.c:211: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'out'
;------------------------------------------------------------
;datum                     Allocated with name '_out_datum_65536_93'
;i                         Allocated with name '_out_i_65536_94'
;aux                       Allocated with name '_out_aux_65536_94'
;------------------------------------------------------------
;	main.c:225: void out (char datum)
;	-----------------------------------------
;	 function out
;	-----------------------------------------
_out:
	mov	a,dpl
	mov	dptr,#_out_datum_65536_93
	movx	@dptr,a
;	main.c:229: for (i = 0; i < 8; i++) // bit shifting cycle
	mov	r7,#0x00
00105$:
;	main.c:231: aux = datum & 0x80; // check MSB bit
	mov	dptr,#_out_datum_65536_93
	movx	a,@dptr
	jb	acc.7,00102$
;	main.c:232: if (aux == 0) // MSB = 0
;	main.c:233: SDA = 0; // then SDA = 0
;	assignBit
	clr	_P1_7
	sjmp	00103$
00102$:
;	main.c:235: SDA = 1; // else MSB = 1, the SDA = 1
;	assignBit
	setb	_P1_7
00103$:
;	main.c:236: SCK = 1; // clock = 1
;	assignBit
	setb	_P1_6
;	main.c:237: delay();
	push	ar7
	lcall	_delay
	pop	ar7
;	main.c:238: SCK = 0; // clock = 0
;	assignBit
	clr	_P1_6
;	main.c:239: datum = datum << 1; // rotate for next bit
	mov	dptr,#_out_datum_65536_93
	movx	a,@dptr
	add	a,acc
	movx	@dptr,a
;	main.c:229: for (i = 0; i < 8; i++) // bit shifting cycle
	inc	r7
	cjne	r7,#0x08,00123$
00123$:
	jc	00105$
;	main.c:241: SDA = 1; // set port pin for ack
;	assignBit
	setb	_P1_7
;	main.c:242: delay();
	lcall	_delay
;	main.c:243: SCK = 1; // clock ack
;	assignBit
	setb	_P1_6
;	main.c:244: delay();
	lcall	_delay
;	main.c:245: SCK = 0; // clock = 0
;	assignBit
	clr	_P1_6
;	main.c:246: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'weeprom'
;------------------------------------------------------------
;address                   Allocated with name '_weeprom_PARM_2'
;datum                     Allocated with name '_weeprom_PARM_3'
;page                      Allocated with name '_weeprom_page_65536_97'
;WRCMD                     Allocated with name '_weeprom_WRCMD_65536_98'
;------------------------------------------------------------
;	main.c:261: void weeprom (char page, char address, char datum)
;	-----------------------------------------
;	 function weeprom
;	-----------------------------------------
_weeprom:
	mov	a,dpl
	mov	dptr,#_weeprom_page_65536_97
	movx	@dptr,a
;	main.c:264: page = page << 1; // move A0, A1 & A2 to their positions
	movx	a,@dptr
	add	a,acc
	movx	@dptr,a
;	main.c:265: page = page & 0xFE; // clear r/w bit
	movx	a,@dptr
	anl	acc,#0xfe
	movx	@dptr,a
;	main.c:266: WRCMD = page | 0xA0; // build the write command
	mov	dptr,#_weeprom_page_65536_97
	movx	a,@dptr
	orl	a,#0xa0
;	main.c:267: outs (WRCMD); // send the write command with start condition
	mov	dpl,a
	lcall	_outs
;	main.c:268: out (address); // send address
	mov	dptr,#_weeprom_PARM_2
	movx	a,@dptr
	mov	dpl,a
	lcall	_out
;	main.c:269: out (datum); // send data
	mov	dptr,#_weeprom_PARM_3
	movx	a,@dptr
	mov	dpl,a
	lcall	_out
;	main.c:270: stop (); // send stop condition
;	main.c:271: }
	ljmp	_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'read'
;------------------------------------------------------------
;readcmd                   Allocated with name '_read_readcmd_65536_99'
;RDCMD                     Allocated with name '_read_RDCMD_65536_100'
;aux                       Allocated with name '_read_aux_65536_100'
;------------------------------------------------------------
;	main.c:285: char read (char readcmd)
;	-----------------------------------------
;	 function read
;	-----------------------------------------
_read:
	mov	a,dpl
	mov	dptr,#_read_readcmd_65536_99
	movx	@dptr,a
;	main.c:289: RDCMD = readcmd | 0x01; // set r/w bit
	movx	a,@dptr
	orl	a,#0x01
;	main.c:290: outs (RDCMD); // send read command with start condition
	mov	dpl,a
	lcall	_outs
;	main.c:291: aux = in(); // read current position
	lcall	_in
	mov	r7,dpl
;	main.c:292: stop (); // send stop condition
	push	ar7
	lcall	_stop
	pop	ar7
;	main.c:293: return (aux); // return current position data
	mov	dpl,r7
;	main.c:294: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'reeprom'
;------------------------------------------------------------
;address                   Allocated with name '_reeprom_PARM_2'
;page                      Allocated with name '_reeprom_page_65536_101'
;aux                       Allocated with name '_reeprom_aux_65536_102'
;WRCMD                     Allocated with name '_reeprom_WRCMD_65536_102'
;------------------------------------------------------------
;	main.c:309: char reeprom (char page, char address)
;	-----------------------------------------
;	 function reeprom
;	-----------------------------------------
_reeprom:
	mov	a,dpl
	mov	dptr,#_reeprom_page_65536_101
	movx	@dptr,a
;	main.c:313: aux = page; // preparing the write command
	movx	a,@dptr
;	main.c:314: aux = aux << 1; // move A0, A1 & A2 to their positions
	add	a,acc
	mov	r7,a
;	main.c:315: aux = aux & 0xFE; // clear r/w bit
	mov	a,#0xfe
	anl	a,r7
;	main.c:316: WRCMD = aux | 0xA0; // build the write command
	orl	a,#0xa0
;	main.c:317: outs (WRCMD); // send the write command with start condition
	mov	r7,a
	mov	dpl,a
	push	ar7
	lcall	_outs
;	main.c:318: out (address); // send address
	mov	dptr,#_reeprom_PARM_2
	movx	a,@dptr
	mov	dpl,a
	lcall	_out
	pop	ar7
;	main.c:319: aux = read (WRCMD); // send read command and receive data
	mov	dpl,r7
;	main.c:320: return (aux); // return solicited data
;	main.c:321: }
	ljmp	_read
;------------------------------------------------------------
;Allocation info for local variables in function 'eereset'
;------------------------------------------------------------
;datum                     Allocated with name '_eereset_datum_65536_104'
;i                         Allocated with name '_eereset_i_65536_104'
;aux                       Allocated with name '_eereset_aux_65536_104'
;------------------------------------------------------------
;	main.c:326: void eereset(void){
;	-----------------------------------------
;	 function eereset
;	-----------------------------------------
_eereset:
;	main.c:327: char datum = 0x1FF;
	mov	dptr,#_eereset_datum_65536_104
	mov	a,#0xff
	movx	@dptr,a
;	main.c:330: SDA = 1; // set port pin SDA to insure data is HI
;	assignBit
	setb	_P1_7
;	main.c:331: SCK = 1; // set port pin SCK to insure clock is HI
;	assignBit
	setb	_P1_6
;	main.c:332: delay();
	lcall	_delay
;	main.c:333: SDA = 0; // start condition, data = 0
;	assignBit
	clr	_P1_7
;	main.c:334: delay();
	lcall	_delay
;	main.c:335: SCK = 0; // clock = 0
;	assignBit
	clr	_P1_6
;	main.c:336: for (i = 0; i <= 8; i++) // bit shifting cycle
	mov	r7,#0x00
00105$:
;	main.c:338: aux = datum & 0x100; // check MSB bit
	mov	dptr,#_eereset_datum_65536_104
	movx	a,@dptr
	mov	r6,a
;	main.c:340: SDA = 0; // then SDA = 0
;	assignBit
	clr	_P1_7
;	main.c:343: SCK = 1; // clock = 1
;	assignBit
	setb	_P1_6
;	main.c:344: delay();
	push	ar7
	push	ar6
	lcall	_delay
	pop	ar6
	pop	ar7
;	main.c:345: SCK = 0; // clock = 0
;	assignBit
	clr	_P1_6
;	main.c:346: datum = datum << 1; // rotate for next bit
	mov	a,r6
	add	a,r6
	mov	dptr,#_eereset_datum_65536_104
	movx	@dptr,a
;	main.c:336: for (i = 0; i <= 8; i++) // bit shifting cycle
	inc	r7
	mov	a,r7
	add	a,#0xff - 0x08
	jnc	00105$
;	main.c:348: SDA = 1; // set port pin for ack
;	assignBit
	setb	_P1_7
;	main.c:349: delay();
	lcall	_delay
;	main.c:350: SCK = 1; // clock ack
;	assignBit
	setb	_P1_6
;	main.c:351: delay();
	lcall	_delay
;	main.c:352: SCK = 0; // clock = 0
;	assignBit
	clr	_P1_6
;	main.c:353: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;input                     Allocated with name '_main_input_131073_109'
;data                      Allocated with name '_main_data_196610_111'
;address                   Allocated with name '_main_address_196611_112'
;readcmd                   Allocated with name '_main_readcmd_196612_113'
;i                         Allocated with name '_main_i_262148_114'
;------------------------------------------------------------
;	main.c:354: int main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:356: while(1){
00115$:
;	main.c:357: printf_tiny("\r\n ******************I2C Function User Menu**************");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:358: printf_tiny("\r\n Press W for the Data at address to write");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:359: printf_tiny("\r\n Press R to read the data at memory location ");
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:360: printf_tiny("\r\n Press H to print Hex Dump");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:361: printf_tiny("\r\n Press S for System reset");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:362: printf_tiny("\r\n **************Please select the option from above********");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:363: char input = getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
;	main.c:366: switch(input){
	cjne	r6,#0x48,00167$
	ljmp	00104$
00167$:
	cjne	r6,#0x50,00168$
	ljmp	00112$
00168$:
	cjne	r6,#0x52,00169$
	ljmp	00103$
00169$:
	cjne	r6,#0x53,00170$
	ljmp	00111$
00170$:
	cjne	r6,#0x54,00171$
	sjmp	00101$
00171$:
	cjne	r6,#0x57,00172$
	sjmp	00102$
00172$:
	ljmp	00113$
;	main.c:367: case 'T': I2CStart();
00101$:
	push	ar6
	lcall	_I2CStart
;	main.c:368: printf_tiny("\r\n I2C mode entered\n");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar6
;	main.c:369: break;
	ljmp	00113$
;	main.c:371: case 'W': printf_tiny("\r\nEnter the character->\n");
00102$:
	push	ar6
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:372: uint8_t data = getinput();
	lcall	_getinput
	mov	r7,dpl
	pop	ar6
;	main.c:373: printf_tiny("\r\n%x",data);
	mov	ar4,r7
	mov	r5,#0x00
	push	ar7
	push	ar6
	push	ar4
	push	ar5
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:374: printf_tiny("\r\nEnter the Address in Hex between 00 and ff->\n");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:375: uint8_t address = getinput();
	lcall	_getinput
	mov	r5,dpl
;	main.c:376: printf_tiny("\r\n%x",address);
	mov	ar3,r5
	mov	r4,#0x00
	push	ar5
	push	ar3
	push	ar4
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:377: weeprom(0x00,address,data);
	mov	dptr,#_weeprom_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	dptr,#_weeprom_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl,#0x00
	push	ar6
	lcall	_weeprom
	pop	ar6
;	main.c:378: break;
	ljmp	00113$
;	main.c:380: case 'R': printf_tiny("\r\nEnter the address between 00 and ff to be Read->\n");
00103$:
	push	ar6
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:381: uint8_t readcmd = getinput();
	lcall	_getinput
	mov	r7,dpl
;	main.c:382: printf_tiny("\r\n Data on that address is -> %x",reeprom(0x00,readcmd));
	mov	dptr,#_reeprom_PARM_2
	mov	a,r7
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_reeprom
	mov	r7,dpl
	mov	r5,#0x00
	push	ar7
	push	ar5
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
;	main.c:383: break;
	ljmp	00113$
;	main.c:385: case 'H': printf_tiny("\r\nHexdump Printing................");
00104$:
	push	ar6
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar6
;	main.c:386: for(int i = 0;i < 256;i++){
	mov	r5,#0x00
	mov	r7,#0x00
00118$:
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x81
	jc	00173$
	ljmp	00113$
00173$:
;	main.c:387: if((i % 16) == 0){
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x10
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jz	00174$
	ljmp	00109$
00174$:
;	main.c:388: if(i == 0){
	mov	a,r5
	orl	a,r7
	jnz	00106$
;	main.c:389: printf_tiny("\r\n");
	push	ar7
	push	ar6
	push	ar5
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:390: printf_tiny("%x: ",i);
	push	ar7
	push	ar6
	push	ar5
	push	ar5
	push	ar7
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00109$
00106$:
;	main.c:393: printf_tiny("\r\n");
	push	ar7
	push	ar6
	push	ar5
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:394: printf("%x:",i);
	push	ar7
	push	ar6
	push	ar5
	push	ar5
	push	ar7
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
00109$:
;	main.c:397: printf_tiny("%x ",reeprom(0x00,i));
	mov	dptr,#_reeprom_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	dpl,#0x00
	push	ar7
	push	ar6
	push	ar5
	lcall	_reeprom
	mov	r4,dpl
	mov	r3,#0x00
	push	ar4
	push	ar3
	mov	a,#___str_16
	push	acc
	mov	a,#(___str_16 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:386: for(int i = 0;i < 256;i++){
	inc	r5
	cjne	r5,#0x00,00176$
	inc	r7
00176$:
	ljmp	00118$
;	main.c:401: case 'S':  printf_tiny("\r\nSytem Resetting........");
00111$:
	push	ar6
	mov	a,#___str_17
	push	acc
	mov	a,#(___str_17 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:402: eereset();
	lcall	_eereset
	pop	ar6
;	main.c:403: break;
;	main.c:405: case 'P':  stop();
	sjmp	00113$
00112$:
	push	ar6
	lcall	_stop
	pop	ar6
;	main.c:407: }
00113$:
;	main.c:408: putchar(input);
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
;	main.c:410: return 0;
;	main.c:411: }
	ljmp	00115$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x0d
	.db 0x0a
	.ascii " ******************I2C Function User Menu**************"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.db 0x0d
	.db 0x0a
	.ascii " Press W for the Data at address to write"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0x0d
	.db 0x0a
	.ascii " Press R to read the data at memory location "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0x0d
	.db 0x0a
	.ascii " Press H to print Hex Dump"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.db 0x0d
	.db 0x0a
	.ascii " Press S for System reset"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.db 0x0d
	.db 0x0a
	.ascii " **************Please select the option from above********"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.db 0x0d
	.db 0x0a
	.ascii " I2C mode entered"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.db 0x0d
	.db 0x0a
	.ascii "Enter the character->"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.db 0x0d
	.db 0x0a
	.ascii "%x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.db 0x0d
	.db 0x0a
	.ascii "Enter the Address in Hex between 00 and ff->"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.db 0x0d
	.db 0x0a
	.ascii "Enter the address between 00 and ff to be Read->"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.db 0x0d
	.db 0x0a
	.ascii " Data on that address is -> %x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.db 0x0d
	.db 0x0a
	.ascii "Hexdump Printing................"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "%x: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "%x:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii "%x "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.db 0x0d
	.db 0x0a
	.ascii "Sytem Resetting........"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
