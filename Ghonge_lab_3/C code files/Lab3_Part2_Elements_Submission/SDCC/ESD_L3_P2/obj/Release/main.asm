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
	.globl _del_num
	.globl _getinput_30_300
	.globl _getinput
	.globl __sdcc_external_startup
	.globl _free
	.globl _malloc
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
	.globl _i
	.globl _total_char
	.globl _storage
	.globl _num
	.globl _input_char
	.globl _buffer_1_add
	.globl _buffer_0_add
	.globl _buffer_n
	.globl _buffer_1
	.globl _buffer_0
	.globl _heap
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
_main_sloc0_1_0:
	.ds 2
_main_sloc1_1_0:
	.ds 2
_main_sloc2_1_0:
	.ds 2
_main_sloc3_1_0:
	.ds 2
_main_sloc4_1_0:
	.ds 2
_main_sloc5_1_0:
	.ds 2
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
_heap::
	.ds 4800
_buffer_0::
	.ds 2
_buffer_1::
	.ds 2
_buffer_n::
	.ds 100
_buffer_0_add::
	.ds 2
_buffer_1_add::
	.ds 2
_input_char::
	.ds 2
_num::
	.ds 2
_putchar_c_65536_43:
	.ds 2
_main_buff_size_65536_61:
	.ds 100
_main_p_196609_66:
	.ds 3
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_storage::
	.ds 2
_total_char::
	.ds 2
_i::
	.ds 2
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
;	main.c:39: _sdcc_external_startup()
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
;	main.c:41: AUXR |= 0x0C;
	orl	_AUXR,#0x0c
;	main.c:42: return 0;
	mov	dptr,#0x0000
;	main.c:43: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated with name '_putchar_c_65536_43'
;------------------------------------------------------------
;	main.c:47: int putchar (int c)
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
;	main.c:51: while (!TI);
00101$:
	jnb	_TI,00101$
;	main.c:52: SBUF = c;           // load serial port with transmit value
	mov	dptr,#_putchar_c_65536_43
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	_SBUF,r6
;	main.c:53: TI = 0;             // clear TI flag
;	assignBit
	clr	_TI
;	main.c:55: return c;
	mov	dpl,r6
	mov	dph,r7
;	main.c:56: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;	main.c:61: int getchar (void)
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	main.c:65: while (!RI);
00101$:
;	main.c:66: RI = 0;                         // clear RI flag
;	assignBit
	jbc	_RI,00114$
	sjmp	00101$
00114$:
;	main.c:67: return SBUF;                    // return character from SBUF
	mov	r6,_SBUF
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
;	main.c:68: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getinput'
;------------------------------------------------------------
;a                         Allocated with name '_getinput_a_65536_47'
;b                         Allocated with name '_getinput_b_65536_47'
;c                         Allocated with name '_getinput_c_65536_47'
;d                         Allocated with name '_getinput_d_65536_47'
;number                    Allocated with name '_getinput_number_65536_47'
;e                         Allocated with name '_getinput_e_65537_48'
;f                         Allocated with name '_getinput_f_65538_49'
;g                         Allocated with name '_getinput_g_65539_50'
;h                         Allocated with name '_getinput_h_65540_51'
;------------------------------------------------------------
;	main.c:72: unsigned int getinput()
;	-----------------------------------------
;	 function getinput
;	-----------------------------------------
_getinput:
;	main.c:80: again:  printf_tiny("Enter a value divisible btw 48 and 4800 and divisible by 16\r\n");
00101$:
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:82: a = getchar(); // get first digit
	lcall	_getchar
	mov	a,dpl
	mov	b,dph
;	main.c:83: int e=a-'0';
	add	a,#0xd0
	mov	r6,a
	mov	a,b
	addc	a,#0xff
	mov	r7,a
;	main.c:84: printf_tiny("a= %d\r\n", e);
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
;	main.c:88: b = getchar(); // get 2nd digit
	lcall	_getchar
	mov	a,dpl
	mov	b,dph
;	main.c:89: int f=b-'0';
	add	a,#0xd0
	mov	r4,a
	mov	a,b
	addc	a,#0xff
	mov	r5,a
;	main.c:90: printf_tiny("b= %d\r\n", f);
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:94: c = getchar(); // get 3rd digit
	lcall	_getchar
	mov	a,dpl
	mov	b,dph
;	main.c:95: int g=c-'0';
	add	a,#0xd0
	mov	r2,a
	mov	a,b
	addc	a,#0xff
	mov	r3,a
;	main.c:96: printf_tiny(" c = %d\r\n", g);
	push	ar3
	push	ar2
	push	ar2
	push	ar3
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:100: d= getchar(); // get 4th digit
	lcall	_getchar
	mov	a,dpl
	mov	b,dph
;	main.c:101: int h=d-'0';
	add	a,#0xd0
	mov	r0,a
	mov	a,b
	addc	a,#0xff
	mov	r1,a
;	main.c:102: printf_tiny(" d = %d \r\n", h);
	push	ar1
	push	ar0
	push	ar0
	push	ar1
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:106: number= (e*1000 + f*100 + g*10 + h);
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x03e8
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	mov	dptr,#__mulint_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0064
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
	mov	dptr,#__mulint_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x000a
	push	ar7
	push	ar6
	push	ar1
	push	ar0
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar0
	pop	ar1
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
	mov	a,r0
	add	a,r6
	mov	r6,a
	mov	a,r1
	addc	a,r7
	mov	r7,a
;	main.c:107: printf_tiny("number = %d\n\r", number);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:108: if((number>=48) &&(number<=4800)&&(number%16==0)) // value of digit >48 and less then 4800
	mov	ar4,r6
	mov	ar5,r7
	clr	c
	mov	a,r4
	subb	a,#0x30
	mov	a,r5
	subb	a,#0x00
	jc	00103$
	mov	ar4,r6
	mov	ar5,r7
	clr	c
	mov	a,#0xc0
	subb	a,r4
	mov	a,#0x12
	subb	a,r5
	jc	00103$
	mov	ar4,r6
	mov	ar5,r7
	mov	a,r4
	anl	a,#0x0f
	jnz	00103$
;	main.c:110: printf_tiny("valid input\r\n");
	push	ar7
	push	ar6
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	main.c:111: printf_tiny("num= %d", number);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:112: return number;
	mov	dpl,r6
	mov	dph,r7
	ret
00103$:
;	main.c:116: printf_tiny("not a valid input\r\n");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:117: goto again;
;	main.c:120: }
	ljmp	00101$
;------------------------------------------------------------
;Allocation info for local variables in function 'getinput_30_300'
;------------------------------------------------------------
;q                         Allocated with name '_getinput_30_300_q_65536_54'
;r                         Allocated with name '_getinput_30_300_r_65536_54'
;s                         Allocated with name '_getinput_30_300_s_65536_54'
;num_new                   Allocated with name '_getinput_30_300_num_new_65536_54'
;x                         Allocated with name '_getinput_30_300_x_65537_55'
;y                         Allocated with name '_getinput_30_300_y_65538_56'
;z                         Allocated with name '_getinput_30_300_z_65539_57'
;------------------------------------------------------------
;	main.c:125: int getinput_30_300()
;	-----------------------------------------
;	 function getinput_30_300
;	-----------------------------------------
_getinput_30_300:
;	main.c:132: again1: printf_tiny("Enter a value divisible btw 30 and 300\r\n");
00101$:
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:134: q = getchar();
	lcall	_getchar
	mov	a,dpl
	mov	b,dph
;	main.c:135: int x=q-'0';
	add	a,#0xd0
	mov	r6,a
	mov	a,b
	addc	a,#0xff
	mov	r7,a
;	main.c:136: printf_tiny(" q = %d \r\n", x);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:138: r= getchar();
	lcall	_getchar
	mov	a,dpl
	mov	b,dph
;	main.c:139: int y=r-'0';
	add	a,#0xd0
	mov	r4,a
	mov	a,b
	addc	a,#0xff
	mov	r5,a
;	main.c:140: printf_tiny(" r = %d \r\n", y);
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:142: s= getchar();
	lcall	_getchar
	mov	a,dpl
	mov	b,dph
;	main.c:143: int z=s-'0';
	add	a,#0xd0
	mov	r2,a
	mov	a,b
	addc	a,#0xff
	mov	r3,a
;	main.c:144: printf_tiny(" s = %d \r\n", z);
	push	ar3
	push	ar2
	push	ar2
	push	ar3
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:146: num_new= ((x*100)+(y*10)+z);
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0064
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	mov	dptr,#__mulint_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x000a
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
	mov	a,r2
	add	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
;	main.c:147: printf_tiny("new value of buffer is = %d",num_new);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:148: if ((num_new>=30)&&(num_new<=300))
	mov	ar4,r6
	mov	ar5,r7
	clr	c
	mov	a,r4
	subb	a,#0x1e
	mov	a,r5
	subb	a,#0x00
	jnc	00120$
	ljmp	00101$
00120$:
	mov	ar4,r6
	mov	ar5,r7
	clr	c
	mov	a,#0x2c
	subb	a,r4
	mov	a,#0x01
	subb	a,r5
	jnc	00121$
	ljmp	00101$
00121$:
;	main.c:149: return num_new;
	mov	dpl,r6
	mov	dph,r7
;	main.c:151: goto again1;
;	main.c:154: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'del_num'
;------------------------------------------------------------
;P                         Allocated with name '_del_num_P_65536_58'
;Q                         Allocated with name '_del_num_Q_65536_58'
;number3                   Allocated with name '_del_num_number3_65536_58'
;A                         Allocated with name '_del_num_A_65537_59'
;B                         Allocated with name '_del_num_B_65538_60'
;------------------------------------------------------------
;	main.c:158: int del_num()
;	-----------------------------------------
;	 function del_num
;	-----------------------------------------
_del_num:
;	main.c:164: printf_tiny("enter the number of buffer to delete");
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:166: P= getchar();
	lcall	_getchar
	mov	a,dpl
	mov	b,dph
;	main.c:167: int A = P-'0';
	add	a,#0xd0
	mov	r6,a
	mov	a,b
	addc	a,#0xff
	mov	r7,a
;	main.c:168: Q= getchar();
	push	ar7
	push	ar6
	lcall	_getchar
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
;	main.c:169: int B = Q-'0';
	add	a,#0xd0
	mov	r4,a
	mov	a,b
	addc	a,#0xff
	mov	r5,a
;	main.c:170: number3 = ((A*10)+B);
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x000a
	push	ar5
	push	ar4
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	pop	ar4
	pop	ar5
	add	a,r4
	mov	r4,a
	mov	a,r5
	addc	a,b
;	main.c:172: return number3;
;	main.c:173: }
	mov	dpl,r4
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;sloc0                     Allocated with name '_main_sloc0_1_0'
;sloc1                     Allocated with name '_main_sloc1_1_0'
;sloc2                     Allocated with name '_main_sloc2_1_0'
;sloc3                     Allocated with name '_main_sloc3_1_0'
;sloc4                     Allocated with name '_main_sloc4_1_0'
;sloc5                     Allocated with name '_main_sloc5_1_0'
;num                       Allocated with name '_main_num_65536_61'
;number2                   Allocated with name '_main_number2_65536_61'
;j                         Allocated with name '_main_j_65536_61'
;t                         Allocated with name '_main_t_65536_61'
;buff_size                 Allocated with name '_main_buff_size_65536_61'
;num_del                   Allocated with name '_main_num_del_65536_61'
;total_buffer_count        Allocated with name '_main_total_buffer_count_65536_61'
;count                     Allocated with name '_main_count_65536_61'
;buff_0_count              Allocated with name '_main_buff_0_count_65536_61'
;p                         Allocated with name '_main_p_196609_66'
;m                         Allocated with name '_main_m_262144_78'
;------------------------------------------------------------
;	main.c:175: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:189: num = getinput();
	lcall	_getinput
	mov	_main_sloc5_1_0,dpl
	mov	(_main_sloc5_1_0 + 1),dph
;	main.c:190: printf_tiny("the number is %d",num);
	push	_main_sloc5_1_0
	push	(_main_sloc5_1_0 + 1)
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:192: buffer_0 = (char*) malloc(num); // malloc num bytes and store in buffer_0
	mov	dpl,_main_sloc5_1_0
	mov	dph,(_main_sloc5_1_0 + 1)
	lcall	_malloc
	mov	r4,dpl
	mov	r5,dph
	mov	dptr,#_buffer_0
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:193: buffer_0_add = (unsigned int)buffer_0; //printing the starting address of buffer_0
	mov	ar2,r4
	mov	ar3,r5
	mov	dptr,#_buffer_0_add
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	main.c:195: if(buffer_0 !=NULL)
	mov	a,r4
	orl	a,r5
	jz	00102$
;	main.c:197: printf_tiny("malloc for buffer0 is successful\r\n");
	mov	a,#___str_16
	push	acc
	mov	a,#(___str_16 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:198: printf_tiny("starting address of buffer 0 is %x\r\n",buffer_0_add);
	mov	dptr,#_buffer_0_add
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_17
	push	acc
	mov	a,#(___str_17 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00102$:
;	main.c:201: buffer_1=(char *)malloc(num); // malloc num bytes and store in buffer_1
	mov	dpl,_main_sloc5_1_0
	mov	dph,(_main_sloc5_1_0 + 1)
	lcall	_malloc
	mov	r4,dpl
	mov	r5,dph
	mov	dptr,#_buffer_1
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:202: buffer_1_add = (unsigned int)buffer_1; //printing the starting address of buffer_1
	mov	ar2,r4
	mov	ar3,r5
	mov	dptr,#_buffer_1_add
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	main.c:204: if(buffer_1 !=NULL)
	mov	a,r4
	orl	a,r5
	jz	00193$
;	main.c:206: printf_tiny("malloc for buffer1 is successful\r\n");
	mov	a,#___str_18
	push	acc
	mov	a,#(___str_18 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:207: printf_tiny("starting address of buffer 1 is %x\r\n",buffer_1_add);
	mov	dptr,#_buffer_1_add
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_19
	push	acc
	mov	a,#(___str_19 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:210: while(1)
00193$:
	mov	r4,#0x00
	mov	r5,#0x00
	mov	_main_sloc3_1_0,#0x02
;	1-genFromRTrack replaced	mov	(_main_sloc3_1_0 + 1),#0x00
	mov	(_main_sloc3_1_0 + 1),r5
	clr	a
	mov	_main_sloc4_1_0,a
	mov	(_main_sloc4_1_0 + 1),a
00173$:
;	main.c:212: printf_tiny("Enter a character\r\n");
	push	ar5
	push	ar4
	mov	a,#___str_20
	push	acc
	mov	a,#(___str_20 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:213: input_char = getchar();// take input for storage
	lcall	_getchar
	mov	r2,dpl
	mov	r3,dph
	mov	dptr,#_input_char
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	main.c:214: total_char++;
	mov	dptr,#_total_char
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	main.c:215: putchar(input_char);
	mov	dpl,r2
	mov	dph,r3
	lcall	_putchar
;	main.c:217: printf_tiny("the input character is %d\r\n", input_char);
	mov	dptr,#_input_char
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_21
	push	acc
	mov	a,#(___str_21 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
;	main.c:220: if(((count<num)&&(input_char>='a')&&(input_char<='z')))
	mov	ar2,r4
	mov	ar3,r5
	clr	c
	mov	a,r2
	subb	a,_main_sloc5_1_0
	mov	a,r3
	subb	a,(_main_sloc5_1_0 + 1)
	jc	00348$
	ljmp	00168$
00348$:
	mov	dptr,#_input_char
	movx	a,@dptr
	mov	_main_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_main_sloc0_1_0 + 1),a
	clr	c
	mov	a,_main_sloc0_1_0
	subb	a,#0x61
	mov	a,(_main_sloc0_1_0 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00349$
	ljmp	00168$
00349$:
	clr	c
	mov	a,#0x7a
	subb	a,_main_sloc0_1_0
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_main_sloc0_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00350$
	ljmp	00168$
00350$:
;	main.c:222: storage++;
	mov	dptr,#_storage
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	main.c:223: *((buffer_0)+count) = input_char;
	mov	dptr,#_buffer_0
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r4
	add	a,r2
	mov	dpl,a
	mov	a,r5
	addc	a,r3
	mov	dph,a
	mov	a,_main_sloc0_1_0
	movx	@dptr,a
;	main.c:224: int *p = ((buffer_0)+count);
	mov	dptr,#_buffer_0
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r4
	add	a,r2
	mov	r2,a
	mov	a,r5
	addc	a,r3
	mov	r3,a
	mov	dptr,#_main_p_196609_66
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	main.c:225: count++;
	inc	r4
	cjne	r4,#0x00,00351$
	inc	r5
00351$:
;	main.c:226: printf_tiny("buffer is \r\n%p",p);
	push	ar5
	push	ar4
	mov	dptr,#_main_p_196609_66
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_22
	push	acc
	mov	a,#(___str_22 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar4
	pop	ar5
;	main.c:227: printf_tiny("count = %d\r\n",count);
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	mov	a,#___str_23
	push	acc
	mov	a,#(___str_23 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	ljmp	00173$
00168$:
;	main.c:229: else if((count==num)&&(input_char != '-' )&&(input_char != '+')&&(input_char!='?')&&(input_char!='@')&&(input_char!='='))
	mov	ar2,r4
	mov	ar3,r5
	mov	a,r2
	cjne	a,_main_sloc5_1_0,00160$
	mov	a,r3
	cjne	a,(_main_sloc5_1_0 + 1),00160$
	mov	dptr,#_input_char
	movx	a,@dptr
	mov	_main_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_main_sloc0_1_0 + 1),a
	mov	a,#0x2d
	cjne	a,_main_sloc0_1_0,00354$
	clr	a
	cjne	a,(_main_sloc0_1_0 + 1),00354$
	sjmp	00160$
00354$:
	mov	a,#0x2b
	cjne	a,_main_sloc0_1_0,00355$
	clr	a
	cjne	a,(_main_sloc0_1_0 + 1),00355$
	sjmp	00160$
00355$:
	mov	a,#0x3f
	cjne	a,_main_sloc0_1_0,00356$
	clr	a
	cjne	a,(_main_sloc0_1_0 + 1),00356$
	sjmp	00160$
00356$:
	mov	a,#0x40
	cjne	a,_main_sloc0_1_0,00357$
	clr	a
	cjne	a,(_main_sloc0_1_0 + 1),00357$
	sjmp	00160$
00357$:
	mov	a,#0x3d
	cjne	a,_main_sloc0_1_0,00358$
	clr	a
	cjne	a,(_main_sloc0_1_0 + 1),00358$
	sjmp	00160$
00358$:
;	main.c:231: putchar(input_char);
	mov	dpl,_main_sloc0_1_0
	mov	dph,(_main_sloc0_1_0 + 1)
	push	ar5
	push	ar4
	lcall	_putchar
;	main.c:232: printf_tiny("buffer is full\r\n");
	mov	a,#___str_24
	push	acc
	mov	a,#(___str_24 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
	ljmp	00173$
00160$:
;	main.c:235: else if (input_char == '+')
	mov	dptr,#_input_char
	movx	a,@dptr
	mov	_main_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_main_sloc0_1_0 + 1),a
	mov	a,#0x2b
	cjne	a,_main_sloc0_1_0,00359$
	clr	a
	cjne	a,(_main_sloc0_1_0 + 1),00359$
	sjmp	00360$
00359$:
	ljmp	00157$
00360$:
;	main.c:237: printf_tiny(" Allocating a new buffer\r\n");
	push	ar5
	push	ar4
	mov	a,#___str_25
	push	acc
	mov	a,#(___str_25 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:238: printf_tiny("enter a new value between 30 and 300\r\n");
	mov	a,#___str_26
	push	acc
	mov	a,#(___str_26 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:239: number2 = getinput_30_300(); // values between30 and 300 are accepted
	lcall	_getinput_30_300
	mov	_main_sloc1_1_0,dpl
	mov	(_main_sloc1_1_0 + 1),dph
;	main.c:241: buffer_n[j] = (char*)malloc(number2); // allocating new buffer with memory
	mov	a,_main_sloc4_1_0
	add	a,_main_sloc4_1_0
	mov	r2,a
	mov	a,(_main_sloc4_1_0 + 1)
	rlc	a
	mov	r3,a
	mov	a,r2
	add	a,#_buffer_n
	mov	_main_sloc2_1_0,a
	mov	a,r3
	addc	a,#(_buffer_n >> 8)
	mov	(_main_sloc2_1_0 + 1),a
	mov	dpl,_main_sloc1_1_0
	mov	dph,(_main_sloc1_1_0 + 1)
	lcall	_malloc
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	mov	dpl,_main_sloc2_1_0
	mov	dph,(_main_sloc2_1_0 + 1)
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	main.c:243: if(buffer_n[j]==NULL)
	mov	a,r2
	orl	a,r3
	jnz	00106$
;	main.c:245: printf_tiny("\n\rMemory Allocation for Buffer_%d Failed\n\rPress '+' to Try again\n\r",j+2);
	mov	a,#0x02
	add	a,_main_sloc4_1_0
	mov	r2,a
	clr	a
	addc	a,(_main_sloc4_1_0 + 1)
	mov	r3,a
	push	ar5
	push	ar4
	push	ar2
	push	ar3
	mov	a,#___str_27
	push	acc
	mov	a,#(___str_27 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	ljmp	00173$
00106$:
;	main.c:249: printf_tiny("\n\rMemory Allocation Successful for Buffer_%d\n\r",(j+2));
	push	ar4
	push	ar5
	mov	a,#0x02
	add	a,_main_sloc4_1_0
	mov	r4,a
	clr	a
	addc	a,(_main_sloc4_1_0 + 1)
	mov	r5,a
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	mov	a,#___str_28
	push	acc
	mov	a,#(___str_28 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
;	main.c:250: printf_tiny("\n\rBuffer_%d allocated of size %d\n\r",(j+2),number2);
	push	ar5
	push	ar4
	push	_main_sloc1_1_0
	push	(_main_sloc1_1_0 + 1)
	push	ar4
	push	ar5
	mov	a,#___str_29
	push	acc
	mov	a,#(___str_29 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar4
	pop	ar5
;	main.c:251: printf_tiny("\n\rAddress of buffer_%d = 0x%x\n\r",(j+2),(uint16_t)(buffer_n[i]));
	mov	dptr,#_i
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r2
	add	a,r2
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
	mov	a,r2
	add	a,#_buffer_n
	mov	dpl,a
	mov	a,r3
	addc	a,#(_buffer_n >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	push	ar5
	push	ar4
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	a,#___str_30
	push	acc
	mov	a,#(___str_30 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar4
	pop	ar5
;	main.c:252: buff_size[t]=number2;              //store size of newly allocated buffer to buff_size array
	mov	a,_main_sloc3_1_0
	add	a,_main_sloc3_1_0
	mov	r4,a
	mov	a,(_main_sloc3_1_0 + 1)
	rlc	a
	mov	r5,a
	mov	a,r4
	add	a,#_main_buff_size_65536_61
	mov	dpl,a
	mov	a,r5
	addc	a,#(_main_buff_size_65536_61 >> 8)
	mov	dph,a
	mov	a,_main_sloc1_1_0
	movx	@dptr,a
	mov	a,(_main_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	main.c:253: t++;
	inc	_main_sloc3_1_0
	clr	a
	cjne	a,_main_sloc3_1_0,00362$
	inc	(_main_sloc3_1_0 + 1)
00362$:
;	main.c:254: j++;
	inc	_main_sloc4_1_0
	clr	a
	cjne	a,_main_sloc4_1_0,00363$
	inc	(_main_sloc4_1_0 + 1)
00363$:
	pop	ar5
	pop	ar4
	ljmp	00173$
00157$:
;	main.c:258: else if (input_char == '-')
	mov	a,#0x2d
	cjne	a,_main_sloc0_1_0,00364$
	clr	a
	cjne	a,(_main_sloc0_1_0 + 1),00364$
	sjmp	00365$
00364$:
	ljmp	00154$
00365$:
;	main.c:260: printf_tiny("\n\rEnter a valid buffer number\n\r");
	push	ar5
	push	ar4
	mov	a,#___str_31
	push	acc
	mov	a,#(___str_31 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:261: num_del = del_num();
	lcall	_del_num
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
;	main.c:263: if(num_del == 0)
	mov	a,r2
	orl	a,r3
	jnz	00116$
;	main.c:265: printf_tiny("\n\rBuffer 0 cannot be deleted!\n\r");
	push	ar5
	push	ar4
	mov	a,#___str_32
	push	acc
	mov	a,#(___str_32 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
	ljmp	00173$
00116$:
;	main.c:267: else if(num_del == 1)
	cjne	r2,#0x01,00113$
	cjne	r3,#0x00,00113$
;	main.c:269: free(buffer_1);
	push	ar4
	push	ar5
	mov	dptr,#_buffer_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	r5,#0x00
	mov	dpl,r4
	mov	dph,r1
	mov	b,r5
	push	ar5
	push	ar4
	lcall	_free
	pop	ar4
	pop	ar5
;	main.c:270: printf_tiny("\n\rBuffer 1>%d\n\r",(unsigned int)buffer_1);
	mov	dptr,#_buffer_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	mov	a,#___str_33
	push	acc
	mov	a,#(___str_33 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:271: buffer_1 = 0;
	mov	dptr,#_buffer_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:272: printf_tiny("Buffer 1 deleted\r\n");
	mov	a,#___str_34
	push	acc
	mov	a,#(___str_34 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
	pop	ar5
	pop	ar4
	ljmp	00173$
00113$:
;	main.c:274: else if(((num_del>1))&&(num_del<=(j+2)))
	mov	ar0,r2
	mov	ar1,r3
	clr	c
	mov	a,#0x01
	subb	a,r0
	clr	a
	subb	a,r1
	jc	00369$
	ljmp	00109$
00369$:
	push	ar4
	push	ar5
	mov	a,#0x02
	add	a,_main_sloc4_1_0
	mov	r0,a
	clr	a
	addc	a,(_main_sloc4_1_0 + 1)
	mov	r1,a
	mov	ar4,r2
	mov	ar5,r3
	clr	c
	mov	a,r0
	subb	a,r4
	mov	a,r1
	subb	a,r5
	pop	ar5
	pop	ar4
	jnc	00370$
	ljmp	00109$
00370$:
;	main.c:276: printf_tiny("\n\rDeleting buffer_%d.........\n\r",num_del);
	push	ar4
	push	ar5
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar2
	push	ar3
	mov	a,#___str_35
	push	acc
	mov	a,#(___str_35 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	main.c:277: free(buffer_n[num_del-2]);
	mov	ar0,r2
	dec	r0
	dec	r0
	clr	F0
	mov	b,#0x02
	mov	a,r0
	jnb	acc.7,00371$
	cpl	F0
	cpl	a
	inc	a
00371$:
	mul	ab
	jnb	F0,00372$
	cpl	a
	add	a,#0x01
	xch	a,b
	cpl	a
	addc	a,#0x00
	xch	a,b
00372$:
	add	a,#_buffer_n
	mov	dpl,a
	mov	a,#(_buffer_n >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	r5,#0x00
	mov	dpl,r0
	mov	dph,r1
	mov	b,r5
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_free
	pop	ar2
	pop	ar3
;	main.c:278: printf_tiny("\n\rBuffer %d  is free\n\r",num_del);
	push	ar3
	push	ar2
	push	ar2
	push	ar3
	mov	a,#___str_36
	push	acc
	mov	a,#(___str_36 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	main.c:279: buffer_n[num_del-2]=0;
	dec	r2
	dec	r2
	clr	F0
	mov	b,#0x02
	mov	a,r2
	jnb	acc.7,00373$
	cpl	F0
	cpl	a
	inc	a
00373$:
	mul	ab
	jnb	F0,00374$
	cpl	a
	add	a,#0x01
	xch	a,b
	cpl	a
	addc	a,#0x00
	xch	a,b
00374$:
	add	a,#_buffer_n
	mov	dpl,a
	mov	a,#(_buffer_n >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	pop	ar5
	pop	ar4
	ljmp	00173$
00109$:
;	main.c:284: printf_tiny("\n\rEnter a valid buffer number\n\rPress '-' to delete any valid buffer\n\r");
	push	ar5
	push	ar4
	mov	a,#___str_37
	push	acc
	mov	a,#(___str_37 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
	ljmp	00173$
00154$:
;	main.c:288: else if (input_char == '?')
	mov	a,#0x3f
	cjne	a,_main_sloc0_1_0,00375$
	clr	a
	cjne	a,(_main_sloc0_1_0 + 1),00375$
	sjmp	00376$
00375$:
	ljmp	00151$
00376$:
;	main.c:290: printf_tiny(" HEAP REPORT of buffer_0 \r\n");
	push	ar5
	push	ar4
	mov	a,#___str_38
	push	acc
	mov	a,#(___str_38 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:291: printf_tiny("\n\rStart Addressof buffer_0x%x\n\r",buffer_0_add);
	mov	dptr,#_buffer_0_add
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_39
	push	acc
	mov	a,#(___str_39 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:292: printf_tiny("\n\rEnding Address of buffer_0x%x\n\r",(buffer_0_add)+(num));
	mov	dptr,#_buffer_0_add
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,_main_sloc5_1_0
	add	a,r2
	mov	r2,a
	mov	a,(_main_sloc5_1_0 + 1)
	addc	a,r3
	mov	r3,a
	push	ar2
	push	ar3
	mov	a,#___str_40
	push	acc
	mov	a,#(___str_40 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:293: printf_tiny("\n\rBuffer Size of buffer_0 %d\n\r",num);
	push	_main_sloc5_1_0
	push	(_main_sloc5_1_0 + 1)
	mov	a,#___str_41
	push	acc
	mov	a,#(___str_41 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:294: printf_tiny("\n\rStored characters in buffer>>>%d\n\r",storage);
	mov	dptr,#_storage
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_42
	push	acc
	mov	a,#(___str_42 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:295: printf_tiny("\n\rFree Spaces in buffer%d\n\r",(num-storage));
	mov	dptr,#_storage
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,_main_sloc5_1_0
	clr	c
	subb	a,r2
	mov	r2,a
	mov	a,(_main_sloc5_1_0 + 1)
	subb	a,r3
	mov	r3,a
	push	ar2
	push	ar3
	mov	a,#___str_43
	push	acc
	mov	a,#(___str_43 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
;	main.c:298: if(buffer_1 != 0)
	mov	dptr,#_buffer_1
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00377$
	ljmp	00211$
00377$:
;	main.c:300: printf_tiny("\n\rHeap status of buffer_1\n\r");
	push	ar5
	push	ar4
	mov	a,#___str_44
	push	acc
	mov	a,#(___str_44 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:301: printf_tiny("\n\rStart Address of buffer_1 x%x\n\r",buffer_1_add);
	mov	dptr,#_buffer_1_add
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_45
	push	acc
	mov	a,#(___str_45 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:302: printf_tiny("\n\rEnding Address of buffer_1x%x\n\r",buffer_1_add+num);
	mov	dptr,#_buffer_1_add
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,_main_sloc5_1_0
	add	a,r2
	mov	r2,a
	mov	a,(_main_sloc5_1_0 + 1)
	addc	a,r3
	mov	r3,a
	push	ar2
	push	ar3
	mov	a,#___str_46
	push	acc
	mov	a,#(___str_46 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:303: printf_tiny("\n\rBuffer Size%d\n\r",num);
	push	_main_sloc5_1_0
	push	(_main_sloc5_1_0 + 1)
	mov	a,#___str_47
	push	acc
	mov	a,#(___str_47 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:304: printf_tiny("\n\rStorage characters in buffer>>>0\n\r");
	mov	a,#___str_48
	push	acc
	mov	a,#(___str_48 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:305: printf_tiny("\n\rFree Spaces in buffer>>>>>>>>>>%d\n\r",(num));
	push	_main_sloc5_1_0
	push	(_main_sloc5_1_0 + 1)
	mov	a,#___str_49
	push	acc
	mov	a,#(___str_49 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
;	main.c:309: for(int m=2;m<=(j+2);m++)
00211$:
	mov	a,#0x02
	add	a,_main_sloc4_1_0
	mov	r2,a
	clr	a
	addc	a,(_main_sloc4_1_0 + 1)
	mov	r3,a
	mov	r0,#0x02
	mov	r1,#0x00
00176$:
	clr	c
	mov	a,r2
	subb	a,r0
	mov	a,r3
	xrl	a,#0x80
	mov	b,r1
	xrl	b,#0x80
	subb	a,b
	jnc	00378$
	ljmp	00122$
00378$:
;	main.c:311: if(buffer_n[m-2]!=0)
	push	ar4
	push	ar5
	mov	a,r0
	mov	_main_sloc2_1_0,a
	add	a,#0xfe
	mov	r5,a
	clr	F0
	mov	b,#0x02
	mov	a,r5
	jnb	acc.7,00379$
	cpl	F0
	cpl	a
	inc	a
00379$:
	mul	ab
	jnb	F0,00380$
	cpl	a
	add	a,#0x01
	xch	a,b
	cpl	a
	addc	a,#0x00
	xch	a,b
00380$:
	add	a,#_buffer_n
	mov	dpl,a
	mov	a,#(_buffer_n >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	orl	a,r4
	pop	ar5
	pop	ar4
	jnz	00381$
	ljmp	00177$
00381$:
;	main.c:313: printf_tiny("\n\rBUFFER %d\n\r",m);
	push	ar4
	push	ar5
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	push	ar0
	push	ar1
	mov	a,#___str_50
	push	acc
	mov	a,#(___str_50 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	main.c:314: printf_tiny("\n\rStart Address0x%x\n\r",(unsigned int)buffer_n[m-2]);
	mov	a,_main_sloc2_1_0
	add	a,#0xfe
	mov	r5,a
	clr	F0
	mov	b,#0x02
	mov	a,r5
	jnb	acc.7,00382$
	cpl	F0
	cpl	a
	inc	a
00382$:
	mul	ab
	jnb	F0,00383$
	cpl	a
	add	a,#0x01
	xch	a,b
	cpl	a
	addc	a,#0x00
	xch	a,b
00383$:
	add	a,#_buffer_n
	mov	r4,a
	mov	a,#(_buffer_n >> 8)
	addc	a,b
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	push	ar6
	push	ar7
	mov	a,#___str_51
	push	acc
	mov	a,#(___str_51 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	main.c:315: printf_tiny("\n\rEnding Address0x%x\n\r",(uint16_t)(buffer_n[m-2])+(uint16_t)(buff_size[m]));
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	_main_sloc2_1_0,r4
	mov	(_main_sloc2_1_0 + 1),r5
	mov	a,r0
	add	a,r0
	mov	r6,a
	mov	a,r1
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_main_buff_size_65536_61
	mov	r6,a
	mov	a,r7
	addc	a,#(_main_buff_size_65536_61 >> 8)
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	add	a,_main_sloc2_1_0
	mov	r4,a
	mov	a,r5
	addc	a,(_main_sloc2_1_0 + 1)
	mov	r5,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	push	ar4
	push	ar5
	mov	a,#___str_52
	push	acc
	mov	a,#(___str_52 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:316: printf_tiny("\n\rBuffer Size%d\n\r",buff_size[m]);
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	push	ar4
	push	ar5
	mov	a,#___str_47
	push	acc
	mov	a,#(___str_47 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:317: printf_tiny("\n\rStorage characters in buffer0\n\r");
	mov	a,#___str_53
	push	acc
	mov	a,#(___str_53 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:318: printf_tiny("\n\rFree Spaces in buffer%d\n\r",(buff_size[m]));
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	push	ar6
	push	ar7
	mov	a,#___str_43
	push	acc
	mov	a,#(___str_43 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	main.c:377: for(total_buffer_count=2;(total_buffer_count)<(j+2);(total_buffer_count)++)
	pop	ar5
	pop	ar4
;	main.c:318: printf_tiny("\n\rFree Spaces in buffer%d\n\r",(buff_size[m]));
00177$:
;	main.c:309: for(int m=2;m<=(j+2);m++)
	inc	r0
	cjne	r0,#0x00,00384$
	inc	r1
00384$:
	ljmp	00176$
00122$:
;	main.c:322: printf_tiny("\n\rNumber of storage characters = %d\n\r",storage);
	push	ar5
	push	ar4
	mov	dptr,#_storage
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_54
	push	acc
	mov	a,#(___str_54 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:323: printf_tiny("\n\rTotal number of characters received = %d\n\r",total_char);
	mov	dptr,#_total_char
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_55
	push	acc
	mov	a,#(___str_55 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:324: printf_tiny("\n\rTotal number of buffers that were allocated since the start of the program = %d\n\r",(i+2));
	mov	dptr,#_i
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x02
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	push	ar6
	push	ar7
	mov	a,#___str_56
	push	acc
	mov	a,#(___str_56 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	ljmp	00173$
00151$:
;	main.c:327: else if(input_char == '=')
	mov	a,#0x3d
	cjne	a,_main_sloc0_1_0,00385$
	clr	a
	cjne	a,(_main_sloc0_1_0 + 1),00385$
	sjmp	00386$
00385$:
	ljmp	00148$
00386$:
;	main.c:329: printf_tiny("\n\rContents in Buffer 0\n\r");
	push	ar5
	push	ar4
	mov	a,#___str_57
	push	acc
	mov	a,#(___str_57 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
;	main.c:331: for((buff_0_count)=0;(buff_0_count)<storage;(buff_0_count)++)
	mov	r6,#0x00
	mov	r7,#0x00
00179$:
	mov	dptr,#_storage
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,r6
	subb	a,r2
	mov	a,r7
	subb	a,r3
	jc	00387$
	ljmp	00173$
00387$:
;	main.c:333: if(buff_0_count==0)
	mov	a,r6
	orl	a,r7
	jnz	00129$
;	main.c:335: printf_tiny("0x%x>> %x",(uint16_t)(buffer_0+buff_0_count),*((buffer_0)+(buff_0_count)));
	mov	dptr,#_buffer_0
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r6
	add	a,r2
	mov	r2,a
	mov	a,r7
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	a,#___str_58
	push	acc
	mov	a,#(___str_58 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	ljmp	00180$
00129$:
;	main.c:337: else if((buff_0_count%16)!=0)
	mov	a,#0x0f
	anl	a,r6
	mov	r2,a
	mov	r3,#0x00
	orl	a,r3
	jz	00126$
;	main.c:339: printf_tiny(" %x",*((buffer_0)+(buff_0_count)));
	mov	dptr,#_buffer_0
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,r6
	add	a,r0
	mov	dpl,a
	mov	a,r7
	addc	a,r1
	mov	dph,a
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar0
	push	ar1
	mov	a,#___str_59
	push	acc
	mov	a,#(___str_59 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00180$
00126$:
;	main.c:341: else if(buff_0_count%16==0)
	mov	a,r2
	orl	a,r3
	jnz	00180$
;	main.c:343: printf_tiny("\n\r0x%x>> %x",(uint16_t)(buffer_0+buff_0_count),*((buffer_0)+(buff_0_count)));
	mov	dptr,#_buffer_0
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r6
	add	a,r2
	mov	r2,a
	mov	a,r7
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	a,#___str_60
	push	acc
	mov	a,#(___str_60 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00180$:
;	main.c:331: for((buff_0_count)=0;(buff_0_count)<storage;(buff_0_count)++)
	inc	r6
	cjne	r6,#0x00,00391$
	inc	r7
00391$:
	ljmp	00179$
00148$:
;	main.c:347: else if(input_char == '&')
	mov	a,#0x26
	cjne	a,_main_sloc0_1_0,00392$
	clr	a
	cjne	a,(_main_sloc0_1_0 + 1),00392$
	sjmp	00393$
00392$:
	ljmp	00145$
00393$:
;	main.c:349: printf_tiny("\n\rContents in heap\n\r");
	push	ar5
	push	ar4
	mov	a,#___str_61
	push	acc
	mov	a,#(___str_61 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
;	main.c:350: for((buff_0_count)=0;(buff_0_count)<=256;(buff_0_count)++)
	mov	r6,#0x00
	mov	r7,#0x00
00181$:
;	main.c:352: if(buff_0_count==0)
	mov	a,r6
	orl	a,r7
	jnz	00138$
;	main.c:354: printf_tiny("0x%x>> %x",(uint16_t)(buffer_0+buff_0_count),*((buffer_0)+(buff_0_count)));
	mov	dptr,#_buffer_0
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r6
	add	a,r2
	mov	r2,a
	mov	a,r7
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	a,#___str_58
	push	acc
	mov	a,#(___str_58 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	ljmp	00182$
00138$:
;	main.c:356: else if((buff_0_count%16)!=0)
	mov	a,#0x0f
	anl	a,r6
	mov	r2,a
	mov	r3,#0x00
	orl	a,r3
	jz	00135$
;	main.c:358: printf_tiny(" %x",*((buffer_0)+(buff_0_count)));
	mov	dptr,#_buffer_0
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,r6
	add	a,r0
	mov	dpl,a
	mov	a,r7
	addc	a,r1
	mov	dph,a
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar0
	push	ar1
	mov	a,#___str_59
	push	acc
	mov	a,#(___str_59 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00182$
00135$:
;	main.c:360: else if(buff_0_count%16==0)
	mov	a,r2
	orl	a,r3
	jnz	00182$
;	main.c:362: printf_tiny("\n\r0x%x>> %x",(uint16_t)(buffer_0+buff_0_count),*((buffer_0)+(buff_0_count)));
	mov	dptr,#_buffer_0
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r6
	add	a,r2
	mov	r2,a
	mov	a,r7
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	a,#___str_60
	push	acc
	mov	a,#(___str_60 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00182$:
;	main.c:350: for((buff_0_count)=0;(buff_0_count)<=256;(buff_0_count)++)
	inc	r6
	cjne	r6,#0x00,00397$
	inc	r7
00397$:
	clr	c
	clr	a
	subb	a,r6
	mov	a,#0x01
	subb	a,r7
	jc	00398$
	ljmp	00181$
00398$:
	ljmp	00173$
00145$:
;	main.c:367: else if (input_char == '@')
	mov	a,#0x40
	cjne	a,_main_sloc0_1_0,00399$
	clr	a
	cjne	a,(_main_sloc0_1_0 + 1),00399$
	sjmp	00400$
00399$:
	ljmp	00173$
00400$:
;	main.c:369: printf_tiny("\n\rFree Buffer 0\n\r");
	push	ar5
	push	ar4
	mov	a,#___str_62
	push	acc
	mov	a,#(___str_62 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:370: free(buffer_0);
	mov	dptr,#_buffer_0
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r3,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	b,r3
	lcall	_free
;	main.c:371: printf_tiny("\n\rBuffer 1 will now become empty\n\r");
	mov	a,#___str_63
	push	acc
	mov	a,#(___str_63 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:373: printf_tiny("\n\rFreeing Buffer 1\n\r");
	mov	a,#___str_64
	push	acc
	mov	a,#(___str_64 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:374: free(buffer_1);
	mov	dptr,#_buffer_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r3,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	b,r3
	lcall	_free
;	main.c:375: printf_tiny("\n\rBuffer 1 is empty\n\r");
	mov	a,#___str_65
	push	acc
	mov	a,#(___str_65 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
;	main.c:377: for(total_buffer_count=2;(total_buffer_count)<(j+2);(total_buffer_count)++)
	mov	a,#0x02
	add	a,_main_sloc4_1_0
	mov	r6,a
	clr	a
	addc	a,(_main_sloc4_1_0 + 1)
	mov	r7,a
	mov	r2,#0x02
	mov	r3,#0x00
00184$:
	mov	ar0,r6
	mov	ar1,r7
	clr	c
	mov	a,r2
	subb	a,r0
	mov	a,r3
	subb	a,r1
	jc	00401$
	ljmp	00173$
00401$:
;	main.c:379: printf_tiny("\n\rFreeing buffer_%d\n\r",total_buffer_count);
	push	ar4
	push	ar5
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar2
	push	ar3
	mov	a,#___str_66
	push	acc
	mov	a,#(___str_66 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	main.c:380: free(buffer_n[total_buffer_count]);
	mov	a,r2
	add	a,r2
	mov	r0,a
	mov	a,r3
	rlc	a
	mov	r1,a
	mov	a,r0
	add	a,#_buffer_n
	mov	dpl,a
	mov	a,r1
	addc	a,#(_buffer_n >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	r5,#0x00
	mov	dpl,r0
	mov	dph,r1
	mov	b,r5
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_free
	pop	ar2
	pop	ar3
;	main.c:381: printf_tiny("\n\rBuffer %d freed \n\r",total_buffer_count);
	push	ar3
	push	ar2
	push	ar2
	push	ar3
	mov	a,#___str_67
	push	acc
	mov	a,#(___str_67 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:377: for(total_buffer_count=2;(total_buffer_count)<(j+2);(total_buffer_count)++)
	inc	r2
	cjne	r2,#0x00,00402$
	inc	r3
00402$:
	pop	ar5
	pop	ar4
;	main.c:396: }
	ljmp	00184$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "Enter a value divisible btw 48 and 4800 and divisible by 16"
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
	.ascii "b= %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii " c = %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii " d = %d "
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "number = %d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "valid input"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "num= %d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "not a valid input"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "Enter a value divisible btw 30 and 300"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii " q = %d "
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii " r = %d "
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii " s = %d "
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii "new value of buffer is = %d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "enter the number of buffer to delete"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "the number is %d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii "malloc for buffer0 is successful"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.ascii "starting address of buffer 0 is %x"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.ascii "malloc for buffer1 is successful"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.ascii "starting address of buffer 1 is %x"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.ascii "Enter a character"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.ascii "the input character is %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.ascii "buffer is "
	.db 0x0d
	.db 0x0a
	.ascii "%p"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.ascii "count = %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.ascii "buffer is full"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.ascii " Allocating a new buffer"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.ascii "enter a new value between 30 and 300"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.db 0x0a
	.db 0x0d
	.ascii "Memory Allocation for Buffer_%d Failed"
	.db 0x0a
	.db 0x0d
	.ascii "Press '+' to Try again"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_28:
	.db 0x0a
	.db 0x0d
	.ascii "Memory Allocation Successful for Buffer_%d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_29:
	.db 0x0a
	.db 0x0d
	.ascii "Buffer_%d allocated of size %d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_30:
	.db 0x0a
	.db 0x0d
	.ascii "Address of buffer_%d = 0x%x"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_31:
	.db 0x0a
	.db 0x0d
	.ascii "Enter a valid buffer number"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_32:
	.db 0x0a
	.db 0x0d
	.ascii "Buffer 0 cannot be deleted!"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_33:
	.db 0x0a
	.db 0x0d
	.ascii "Buffer 1>%d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_34:
	.ascii "Buffer 1 deleted"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_35:
	.db 0x0a
	.db 0x0d
	.ascii "Deleting buffer_%d........."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_36:
	.db 0x0a
	.db 0x0d
	.ascii "Buffer %d  is free"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_37:
	.db 0x0a
	.db 0x0d
	.ascii "Enter a valid buffer number"
	.db 0x0a
	.db 0x0d
	.ascii "Press '-' to delete any valid buffer"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_38:
	.ascii " HEAP REPORT of buffer_0 "
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_39:
	.db 0x0a
	.db 0x0d
	.ascii "Start Addressof buffer_0x%x"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_40:
	.db 0x0a
	.db 0x0d
	.ascii "Ending Address of buffer_0x%x"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_41:
	.db 0x0a
	.db 0x0d
	.ascii "Buffer Size of buffer_0 %d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_42:
	.db 0x0a
	.db 0x0d
	.ascii "Stored characters in buffer>>>%d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_43:
	.db 0x0a
	.db 0x0d
	.ascii "Free Spaces in buffer%d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_44:
	.db 0x0a
	.db 0x0d
	.ascii "Heap status of buffer_1"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_45:
	.db 0x0a
	.db 0x0d
	.ascii "Start Address of buffer_1 x%x"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_46:
	.db 0x0a
	.db 0x0d
	.ascii "Ending Address of buffer_1x%x"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_47:
	.db 0x0a
	.db 0x0d
	.ascii "Buffer Size%d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_48:
	.db 0x0a
	.db 0x0d
	.ascii "Storage characters in buffer>>>0"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_49:
	.db 0x0a
	.db 0x0d
	.ascii "Free Spaces in buffer>>>>>>>>>>%d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_50:
	.db 0x0a
	.db 0x0d
	.ascii "BUFFER %d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_51:
	.db 0x0a
	.db 0x0d
	.ascii "Start Address0x%x"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_52:
	.db 0x0a
	.db 0x0d
	.ascii "Ending Address0x%x"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_53:
	.db 0x0a
	.db 0x0d
	.ascii "Storage characters in buffer0"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_54:
	.db 0x0a
	.db 0x0d
	.ascii "Number of storage characters = %d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_55:
	.db 0x0a
	.db 0x0d
	.ascii "Total number of characters received = %d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_56:
	.db 0x0a
	.db 0x0d
	.ascii "Total number of buffers that were allocated since the start "
	.ascii "of the program = %d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_57:
	.db 0x0a
	.db 0x0d
	.ascii "Contents in Buffer 0"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_58:
	.ascii "0x%x>> %x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_59:
	.ascii " %x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_60:
	.db 0x0a
	.db 0x0d
	.ascii "0x%x>> %x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_61:
	.db 0x0a
	.db 0x0d
	.ascii "Contents in heap"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_62:
	.db 0x0a
	.db 0x0d
	.ascii "Free Buffer 0"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_63:
	.db 0x0a
	.db 0x0d
	.ascii "Buffer 1 will now become empty"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_64:
	.db 0x0a
	.db 0x0d
	.ascii "Freeing Buffer 1"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_65:
	.db 0x0a
	.db 0x0d
	.ascii "Buffer 1 is empty"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_66:
	.db 0x0a
	.db 0x0d
	.ascii "Freeing buffer_%d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_67:
	.db 0x0a
	.db 0x0d
	.ascii "Buffer %d freed "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__storage:
	.byte #0x00, #0x00	; 0
__xinit__total_char:
	.byte #0x00, #0x00	; 0
__xinit__i:
	.byte #0x00, #0x00	;  0
	.area CABS    (ABS,CODE)
