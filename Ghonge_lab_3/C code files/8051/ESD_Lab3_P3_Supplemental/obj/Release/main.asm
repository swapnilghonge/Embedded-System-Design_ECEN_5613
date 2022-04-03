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
	.globl _watchdog
	.globl _watchdog_switch
	.globl _high_speed_toggle
	.globl _power_down_mode
	.globl _idle_mode
	.globl _max_freq
	.globl _min_freq
	.globl _stop_pwm
	.globl _run_pwm
	.globl _hardware_init
	.globl _getinput
	.globl __sdcc_external_startup
	.globl _printf_tiny
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD0
	.globl _TXD
	.globl _RXD0
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _BREG_F7
	.globl _BREG_F6
	.globl _BREG_F5
	.globl _BREG_F4
	.globl _BREG_F3
	.globl _BREG_F2
	.globl _BREG_F1
	.globl _BREG_F0
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
	.globl _TMOD
	.globl _TL1
	.globl _TL0
	.globl _TH1
	.globl _TH0
	.globl _TCON
	.globl _SP
	.globl _SCON
	.globl _SBUF0
	.globl _SBUF
	.globl _PSW
	.globl _PCON
	.globl _P3
	.globl _P2
	.globl _P1
	.globl _P0
	.globl _IP
	.globl _IE
	.globl _DP0L
	.globl _DPL
	.globl _DP0H
	.globl _DPH
	.globl _B
	.globl _ACC
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
	.globl _watchdog_flag
	.globl _input_char
	.globl _putchar
	.globl _getchar
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
_ACC	=	0x00e0
_B	=	0x00f0
_DPH	=	0x0083
_DP0H	=	0x0083
_DPL	=	0x0082
_DP0L	=	0x0082
_IE	=	0x00a8
_IP	=	0x00b8
_P0	=	0x0080
_P1	=	0x0090
_P2	=	0x00a0
_P3	=	0x00b0
_PCON	=	0x0087
_PSW	=	0x00d0
_SBUF	=	0x0099
_SBUF0	=	0x0099
_SCON	=	0x0098
_SP	=	0x0081
_TCON	=	0x0088
_TH0	=	0x008c
_TH1	=	0x008d
_TL0	=	0x008a
_TL1	=	0x008b
_TMOD	=	0x0089
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
_BREG_F0	=	0x00f0
_BREG_F1	=	0x00f1
_BREG_F2	=	0x00f2
_BREG_F3	=	0x00f3
_BREG_F4	=	0x00f4
_BREG_F5	=	0x00f5
_BREG_F6	=	0x00f6
_BREG_F7	=	0x00f7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_RXD0	=	0x00b0
_TXD	=	0x00b1
_TXD0	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
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
_input_char::
	.ds 2
_watchdog_flag::
	.ds 2
_putchar_c_65536_43:
	.ds 2
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
;Allocation info for local variables in function '_sdcc_external_startup'
;------------------------------------------------------------
;	main.c:26: _sdcc_external_startup()
;	-----------------------------------------
;	 function _sdcc_external_startup
;	-----------------------------------------
__sdcc_external_startup:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main.c:28: AUXR |= 0x0C;
	orl	_AUXR,#0x0c
;	main.c:29: return 0;
	mov	dptr,#0x0000
;	main.c:30: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated with name '_putchar_c_65536_43'
;------------------------------------------------------------
;	main.c:34: int putchar (int c)
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_putchar_c_65536_43
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:38: while (!TI);
00101$:
	jnb	_TI,00101$
;	main.c:39: SBUF = c;           // load serial port with transmit value
	mov	dptr,#_putchar_c_65536_43
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	_SBUF,r6
;	main.c:40: TI = 0;             // clear TI flag
;	assignBit
	clr	_TI
;	main.c:42: return c;
	mov	dpl,r6
	mov	dph,r7
;	main.c:43: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;	main.c:48: int getchar (void)
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	main.c:52: while (!RI);
00101$:
;	main.c:53: RI = 0;                         // clear RI flag
;	assignBit
	jbc	_RI,00114$
	sjmp	00101$
00114$:
;	main.c:54: return SBUF;                    // return character from SBUF
	mov	r6,_SBUF
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
;	main.c:55: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getinput'
;------------------------------------------------------------
;a                         Allocated with name '_getinput_a_65536_47'
;number                    Allocated with name '_getinput_number_65536_47'
;e                         Allocated with name '_getinput_e_65537_48'
;------------------------------------------------------------
;	main.c:56: unsigned int getinput()
;	-----------------------------------------
;	 function getinput
;	-----------------------------------------
_getinput:
;	main.c:61: again:  printf_tiny("Enter a value btw 1 and 6 \r\n");
00101$:
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:63: a = getchar(); // get first digit
	lcall	_getchar
	mov	a,dpl
	mov	b,dph
;	main.c:64: int e=a-'0';
	add	a,#0xd0
	mov	r6,a
	mov	a,b
	addc	a,#0xff
	mov	r7,a
;	main.c:65: printf_tiny("a= %d\r\n", e);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:70: printf_tiny("number = %d\n\r", number);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:71: if((number>=1) &&(number<=8)) // value of digit >48 and less then 4800
	clr	c
	mov	a,r6
	subb	a,#0x01
	mov	a,r7
	subb	a,#0x00
	jc	00103$
	mov	a,#0x08
	subb	a,r6
	clr	a
	subb	a,r7
	jc	00103$
;	main.c:73: printf_tiny("valid input\r\n");
	push	ar7
	push	ar6
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	main.c:74: printf_tiny("num= %d", number);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:75: return number;
	mov	dpl,r6
	mov	dph,r7
	ret
00103$:
;	main.c:79: printf_tiny("not a valid input\r\n");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:80: goto again;
;	main.c:83: }
	ljmp	00101$
;------------------------------------------------------------
;Allocation info for local variables in function 'hardware_init'
;------------------------------------------------------------
;	main.c:87: void hardware_init()
;	-----------------------------------------
;	 function hardware_init
;	-----------------------------------------
_hardware_init:
;	main.c:89: CKCON0 = 0x1F;
	mov	_CKCON0,#0x1f
;	main.c:90: IEN0 |= 0x80;
	orl	_IEN0,#0x80
;	main.c:91: TMOD |= 0x20;
	orl	_TMOD,#0x20
;	main.c:92: SCON |= 0x50;
	orl	_SCON,#0x50
;	main.c:93: TCON |= 0x40;
	orl	_TCON,#0x40
;	main.c:94: TH1 = 0xFD;
	mov	_TH1,#0xfd
;	main.c:95: TI = 1;
;	assignBit
	setb	_TI
;	main.c:96: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'run_pwm'
;------------------------------------------------------------
;	main.c:101: void run_pwm()
;	-----------------------------------------
;	 function run_pwm
;	-----------------------------------------
_run_pwm:
;	main.c:103: printf_tiny("Running PWM\r\n");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:104: CMOD = 0x02;
	mov	_CMOD,#0x02
;	main.c:105: CL = 0x00;
	mov	_CL,#0x00
;	main.c:106: CH = 0x00;
	mov	_CH,#0x00
;	main.c:107: CCAP0L = 0xbf;
	mov	_CCAP0L,#0xbf
;	main.c:108: CCAP0H = 0xbf;
	mov	_CCAP0H,#0xbf
;	main.c:109: CCON = 0x40;
	mov	_CCON,#0x40
;	main.c:110: CCAPM0 = 0x42;
	mov	_CCAPM0,#0x42
;	main.c:112: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'stop_pwm'
;------------------------------------------------------------
;	main.c:116: void stop_pwm(void)
;	-----------------------------------------
;	 function stop_pwm
;	-----------------------------------------
_stop_pwm:
;	main.c:118: printf_tiny("Stopping the PWM\r\n");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:119: CCAPM0 &= 0x00;
	mov	a,_CCAPM0
	mov	_CCAPM0,#0x00
;	main.c:120: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'min_freq'
;------------------------------------------------------------
;	main.c:124: void min_freq()
;	-----------------------------------------
;	 function min_freq
;	-----------------------------------------
_min_freq:
;	main.c:126: printf_tiny("going to minimum frequency\r\n");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:127: CKRL = 0x00;
	mov	_CKRL,#0x00
;	main.c:128: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'max_freq'
;------------------------------------------------------------
;	main.c:133: void max_freq()
;	-----------------------------------------
;	 function max_freq
;	-----------------------------------------
_max_freq:
;	main.c:135: printf_tiny("going to maximum frequency\r\n");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:136: CKRL = 0xFF;
	mov	_CKRL,#0xff
;	main.c:138: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'idle_mode'
;------------------------------------------------------------
;	main.c:142: void idle_mode()
;	-----------------------------------------
;	 function idle_mode
;	-----------------------------------------
_idle_mode:
;	main.c:145: printf_tiny("going to idle mode\r\n");
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:146: PCON = 0x01;
	mov	_PCON,#0x01
;	main.c:148: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'power_down_mode'
;------------------------------------------------------------
;	main.c:153: void power_down_mode()
;	-----------------------------------------
;	 function power_down_mode
;	-----------------------------------------
_power_down_mode:
;	main.c:156: printf_tiny("going to power down mode\r\n");
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:157: PCON |= 0x02;
	orl	_PCON,#0x02
;	main.c:158: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'high_speed_toggle'
;------------------------------------------------------------
;	main.c:159: void high_speed_toggle(void)
;	-----------------------------------------
;	 function high_speed_toggle
;	-----------------------------------------
_high_speed_toggle:
;	main.c:161: printf_tiny("high speed\r\n");
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:162: CMOD = 0x02;
	mov	_CMOD,#0x02
;	main.c:163: CCAP0L = 0x00;
	mov	_CCAP0L,#0x00
;	main.c:164: CCAP0H = 0x00;
	mov	_CCAP0H,#0x00
;	main.c:165: CCON = 0x40;
	mov	_CCON,#0x40
;	main.c:166: CCAPM0 = 0x4C;
	mov	_CCAPM0,#0x4c
;	main.c:167: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'watchdog_switch'
;------------------------------------------------------------
;	main.c:168: void watchdog_switch()
;	-----------------------------------------
;	 function watchdog_switch
;	-----------------------------------------
_watchdog_switch:
;	main.c:170: if(watchdog_flag==0)
	mov	dptr,#_watchdog_flag
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00102$
;	main.c:172: printf_tiny("watchdog_on");
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:173: watchdog_flag=1;
	mov	dptr,#_watchdog_flag
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	ret
00102$:
;	main.c:177: printf_tiny("watchdog_off");
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:178: watchdog_flag=0;
	mov	dptr,#_watchdog_flag
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:180: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'watchdog'
;------------------------------------------------------------
;	main.c:181: void watchdog(void)
;	-----------------------------------------
;	 function watchdog
;	-----------------------------------------
_watchdog:
;	main.c:184: if(watchdog_flag==1)
	mov	dptr,#_watchdog_flag
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x01,00102$
	cjne	r7,#0x00,00102$
;	main.c:186: CCAP4L = 0x00;
	mov	_CCAP4L,#0x00
;	main.c:187: CCAP4H = 0xFF;
	mov	_CCAP4H,#0xff
;	main.c:188: CMOD |= 0x40;
	orl	_CMOD,#0x40
;	main.c:189: CCON = 0x40;
	mov	_CCON,#0x40
;	main.c:190: CCAPM4 |= 0x4C;
	orl	_CCAPM4,#0x4c
	ret
00102$:
;	main.c:194: CMOD = 0x00;
	mov	_CMOD,#0x00
;	main.c:196: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:197: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:201: hardware_init();
	lcall	_hardware_init
;	main.c:202: while(1)
00125$:
;	main.c:205: printf_tiny("*************USER MENU for LAB 3 Part 3*******************\r\n");
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:206: printf_tiny("1 for run PWM mode\r\n");
	mov	a,#___str_16
	push	acc
	mov	a,#(___str_16 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:207: printf_tiny("2 for stop PWM mode\r\n");
	mov	a,#___str_17
	push	acc
	mov	a,#(___str_17 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:208: printf_tiny("3 forSet FCLK PERIPH at the minimum frequency supported by the CKRL register  \r\n");
	mov	a,#___str_18
	push	acc
	mov	a,#(___str_18 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:209: printf_tiny("4 for Set FCLK PERIPH at the maximum frequency supported by the CKRL register\r\n");
	mov	a,#___str_19
	push	acc
	mov	a,#(___str_19 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:210: printf_tiny("5 for Enter Idle mode\r\n");
	mov	a,#___str_20
	push	acc
	mov	a,#(___str_20 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:211: printf_tiny("6 for Enter Power Down mode\r\n");
	mov	a,#___str_21
	push	acc
	mov	a,#(___str_21 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:212: printf_tiny("7 for Enter for High Speed Toggle\r\n");
	mov	a,#___str_22
	push	acc
	mov	a,#(___str_22 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:213: printf_tiny("8 for Enter for watchdog timer\r\n");
	mov	a,#___str_23
	push	acc
	mov	a,#(___str_23 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:216: input_char = getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_input_char
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:217: putchar(input_char);
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
;	main.c:219: if (input_char == '1')
	mov	dptr,#_input_char
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x31,00122$
	cjne	r7,#0x00,00122$
;	main.c:221: run_pwm();
	lcall	_run_pwm
	ljmp	00125$
00122$:
;	main.c:223: else if (input_char == '2')
	cjne	r6,#0x32,00119$
	cjne	r7,#0x00,00119$
;	main.c:225: stop_pwm();
	lcall	_stop_pwm
	ljmp	00125$
00119$:
;	main.c:227: else if (input_char == '3')
	cjne	r6,#0x33,00116$
	cjne	r7,#0x00,00116$
;	main.c:229: min_freq();
	lcall	_min_freq
	ljmp	00125$
00116$:
;	main.c:231: else if (input_char == '4')
	cjne	r6,#0x34,00113$
	cjne	r7,#0x00,00113$
;	main.c:233: max_freq();
	lcall	_max_freq
	ljmp	00125$
00113$:
;	main.c:235: else if (input_char == '5')
	cjne	r6,#0x35,00110$
	cjne	r7,#0x00,00110$
;	main.c:237: idle_mode();
	lcall	_idle_mode
	ljmp	00125$
00110$:
;	main.c:239: else if (input_char == '6')
	cjne	r6,#0x36,00107$
	cjne	r7,#0x00,00107$
;	main.c:241: power_down_mode();
	lcall	_power_down_mode
	ljmp	00125$
00107$:
;	main.c:243: else if (input_char == '7')
	cjne	r6,#0x37,00104$
	cjne	r7,#0x00,00104$
;	main.c:245: high_speed_toggle();
	lcall	_high_speed_toggle
	ljmp	00125$
00104$:
;	main.c:247: else if (input_char == '8')
	cjne	r6,#0x38,00179$
	cjne	r7,#0x00,00179$
	sjmp	00180$
00179$:
	ljmp	00125$
00180$:
;	main.c:249: watchdog_switch();
	lcall	_watchdog_switch
;	main.c:250: watchdog();
	lcall	_watchdog
;	main.c:255: }
	ljmp	00125$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "Enter a value btw 1 and 6 "
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "a= %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "number = %d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "valid input"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "num= %d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "not a valid input"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "Running PWM"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "Stopping the PWM"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "going to minimum frequency"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "going to maximum frequency"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "going to idle mode"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "going to power down mode"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "high speed"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii "watchdog_on"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "watchdog_off"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "*************USER MENU for LAB 3 Part 3*******************"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii "1 for run PWM mode"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.ascii "2 for stop PWM mode"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.ascii "3 forSet FCLK PERIPH at the minimum frequency supported by t"
	.ascii "he CKRL register  "
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.ascii "4 for Set FCLK PERIPH at the maximum frequency supported by "
	.ascii "the CKRL register"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.ascii "5 for Enter Idle mode"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.ascii "6 for Enter Power Down mode"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.ascii "7 for Enter for High Speed Toggle"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.ascii "8 for Enter for watchdog timer"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
