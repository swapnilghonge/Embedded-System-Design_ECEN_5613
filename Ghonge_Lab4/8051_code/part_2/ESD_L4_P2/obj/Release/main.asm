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
	.globl _lcdcreatechar
	.globl _send_addr_read_data
	.globl _init_uart
	.globl _init_timer0
	.globl _get_cursor_address
	.globl __sdcc_external_startup
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
	.globl _minute_two
	.globl _minute_one
	.globl _second_two
	.globl _second_one
	.globl _one_tenth_second
	.globl _counter
	.globl _lcdcreatechar_PARM_2
	.globl _send_addr_read_data_PARM_2
	.globl _lcdgotoxy_PARM_2
	.globl _save_cursor_address
	.globl _lcd_ptr
	.globl _putchar
	.globl _getchar
	.globl _delay
	.globl _lcdinit
	.globl _lcdbusywait
	.globl _lcdgotoaddr
	.globl _lcdgotoxy
	.globl _lcdputch
	.globl _lcdputstr
	.globl _lcdclear
	.globl _valid_input
	.globl _timer0_ISR
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_lcdcreatechar_sloc0_1_0:
	.ds 3
_main_sloc1_1_0:
	.ds 3
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
_main_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_lcd_ptr	=	0x8000
_save_cursor_address::
	.ds 1
_putchar_c_65536_27:
	.ds 2
_delay_milliseconds_65536_31:
	.ds 2
_lcdgotoaddr_addr_65536_41:
	.ds 1
_lcdgotoxy_PARM_2:
	.ds 1
_lcdgotoxy_row_65536_43:
	.ds 1
_lcdgotoxy_address_65536_44:
	.ds 1
_lcdputch_cc_65536_45:
	.ds 1
_lcdputstr_ss_65536_52:
	.ds 3
_valid_input_hex_val_65536_58:
	.ds 1
_send_addr_read_data_PARM_2:
	.ds 1
_send_addr_read_data_ddram_flag_65536_72:
	.ds 1
_lcdcreatechar_PARM_2:
	.ds 3
_lcdcreatechar_ccode_65536_76:
	.ds 1
_main_string_65537_82:
	.ds 3
_main_k_196613_91:
	.ds 2
_main_row_vals_196615_105:
	.ds 8
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_counter::
	.ds 2
_one_tenth_second::
	.ds 1
_second_one::
	.ds 1
_second_two::
	.ds 1
_minute_one::
	.ds 1
_minute_two::
	.ds 1
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
	reti
	.ds	7
	ljmp	_timer0_ISR
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
;	main.c:76: _sdcc_external_startup()
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
;	main.c:78: AUXR|=0x0C; //for 1kB memory
	orl	_AUXR,#0x0c
;	main.c:79: return 0;
	mov	dptr,#0x0000
;	main.c:80: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated with name '_putchar_c_65536_27'
;------------------------------------------------------------
;	main.c:95: int putchar (int c)
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_putchar_c_65536_27
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:97: while (!TI);
00101$:
	jnb	_TI,00101$
;	main.c:99: SBUF = c;
	mov	dptr,#_putchar_c_65536_27
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	_SBUF,r6
;	main.c:100: TI = 0;
;	assignBit
	clr	_TI
;	main.c:102: return c;
	mov	dpl,r6
	mov	dph,r7
;	main.c:103: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;	main.c:114: int getchar (void)
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	main.c:116: while (!RI);
00101$:
;	main.c:118: RI = 0;
;	assignBit
	jbc	_RI,00114$
	sjmp	00101$
00114$:
;	main.c:119: return SBUF;
	mov	r6,_SBUF
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
;	main.c:120: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;milliseconds              Allocated with name '_delay_milliseconds_65536_31'
;j                         Allocated with name '_delay_j_131072_33'
;i                         Allocated with name '_delay_i_262144_35'
;------------------------------------------------------------
;	main.c:128: void delay(int milliseconds){
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_delay_milliseconds_65536_31
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:129: for(int j=0;j<milliseconds;j++){
	mov	dptr,#_delay_milliseconds_65536_31
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r4,#0x00
	mov	r5,#0x00
00107$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00109$
;	main.c:130: for(int i=0;i<COUNT_ONE_MILLISECOND;i++);
	mov	r2,#0x00
	mov	r3,#0x00
00104$:
	clr	c
	mov	a,r2
	subb	a,#0x52
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00108$
	inc	r2
	cjne	r2,#0x00,00104$
	inc	r3
	sjmp	00104$
00108$:
;	main.c:129: for(int j=0;j<milliseconds;j++){
	inc	r4
	cjne	r4,#0x00,00107$
	inc	r5
	sjmp	00107$
00109$:
;	main.c:132: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_cursor_address'
;------------------------------------------------------------
;	main.c:140: uint8_t get_cursor_address(){
;	-----------------------------------------
;	 function get_cursor_address
;	-----------------------------------------
_get_cursor_address:
;	main.c:142: RS=0;
;	assignBit
	clr	_P1_4
;	main.c:143: RW=1;
;	assignBit
	setb	_P1_5
;	main.c:144: return lcd_ptr&(~0x80);
	mov	dptr,#_lcd_ptr
	movx	a,@dptr
	anl	a,#0x7f
;	main.c:145: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdinit'
;------------------------------------------------------------
;	main.c:153: void lcdinit(void){
;	-----------------------------------------
;	 function lcdinit
;	-----------------------------------------
_lcdinit:
;	main.c:155: RS=0;
;	assignBit
	clr	_P1_4
;	main.c:156: RW=0;
;	assignBit
	clr	_P1_5
;	main.c:158: delay(160);
	mov	dptr,#0x00a0
	lcall	_delay
;	main.c:160: lcd_ptr=0x30;
	mov	dptr,#_lcd_ptr
	mov	a,#0x30
	movx	@dptr,a
;	main.c:162: delay(170);
	mov	dptr,#0x00aa
	lcall	_delay
;	main.c:164: lcd_ptr=0x30;
	mov	dptr,#_lcd_ptr
	mov	a,#0x30
	movx	@dptr,a
;	main.c:166: delay(150);
	mov	dptr,#0x0096
	lcall	_delay
;	main.c:168: lcd_ptr=0x30;
	mov	dptr,#_lcd_ptr
	mov	a,#0x30
	movx	@dptr,a
;	main.c:170: lcdbusywait();
	lcall	_lcdbusywait
;	main.c:172: RS=0;
;	assignBit
	clr	_P1_4
;	main.c:173: RW=0;
;	assignBit
	clr	_P1_5
;	main.c:175: lcd_ptr=0x38;
	mov	dptr,#_lcd_ptr
	mov	a,#0x38
	movx	@dptr,a
;	main.c:177: lcdbusywait();
	lcall	_lcdbusywait
;	main.c:179: RS=0;
;	assignBit
	clr	_P1_4
;	main.c:180: RW=0;
;	assignBit
	clr	_P1_5
;	main.c:182: lcd_ptr=0x0F;
	mov	dptr,#_lcd_ptr
	mov	a,#0x0f
	movx	@dptr,a
;	main.c:184: lcdbusywait();
	lcall	_lcdbusywait
;	main.c:186: RS=0;
;	assignBit
	clr	_P1_4
;	main.c:187: RW=0;
;	assignBit
	clr	_P1_5
;	main.c:189: lcd_ptr=0x01;
	mov	dptr,#_lcd_ptr
	mov	a,#0x01
	movx	@dptr,a
;	main.c:191: lcdbusywait();
	lcall	_lcdbusywait
;	main.c:193: RS=0;
;	assignBit
	clr	_P1_4
;	main.c:194: RW=0;
;	assignBit
	clr	_P1_5
;	main.c:196: lcd_ptr=0x06;
	mov	dptr,#_lcd_ptr
	mov	a,#0x06
	movx	@dptr,a
;	main.c:198: lcdbusywait();
	lcall	_lcdbusywait
;	main.c:200: one_tenth_second='0';
	mov	dptr,#_one_tenth_second
	mov	a,#0x30
	movx	@dptr,a
;	main.c:201: second_one='0';
	mov	dptr,#_second_one
	movx	@dptr,a
;	main.c:202: second_two='0';
	mov	dptr,#_second_two
	movx	@dptr,a
;	main.c:203: minute_one='0';
	mov	dptr,#_minute_one
	movx	@dptr,a
;	main.c:204: minute_two='0';
	mov	dptr,#_minute_two
	movx	@dptr,a
;	main.c:205: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdbusywait'
;------------------------------------------------------------
;	main.c:213: void lcdbusywait(void)
;	-----------------------------------------
;	 function lcdbusywait
;	-----------------------------------------
_lcdbusywait:
;	main.c:216: RS=0;
;	assignBit
	clr	_P1_4
;	main.c:217: RW=1;
;	assignBit
	setb	_P1_5
;	main.c:219: while(lcd_ptr&0x80);
00101$:
	mov	dptr,#_lcd_ptr
	movx	a,@dptr
	jb	acc.7,00101$
;	main.c:220: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdgotoaddr'
;------------------------------------------------------------
;addr                      Allocated with name '_lcdgotoaddr_addr_65536_41'
;------------------------------------------------------------
;	main.c:228: void lcdgotoaddr(unsigned char addr){
;	-----------------------------------------
;	 function lcdgotoaddr
;	-----------------------------------------
_lcdgotoaddr:
	mov	a,dpl
	mov	dptr,#_lcdgotoaddr_addr_65536_41
	movx	@dptr,a
;	main.c:230: RS=0;
;	assignBit
	clr	_P1_4
;	main.c:231: RW=0;
;	assignBit
	clr	_P1_5
;	main.c:233: addr=addr|0x80;
	mov	dptr,#_lcdgotoaddr_addr_65536_41
	movx	a,@dptr
	orl	acc,#0x80
	movx	@dptr,a
;	main.c:235: lcd_ptr=addr;
	mov	dptr,#_lcdgotoaddr_addr_65536_41
	movx	a,@dptr
	mov	dptr,#_lcd_ptr
	movx	@dptr,a
;	main.c:237: lcdbusywait();
;	main.c:238: }
	ljmp	_lcdbusywait
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdgotoxy'
;------------------------------------------------------------
;column                    Allocated with name '_lcdgotoxy_PARM_2'
;row                       Allocated with name '_lcdgotoxy_row_65536_43'
;address                   Allocated with name '_lcdgotoxy_address_65536_44'
;------------------------------------------------------------
;	main.c:246: void lcdgotoxy(unsigned char row, unsigned char column){
;	-----------------------------------------
;	 function lcdgotoxy
;	-----------------------------------------
_lcdgotoxy:
	mov	a,dpl
	mov	dptr,#_lcdgotoxy_row_65536_43
	movx	@dptr,a
;	main.c:249: if(row=='0')
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x30,00108$
;	main.c:250: address=(0<<4);
	mov	dptr,#_lcdgotoxy_address_65536_44
	clr	a
	movx	@dptr,a
	sjmp	00109$
00108$:
;	main.c:251: else if(row=='1')
	cjne	r7,#0x31,00105$
;	main.c:252: address=(4<<4);
	mov	dptr,#_lcdgotoxy_address_65536_44
	mov	a,#0x40
	movx	@dptr,a
	sjmp	00109$
00105$:
;	main.c:253: else if(row=='2')
	cjne	r7,#0x32,00102$
;	main.c:254: address=(1<<4);
	mov	dptr,#_lcdgotoxy_address_65536_44
	mov	a,#0x10
	movx	@dptr,a
	sjmp	00109$
00102$:
;	main.c:256: address=(5<<4);
	mov	dptr,#_lcdgotoxy_address_65536_44
	mov	a,#0x50
	movx	@dptr,a
00109$:
;	main.c:258: if(row>'2' && column>='A' && column<='F')
	mov	dptr,#_lcdgotoxy_row_65536_43
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x32
	jnc	00119$
	mov	dptr,#_lcdgotoxy_PARM_2
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x41,00172$
00172$:
	jc	00119$
	mov	a,r7
	add	a,#0xff - 0x46
	jc	00119$
;	main.c:259: address|=('8'-'0');
	mov	dptr,#_lcdgotoxy_address_65536_44
	movx	a,@dptr
	orl	acc,#0x08
	movx	@dptr,a
	sjmp	00120$
00119$:
;	main.c:260: else if(column>='A' && column<='F')
	mov	dptr,#_lcdgotoxy_PARM_2
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x41,00175$
00175$:
	jc	00115$
	mov	a,r7
	add	a,#0xff - 0x46
	jc	00115$
;	main.c:261: address|=(column-'7');
	mov	ar6,r7
	mov	a,r6
	add	a,#0xc9
	mov	r6,a
	mov	dptr,#_lcdgotoxy_address_65536_44
	movx	a,@dptr
	orl	a,r6
	movx	@dptr,a
	sjmp	00120$
00115$:
;	main.c:262: else if(column>='0' && column<='9')
	cjne	r7,#0x30,00178$
00178$:
	jc	00111$
	mov	a,r7
	add	a,#0xff - 0x39
	jc	00111$
;	main.c:263: address|=(column-'0');
	mov	a,r7
	add	a,#0xd0
	mov	r7,a
	mov	dptr,#_lcdgotoxy_address_65536_44
	movx	a,@dptr
	orl	a,r7
	movx	@dptr,a
	sjmp	00120$
00111$:
;	main.c:265: address|=('8'-48);
	mov	dptr,#_lcdgotoxy_address_65536_44
	movx	a,@dptr
	orl	acc,#0x08
	movx	@dptr,a
00120$:
;	main.c:267: lcdgotoaddr(address);
	mov	dptr,#_lcdgotoxy_address_65536_44
	movx	a,@dptr
	mov	dpl,a
	lcall	_lcdgotoaddr
;	main.c:269: lcdbusywait();
;	main.c:270: }
	ljmp	_lcdbusywait
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdputch'
;------------------------------------------------------------
;cc                        Allocated with name '_lcdputch_cc_65536_45'
;------------------------------------------------------------
;	main.c:278: void lcdputch(char cc){
;	-----------------------------------------
;	 function lcdputch
;	-----------------------------------------
_lcdputch:
	mov	a,dpl
	mov	dptr,#_lcdputch_cc_65536_45
	movx	@dptr,a
;	main.c:279: if(get_cursor_address()==0x0F){
	lcall	_get_cursor_address
	mov	r7,dpl
	cjne	r7,#0x0f,00111$
;	main.c:281: RS=1;
;	assignBit
	setb	_P1_4
;	main.c:282: RW=0;
;	assignBit
	clr	_P1_5
;	main.c:285: lcd_ptr=cc;
	mov	dptr,#_lcdputch_cc_65536_45
	movx	a,@dptr
	mov	dptr,#_lcd_ptr
	movx	@dptr,a
;	main.c:287: lcdbusywait();
	lcall	_lcdbusywait
;	main.c:289: lcdgotoxy('1','0');
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,#0x30
	movx	@dptr,a
	mov	dpl,#0x31
	ljmp	_lcdgotoxy
00111$:
;	main.c:291: else if(get_cursor_address()==0x4F){
	lcall	_get_cursor_address
	mov	r7,dpl
	cjne	r7,#0x4f,00108$
;	main.c:293: RS=1;
;	assignBit
	setb	_P1_4
;	main.c:294: RW=0;
;	assignBit
	clr	_P1_5
;	main.c:297: lcd_ptr=cc;
	mov	dptr,#_lcdputch_cc_65536_45
	movx	a,@dptr
	mov	dptr,#_lcd_ptr
	movx	@dptr,a
;	main.c:299: lcdbusywait();
	lcall	_lcdbusywait
;	main.c:301: lcdgotoxy('2','0');
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,#0x30
	movx	@dptr,a
	mov	dpl,#0x32
	ljmp	_lcdgotoxy
00108$:
;	main.c:303: else if(get_cursor_address()==0x1F){
	lcall	_get_cursor_address
	mov	r7,dpl
	cjne	r7,#0x1f,00105$
;	main.c:305: RS=1;
;	assignBit
	setb	_P1_4
;	main.c:306: RW=0;
;	assignBit
	clr	_P1_5
;	main.c:309: lcd_ptr=cc;
	mov	dptr,#_lcdputch_cc_65536_45
	movx	a,@dptr
	mov	dptr,#_lcd_ptr
	movx	@dptr,a
;	main.c:311: lcdbusywait();
	lcall	_lcdbusywait
;	main.c:313: lcdgotoxy('3','0');
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,#0x30
	movx	@dptr,a
	mov	dpl,#0x33
	ljmp	_lcdgotoxy
00105$:
;	main.c:315: else if(get_cursor_address()==0x58){
	lcall	_get_cursor_address
	mov	r7,dpl
	cjne	r7,#0x58,00102$
;	main.c:317: RS=1;
;	assignBit
	setb	_P1_4
;	main.c:318: RW=0;
;	assignBit
	clr	_P1_5
;	main.c:321: lcd_ptr=cc;
	mov	dptr,#_lcdputch_cc_65536_45
	movx	a,@dptr
	mov	dptr,#_lcd_ptr
	movx	@dptr,a
;	main.c:323: lcdbusywait();
	lcall	_lcdbusywait
;	main.c:325: lcdgotoxy('0','0');
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,#0x30
	movx	@dptr,a
	mov	dpl,#0x30
	ljmp	_lcdgotoxy
00102$:
;	main.c:329: RS=1;
;	assignBit
	setb	_P1_4
;	main.c:330: RW=0;
;	assignBit
	clr	_P1_5
;	main.c:333: lcd_ptr=cc;
	mov	dptr,#_lcdputch_cc_65536_45
	movx	a,@dptr
	mov	dptr,#_lcd_ptr
	movx	@dptr,a
;	main.c:335: lcdbusywait();
;	main.c:337: }
	ljmp	_lcdbusywait
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdputstr'
;------------------------------------------------------------
;ss                        Allocated with name '_lcdputstr_ss_65536_52'
;i                         Allocated with name '_lcdputstr_i_65536_53'
;------------------------------------------------------------
;	main.c:345: void lcdputstr(char *ss){
;	-----------------------------------------
;	 function lcdputstr
;	-----------------------------------------
_lcdputstr:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_lcdputstr_ss_65536_52
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:347: while(ss[i]!='\0'){
	mov	dptr,#_lcdputstr_ss_65536_52
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r3,#0x00
	mov	r4,#0x00
00101$:
	mov	a,r3
	add	a,r5
	mov	r0,a
	mov	a,r4
	addc	a,r6
	mov	r1,a
	mov	ar2,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r2,a
	jz	00104$
;	main.c:348: lcdputch(ss[i]);
	mov	dpl,r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_lcdputch
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:349: i++;
	inc	r3
	cjne	r3,#0x00,00101$
	inc	r4
	sjmp	00101$
00104$:
;	main.c:351: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdclear'
;------------------------------------------------------------
;	main.c:360: void lcdclear(void){
;	-----------------------------------------
;	 function lcdclear
;	-----------------------------------------
_lcdclear:
;	main.c:362: RS=0;
;	assignBit
	clr	_P1_4
;	main.c:363: RW=0;
;	assignBit
	clr	_P1_5
;	main.c:365: lcd_ptr=0x01;
	mov	dptr,#_lcd_ptr
	mov	a,#0x01
	movx	@dptr,a
;	main.c:367: lcdbusywait();
	lcall	_lcdbusywait
;	main.c:368: lcdgotoaddr(0x00);
	mov	dpl,#0x00
	lcall	_lcdgotoaddr
;	main.c:369: lcdputstr("       ");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_lcdputstr
;	main.c:370: lcdgotoaddr(0x00);
	mov	dpl,#0x00
;	main.c:371: }
	ljmp	_lcdgotoaddr
;------------------------------------------------------------
;Allocation info for local variables in function 'valid_input'
;------------------------------------------------------------
;place_ten                 Allocated with name '_valid_input_place_ten_65536_58'
;place_one                 Allocated with name '_valid_input_place_one_65536_58'
;hex_val                   Allocated with name '_valid_input_hex_val_65536_58'
;------------------------------------------------------------
;	main.c:382: unsigned char valid_input(void){
;	-----------------------------------------
;	 function valid_input
;	-----------------------------------------
_valid_input:
;	main.c:383: unsigned char place_ten=putchar(getchar());
	lcall	_getchar
	lcall	_putchar
	mov	r6,dpl
;	main.c:384: unsigned char place_one=putchar(getchar());
	push	ar6
	lcall	_getchar
	lcall	_putchar
	mov	r5,dpl
	pop	ar6
;	main.c:386: if((place_ten=='0'||place_ten=='1'||place_ten=='4'||place_ten=='5')&&(place_one>='0'&&place_one<='9')){
	clr	a
	cjne	r6,#0x30,00159$
	inc	a
00159$:
	mov	r7,a
	jnz	00116$
	cjne	r6,#0x31,00162$
	sjmp	00116$
00162$:
	cjne	r6,#0x34,00163$
	sjmp	00116$
00163$:
	cjne	r6,#0x35,00110$
00116$:
	cjne	r5,#0x30,00166$
00166$:
	jc	00110$
	mov	a,r5
	add	a,#0xff - 0x39
	jc	00110$
;	main.c:387: hex_val=(((place_ten-'0')*16)+(place_one-'0'));
	mov	ar4,r6
	mov	a,r4
	add	a,#0xd0
	swap	a
	anl	a,#0xf0
	mov	r4,a
	mov	ar3,r5
	mov	a,r3
	add	a,#0xd0
	mov	dptr,#_valid_input_hex_val_65536_58
	add	a,r4
	movx	@dptr,a
	sjmp	00111$
00110$:
;	main.c:389: else if((place_ten=='0'||place_ten=='1'||place_ten=='4'||place_ten=='5')&&(place_one>='A'&&place_one<='F')){
	mov	a,r7
	jnz	00108$
	cjne	r6,#0x31,00170$
	sjmp	00108$
00170$:
	cjne	r6,#0x34,00171$
	sjmp	00108$
00171$:
	cjne	r6,#0x35,00102$
00108$:
	cjne	r5,#0x41,00174$
00174$:
	jc	00102$
	mov	a,r5
	add	a,#0xff - 0x46
	jc	00102$
;	main.c:390: hex_val=(((place_ten-'0')*16)+(place_one-'7'));
	mov	a,r6
	add	a,#0xd0
	swap	a
	anl	a,#0xf0
	mov	r6,a
	mov	a,r5
	add	a,#0xc9
	mov	dptr,#_valid_input_hex_val_65536_58
	add	a,r6
	movx	@dptr,a
	sjmp	00111$
00102$:
;	main.c:393: printf_tiny("\n\rEnter valid input between (00 to 1F) or (40 to 58): \n\r");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:394: valid_input();
	lcall	_valid_input
00111$:
;	main.c:396: return hex_val;
	mov	dptr,#_valid_input_hex_val_65536_58
	movx	a,@dptr
;	main.c:397: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_ISR'
;------------------------------------------------------------
;	main.c:409: void timer0_ISR()__interrupt(1)
;	-----------------------------------------
;	 function timer0_ISR
;	-----------------------------------------
_timer0_ISR:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	main.c:412: save_cursor_address=get_cursor_address();
	lcall	_get_cursor_address
	mov	a,dpl
	mov	dptr,#_save_cursor_address
	movx	@dptr,a
;	main.c:413: if(counter==ONE_TENTH_SECOND){
	mov	dptr,#_counter
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x1e,00102$
	cjne	r7,#0x00,00102$
;	main.c:414: P1_1=P1_1^1;
	cpl	_P1_1
;	main.c:415: counter=0;
	mov	dptr,#_counter
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:416: one_tenth_second++;
	mov	dptr,#_one_tenth_second
	movx	a,@dptr
	inc	a
	movx	@dptr,a
00102$:
;	main.c:418: counter++;
	mov	dptr,#_counter
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_counter
	mov	a,#0x01
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:419: TF0=0;
;	assignBit
	clr	_TF0
;	main.c:420: TL0=0x00;
	mov	_TL0,#0x00
;	main.c:421: TH0=0xF0;
	mov	_TH0,#0xf0
;	main.c:422: lcdgotoaddr(0x59);
	mov	dpl,#0x59
	lcall	_lcdgotoaddr
;	main.c:423: lcdputch(minute_two);
	mov	dptr,#_minute_two
	movx	a,@dptr
	mov	dpl,a
	lcall	_lcdputch
;	main.c:424: lcdputch(minute_one);
	mov	dptr,#_minute_one
	movx	a,@dptr
	mov	dpl,a
	lcall	_lcdputch
;	main.c:425: lcdputch(':');
	mov	dpl,#0x3a
	lcall	_lcdputch
;	main.c:426: lcdputch(second_two);
	mov	dptr,#_second_two
	movx	a,@dptr
	mov	dpl,a
	lcall	_lcdputch
;	main.c:427: lcdputch(second_one);
	mov	dptr,#_second_one
	movx	a,@dptr
	mov	dpl,a
	lcall	_lcdputch
;	main.c:428: lcdputch('.');
	mov	dpl,#0x2e
	lcall	_lcdputch
;	main.c:429: lcdputch(one_tenth_second);
	mov	dptr,#_one_tenth_second
	movx	a,@dptr
	mov	dpl,a
	lcall	_lcdputch
;	main.c:431: if(one_tenth_second==':'){
	mov	dptr,#_one_tenth_second
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x3a,00112$
;	main.c:432: one_tenth_second='0';
	mov	dptr,#_one_tenth_second
	mov	a,#0x30
	movx	@dptr,a
;	main.c:433: second_one++;
	mov	dptr,#_second_one
	movx	a,@dptr
	inc	a
	movx	@dptr,a
;	main.c:434: if(second_one==':'){
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x3a,00112$
;	main.c:435: second_one='0';
	mov	dptr,#_second_one
	mov	a,#0x30
	movx	@dptr,a
;	main.c:436: second_two++;
	mov	dptr,#_second_two
	movx	a,@dptr
	inc	a
	movx	@dptr,a
;	main.c:437: if(second_two=='6'){
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x36,00112$
;	main.c:438: second_two='0';
	mov	dptr,#_second_two
	mov	a,#0x30
	movx	@dptr,a
;	main.c:439: minute_one++;
	mov	dptr,#_minute_one
	movx	a,@dptr
	inc	a
	movx	@dptr,a
;	main.c:440: if(minute_one==':'){
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x3a,00112$
;	main.c:441: minute_one='0';
	mov	dptr,#_minute_one
	mov	a,#0x30
	movx	@dptr,a
;	main.c:442: minute_two++;
	mov	dptr,#_minute_two
	movx	a,@dptr
	inc	a
	movx	@dptr,a
;	main.c:443: if(minute_two=='6'){
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x36,00112$
;	main.c:444: minute_two='0';
	mov	dptr,#_minute_two
	mov	a,#0x30
	movx	@dptr,a
00112$:
;	main.c:450: lcdgotoaddr(save_cursor_address);
	mov	dptr,#_save_cursor_address
	movx	a,@dptr
	mov	dpl,a
	lcall	_lcdgotoaddr
;	main.c:451: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'init_timer0'
;------------------------------------------------------------
;	main.c:463: void init_timer0(void){
;	-----------------------------------------
;	 function init_timer0
;	-----------------------------------------
_init_timer0:
;	main.c:464: TCON=TCON&(~0x30);
	anl	_TCON,#0xcf
;	main.c:465: TMOD=0x01;
	mov	_TMOD,#0x01
;	main.c:466: TL0=0x00;
	mov	_TL0,#0x00
;	main.c:467: TH0=0xF0;
	mov	_TH0,#0xf0
;	main.c:468: IE=0x82;
	mov	_IE,#0x82
;	main.c:469: TCON|=0x10;
	orl	_TCON,#0x10
;	main.c:471: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_uart'
;------------------------------------------------------------
;	main.c:474: void init_uart(){
;	-----------------------------------------
;	 function init_uart
;	-----------------------------------------
_init_uart:
;	main.c:475: SCON=0x52;
	mov	_SCON,#0x52
;	main.c:476: TMOD=0x20;
	mov	_TMOD,#0x20
;	main.c:477: TH1=0xFD;
	mov	_TH1,#0xfd
;	main.c:478: TR1=1;
;	assignBit
	setb	_TR1
;	main.c:479: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_addr_read_data'
;------------------------------------------------------------
;address                   Allocated with name '_send_addr_read_data_PARM_2'
;ddram_flag                Allocated with name '_send_addr_read_data_ddram_flag_65536_72'
;------------------------------------------------------------
;	main.c:482: uint8_t send_addr_read_data(uint8_t ddram_flag, uint8_t address){
;	-----------------------------------------
;	 function send_addr_read_data
;	-----------------------------------------
_send_addr_read_data:
	mov	a,dpl
	mov	dptr,#_send_addr_read_data_ddram_flag_65536_72
	movx	@dptr,a
;	main.c:484: if(ddram_flag==1){
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00102$
;	main.c:485: lcdgotoaddr(address);
	mov	dptr,#_send_addr_read_data_PARM_2
	movx	a,@dptr
	mov	dpl,a
	lcall	_lcdgotoaddr
	sjmp	00103$
00102$:
;	main.c:488: RS=0;
;	assignBit
	clr	_P1_4
;	main.c:489: RW=0;
;	assignBit
	clr	_P1_5
;	main.c:490: lcd_ptr=address;
	mov	dptr,#_send_addr_read_data_PARM_2
	movx	a,@dptr
	mov	dptr,#_lcd_ptr
	movx	@dptr,a
;	main.c:491: lcdbusywait();
	lcall	_lcdbusywait
00103$:
;	main.c:493: RS=1;
;	assignBit
	setb	_P1_4
;	main.c:494: RW=1;
;	assignBit
	setb	_P1_5
;	main.c:495: return lcd_ptr;
	mov	dptr,#_lcd_ptr
	movx	a,@dptr
;	main.c:496: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdcreatechar'
;------------------------------------------------------------
;sloc0                     Allocated with name '_lcdcreatechar_sloc0_1_0'
;row_vals                  Allocated with name '_lcdcreatechar_PARM_2'
;ccode                     Allocated with name '_lcdcreatechar_ccode_65536_76'
;cchar_num                 Allocated with name '_lcdcreatechar_cchar_num_65536_77'
;m                         Allocated with name '_lcdcreatechar_m_131072_78'
;------------------------------------------------------------
;	main.c:498: void lcdcreatechar(unsigned char ccode, unsigned char row_vals[]){
;	-----------------------------------------
;	 function lcdcreatechar
;	-----------------------------------------
_lcdcreatechar:
	mov	a,dpl
	mov	dptr,#_lcdcreatechar_ccode_65536_76
	movx	@dptr,a
;	main.c:499: unsigned char cchar_num=(0x40|((ccode-'0')<<3));
	movx	a,@dptr
	add	a,#0xd0
	swap	a
	rr	a
	anl	a,#0xf8
	mov	r7,a
	orl	ar7,#0x40
;	main.c:500: printf("\n\rcustom character number %x",cchar_num);
	mov	ar5,r7
	mov	r6,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar5
	push	ar6
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
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
;	main.c:501: for(int m=0;m<8;m++){
	mov	dptr,#_lcdcreatechar_PARM_2
	movx	a,@dptr
	mov	_lcdcreatechar_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_lcdcreatechar_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_lcdcreatechar_sloc0_1_0 + 2),a
	mov	r0,#0x00
	mov	r1,#0x00
00103$:
	clr	c
	mov	a,r0
	subb	a,#0x08
	mov	a,r1
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00101$
;	main.c:502: RS=0;
;	assignBit
	clr	_P1_4
;	main.c:503: RW=0;
;	assignBit
	clr	_P1_5
;	main.c:504: lcd_ptr=cchar_num+m;
	mov	ar4,r0
	mov	ar3,r7
	mov	dptr,#_lcd_ptr
	mov	a,r4
	add	a,r3
	movx	@dptr,a
;	main.c:505: printf("\n\rlcd_ptr= %x",cchar_num+m);
	mov	a,r0
	add	a,r5
	mov	r3,a
	mov	a,r1
	addc	a,r6
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	push	ar1
	push	ar0
	push	ar3
	push	ar4
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	main.c:506: lcdbusywait();
	lcall	_lcdbusywait
	pop	ar0
	pop	ar1
;	main.c:507: RS=1;
;	assignBit
	setb	_P1_4
;	main.c:508: RW=0;
;	assignBit
	clr	_P1_5
;	main.c:509: lcd_ptr=row_vals[m];
	mov	a,r0
	add	a,_lcdcreatechar_sloc0_1_0
	mov	r2,a
	mov	a,r1
	addc	a,(_lcdcreatechar_sloc0_1_0 + 1)
	mov	r3,a
	mov	r4,(_lcdcreatechar_sloc0_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dptr,#_lcd_ptr
	movx	@dptr,a
;	main.c:510: lcdbusywait();
	push	ar1
	push	ar0
	lcall	_lcdbusywait
	pop	ar0
	pop	ar1
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:501: for(int m=0;m<8;m++){
	inc	r0
	cjne	r0,#0x00,00103$
	inc	r1
	sjmp	00103$
00101$:
;	main.c:512: lcdgotoxy('0','4');
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,#0x34
	movx	@dptr,a
	mov	dpl,#0x30
	lcall	_lcdgotoxy
;	main.c:513: lcdputch(0);
	mov	dpl,#0x00
;	main.c:514: }
	ljmp	_lcdputch
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;sloc1                     Allocated with name '_main_sloc1_1_0'
;input                     Allocated with name '_main_input_65537_82'
;lcd_input                 Allocated with name '_main_lcd_input_65537_82'
;ch                        Allocated with name '_main_ch_65537_82'
;string                    Allocated with name '_main_string_65537_82'
;i                         Allocated with name '_main_i_65537_82'
;j                         Allocated with name '_main_j_65537_82'
;k                         Allocated with name '_main_k_65537_82'
;goto_address              Allocated with name '_main_goto_address_196610_86'
;row                       Allocated with name '_main_row_196611_88'
;column                    Allocated with name '_main_column_196612_89'
;k                         Allocated with name '_main_k_196613_91'
;ccode                     Allocated with name '_main_ccode_196614_104'
;row_vals                  Allocated with name '_main_row_vals_196615_105'
;------------------------------------------------------------
;	main.c:516: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:518: init_uart();
	lcall	_init_uart
;	main.c:524: lcdinit();
	lcall	_lcdinit
;	main.c:525: init_timer0();
	lcall	_init_timer0
;	main.c:526: while(1){
00136$:
;	main.c:530: printf_tiny("\n\n\rPress # for to see the menu");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:531: printf_tiny("\n\n\rEnter a choice:    ");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:534: input=getchar();
	lcall	_getchar
	mov	r6,dpl
;	main.c:535: printf_tiny("%c\n\r",input);
	mov	ar5,r6
	mov	r7,#0x00
	push	ar6
	push	ar5
	push	ar7
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
;	main.c:536: switch(input){
	cjne	r6,#0x23,00253$
	sjmp	00101$
00253$:
	cjne	r6,#0x42,00254$
	ljmp	00115$
00254$:
	cjne	r6,#0x43,00255$
	ljmp	00104$
00255$:
	cjne	r6,#0x45,00256$
	ljmp	00113$
00256$:
	cjne	r6,#0x48,00257$
	ljmp	00116$
00257$:
	cjne	r6,#0x4a,00258$
	ljmp	00102$
00258$:
	cjne	r6,#0x4f,00259$
	ljmp	00112$
00259$:
	cjne	r6,#0x51,00260$
	ljmp	00131$
00260$:
	cjne	r6,#0x52,00261$
	ljmp	00114$
00261$:
	cjne	r6,#0x53,00262$
	ljmp	00105$
00262$:
	cjne	r6,#0x58,00263$
	ljmp	00103$
00263$:
	ljmp	00136$
;	main.c:537: case '#':
00101$:
;	main.c:553: }
	setb	_main_sloc0_1_0
	jbc	ea,00264$
	clr	_main_sloc0_1_0
00264$:
;	main.c:541: printf_tiny("*************ESD LAB 4 Part 2 Menu***************");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:544: printf_tiny("\n\rPress C to print desired character on LCD\n\r");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:545: printf_tiny("\n\rPress S to print desired string on LCD\n\r");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:546: printf_tiny("\n\rPress O to clear LCD\n\r");
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:547: printf_tiny("\n\rPress E to stop the elapsed time clock\n\r");
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:548: printf_tiny("\n\rPress R to restart the clock\n\r");
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:549: printf_tiny("\n\rPress B to reset the clock back to '00:00.0'\n\r");
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:550: printf_tiny("\n\r**************************************************\n\r");
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	mov	c,_main_sloc0_1_0
	mov	ea,c
;	main.c:554: break;
	ljmp	00136$
;	main.c:555: case 'J':
00102$:
;	main.c:558: printf_tiny("\n\rEnter address without prefix '0x': ");
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:559: unsigned char goto_address=valid_input();
	lcall	_valid_input
	mov	r7,dpl
;	main.c:562: }
	setb	_main_sloc0_1_0
	jbc	ea,00265$
	clr	_main_sloc0_1_0
00265$:
;	main.c:561: lcdgotoaddr(goto_address);
	mov	dpl,r7
	lcall	_lcdgotoaddr
	mov	c,_main_sloc0_1_0
	mov	ea,c
;	main.c:563: break;
	ljmp	00136$
;	main.c:564: case 'X':
00103$:
;	main.c:567: printf_tiny("\n\rEnter row: ");
	mov	a,#___str_16
	push	acc
	mov	a,#(___str_16 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:568: unsigned char row=putchar(getchar());
	lcall	_getchar
	lcall	_putchar
	mov	r6,dpl
;	main.c:569: printf_tiny("\n\rEnter column: ");
	push	ar6
	mov	a,#___str_17
	push	acc
	mov	a,#(___str_17 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:570: unsigned char column=putchar(getchar());
	lcall	_getchar
	lcall	_putchar
	mov	r5,dpl
	pop	ar6
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,r5
	movx	@dptr,a
;	main.c:571: lcdgotoxy(row,column);
	mov	dpl,r6
	lcall	_lcdgotoxy
;	main.c:573: break;
	ljmp	00136$
;	main.c:574: case 'C':
00104$:
;	main.c:577: printf_tiny("\n\rEnter character to print on LCD: ");
	mov	a,#___str_18
	push	acc
	mov	a,#(___str_18 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:578: lcd_input=getchar();
	lcall	_getchar
	mov	r6,dpl
;	main.c:579: printf_tiny("%c\n\r",lcd_input);
	mov	ar5,r6
	mov	r7,#0x00
	push	ar6
	push	ar5
	push	ar7
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
;	main.c:582: }
	setb	_main_sloc0_1_0
	jbc	ea,00266$
	clr	_main_sloc0_1_0
00266$:
;	main.c:581: lcdputch(lcd_input);
	mov	dpl,r6
	lcall	_lcdputch
	mov	c,_main_sloc0_1_0
	mov	ea,c
;	main.c:583: break;
	ljmp	00136$
;	main.c:584: case 'S':
00105$:
;	main.c:587: printf_tiny("\n\rEnter string to print on LCD: ");
	mov	a,#___str_19
	push	acc
	mov	a,#(___str_19 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:588: int k=1;
	mov	dptr,#_main_k_196613_91
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	main.c:590: while(k){
	mov	dptr,#_main_string_65537_82
	movx	a,@dptr
	mov	_main_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_main_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_main_sloc1_1_0 + 2),a
	mov	r3,#0x00
	mov	r4,#0x00
00109$:
	mov	dptr,#_main_k_196613_91
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00111$
;	main.c:591: ch=getchar();
	push	ar4
	push	ar3
	lcall	_getchar
	mov	r1,dpl
;	main.c:593: printf_tiny("%c",ch);
	mov	ar0,r1
	mov	r2,#0x00
	push	ar1
	push	ar0
	push	ar2
	mov	a,#___str_20
	push	acc
	mov	a,#(___str_20 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar1
	pop	ar3
	pop	ar4
;	main.c:594: if(ch==0xD)
	cjne	r1,#0x0d,00107$
;	main.c:595: k=0;
	mov	dptr,#_main_k_196613_91
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	sjmp	00109$
00107$:
;	main.c:597: *(string+i)=ch;
	mov	a,r3
	add	a,_main_sloc1_1_0
	mov	r0,a
	mov	a,r4
	addc	a,(_main_sloc1_1_0 + 1)
	mov	r2,a
	mov	r7,(_main_sloc1_1_0 + 2)
	mov	dpl,r0
	mov	dph,r2
	mov	b,r7
	mov	a,r1
	lcall	__gptrput
;	main.c:598: i++;
	inc	r3
	cjne	r3,#0x00,00109$
	inc	r4
	sjmp	00109$
00111$:
;	main.c:601: *(string+i)='\0';
	mov	a,r3
	add	a,_main_sloc1_1_0
	mov	r3,a
	mov	a,r4
	addc	a,(_main_sloc1_1_0 + 1)
	mov	r4,a
	mov	r7,(_main_sloc1_1_0 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	clr	a
	lcall	__gptrput
;	main.c:604: }
	setb	_main_sloc0_1_0
	jbc	ea,00271$
	clr	_main_sloc0_1_0
00271$:
;	main.c:603: lcdputstr(string);
	mov	dpl,_main_sloc1_1_0
	mov	dph,(_main_sloc1_1_0 + 1)
	mov	b,(_main_sloc1_1_0 + 2)
	lcall	_lcdputstr
	mov	c,_main_sloc0_1_0
	mov	ea,c
;	main.c:605: break;
	ljmp	00136$
;	main.c:606: case 'O':
00112$:
;	main.c:610: }
	setb	_main_sloc0_1_0
	jbc	ea,00272$
	clr	_main_sloc0_1_0
00272$:
;	main.c:609: lcdclear();
	lcall	_lcdclear
	mov	c,_main_sloc0_1_0
	mov	ea,c
;	main.c:611: break;
	ljmp	00136$
;	main.c:612: case 'E':
00113$:
;	main.c:614: TCON&=~(0x10);
	anl	_TCON,#0xef
;	main.c:615: break;
	ljmp	00136$
;	main.c:616: case 'R':
00114$:
;	main.c:618: TCON|=0x10;
	orl	_TCON,#0x10
;	main.c:619: break;
	ljmp	00136$
;	main.c:620: case 'B':
00115$:
;	main.c:638: }
	setb	_main_sloc0_1_0
	jbc	ea,00273$
	clr	_main_sloc0_1_0
00273$:
;	main.c:623: save_cursor_address=get_cursor_address();
	lcall	_get_cursor_address
	mov	a,dpl
	mov	dptr,#_save_cursor_address
	movx	@dptr,a
;	main.c:624: one_tenth_second='0';
	mov	dptr,#_one_tenth_second
	mov	a,#0x30
	movx	@dptr,a
;	main.c:625: second_one='0';
	mov	dptr,#_second_one
	movx	@dptr,a
;	main.c:626: second_two='0';
	mov	dptr,#_second_two
	movx	@dptr,a
;	main.c:627: minute_one='0';
	mov	dptr,#_minute_one
	movx	@dptr,a
;	main.c:628: minute_two='0';
	mov	dptr,#_minute_two
	movx	@dptr,a
;	main.c:629: lcdgotoaddr(0x59);
	mov	dpl,#0x59
	lcall	_lcdgotoaddr
;	main.c:630: lcdputch(minute_two);
	mov	dptr,#_minute_two
	movx	a,@dptr
	mov	dpl,a
	lcall	_lcdputch
;	main.c:631: lcdputch(minute_one);
	mov	dptr,#_minute_one
	movx	a,@dptr
	mov	dpl,a
	lcall	_lcdputch
;	main.c:632: lcdputch(':');
	mov	dpl,#0x3a
	lcall	_lcdputch
;	main.c:633: lcdputch(second_two);
	mov	dptr,#_second_two
	movx	a,@dptr
	mov	dpl,a
	lcall	_lcdputch
;	main.c:634: lcdputch(second_one);
	mov	dptr,#_second_one
	movx	a,@dptr
	mov	dpl,a
	lcall	_lcdputch
;	main.c:635: lcdputch('.');
	mov	dpl,#0x2e
	lcall	_lcdputch
;	main.c:636: lcdputch(one_tenth_second);
	mov	dptr,#_one_tenth_second
	movx	a,@dptr
	mov	dpl,a
	lcall	_lcdputch
;	main.c:637: lcdgotoaddr(save_cursor_address);
	mov	dptr,#_save_cursor_address
	movx	a,@dptr
	mov	dpl,a
	lcall	_lcdgotoaddr
	mov	c,_main_sloc0_1_0
	mov	ea,c
;	main.c:639: break;
	ljmp	00136$
;	main.c:641: case 'H':
00116$:
;	main.c:670: }
	setb	_main_sloc0_1_0
	jbc	ea,00274$
	clr	_main_sloc0_1_0
00274$:
;	main.c:644: save_cursor_address=get_cursor_address();
	lcall	_get_cursor_address
	mov	a,dpl
	mov	dptr,#_save_cursor_address
	movx	@dptr,a
;	main.c:645: printf_tiny("\n\rPrinting Hexdump of DDRAM\n\r");
	mov	a,#___str_21
	push	acc
	mov	a,#(___str_21 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:646: for(k=0x00;k<=0x5F;k++){
	mov	dptr,#_main_k_196613_91
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00138$:
;	main.c:647: if(k==0x10)
	mov	dptr,#_main_k_196613_91
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x10,00123$
	cjne	r7,#0x00,00123$
;	main.c:648: k=0x40;
	mov	dptr,#_main_k_196613_91
	mov	a,#0x40
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	sjmp	00124$
00123$:
;	main.c:649: else if(k==0x50)
	cjne	r6,#0x50,00120$
	cjne	r7,#0x00,00120$
;	main.c:650: k=0x10;
	mov	dptr,#_main_k_196613_91
	mov	a,#0x10
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	sjmp	00124$
00120$:
;	main.c:651: else if(k==0x20)
	cjne	r6,#0x20,00124$
	cjne	r7,#0x00,00124$
;	main.c:652: k=0x50;
	mov	dptr,#_main_k_196613_91
	mov	a,#0x50
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
00124$:
;	main.c:654: if(!(k%16)){
	mov	dptr,#_main_k_196613_91
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x10
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00126$
;	main.c:655: printf("\n\r0x%02x: ",k);
	push	ar6
	push	ar7
	mov	a,#___str_22
	push	acc
	mov	a,#(___str_22 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
00126$:
;	main.c:657: printf("0x%02x ",send_addr_read_data(1,k));
	mov	dptr,#_main_k_196613_91
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_send_addr_read_data_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dpl,#0x01
	push	ar7
	push	ar6
	lcall	_send_addr_read_data
	mov	r5,dpl
	mov	r4,#0x00
	push	ar5
	push	ar4
	mov	a,#___str_23
	push	acc
	mov	a,#(___str_23 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:646: for(k=0x00;k<=0x5F;k++){
	mov	dptr,#_main_k_196613_91
	mov	a,#0x01
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_main_k_196613_91
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,#0x5f
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00282$
	ljmp	00138$
00282$:
;	main.c:659: printf("\n\r");
	mov	a,#___str_24
	push	acc
	mov	a,#(___str_24 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:661: printf_tiny("\n\rPrinting Hexdump of CGRAM\n\r");
	mov	a,#___str_25
	push	acc
	mov	a,#(___str_25 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:662: for(k=0x40;k<=0x7F;k++){
	mov	r6,#0x40
	mov	r7,#0x00
00140$:
;	main.c:663: if(!(k%16)){
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x10
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00129$
;	main.c:664: printf("\n\r0x%02x: ",k);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_22
	push	acc
	mov	a,#(___str_22 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
00129$:
;	main.c:666: printf("0x%02x ",send_addr_read_data(0,k));
	mov	dptr,#_send_addr_read_data_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	_send_addr_read_data
	mov	r5,dpl
	mov	r4,#0x00
	push	ar5
	push	ar4
	mov	a,#___str_23
	push	acc
	mov	a,#(___str_23 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:662: for(k=0x40;k<=0x7F;k++){
	inc	r6
	cjne	r6,#0x00,00284$
	inc	r7
00284$:
	clr	c
	mov	a,#0x7f
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00285$
	ljmp	00140$
00285$:
;	main.c:668: printf("\n\r");
	mov	a,#___str_24
	push	acc
	mov	a,#(___str_24 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:669: lcdgotoaddr(save_cursor_address);
	mov	dptr,#_save_cursor_address
	movx	a,@dptr
	mov	dpl,a
	lcall	_lcdgotoaddr
	mov	c,_main_sloc0_1_0
	mov	ea,c
;	main.c:671: break;
	ljmp	00136$
;	main.c:672: case 'Q':
00131$:
;	main.c:674: save_cursor_address=get_cursor_address();
	lcall	_get_cursor_address
	mov	a,dpl
	mov	dptr,#_save_cursor_address
	movx	@dptr,a
;	main.c:675: printf_tiny("\n\rCreate your own custom character\n\r");
	mov	a,#___str_26
	push	acc
	mov	a,#(___str_26 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:676: printf_tiny("Enter character code: ");
	mov	a,#___str_27
	push	acc
	mov	a,#(___str_27 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:677: unsigned char ccode=getchar();
	lcall	_getchar
	mov	r6,dpl
;	main.c:678: printf_tiny("%c\n\r",ccode);
	mov	ar5,r6
	mov	r7,#0x00
	push	ar6
	push	ar5
	push	ar7
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:680: printf_tiny("\n\rEnter row values: ");
	mov	a,#___str_28
	push	acc
	mov	a,#(___str_28 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar6
;	main.c:681: for(j=0;j<8;j++){
	mov	r5,#0x00
	mov	r7,#0x00
00142$:
;	main.c:682: printf("\n\rEnter no. %d row value: ",j);
	push	ar7
	push	ar6
	push	ar5
	push	ar5
	push	ar7
	mov	a,#___str_29
	push	acc
	mov	a,#(___str_29 >> 8)
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
;	main.c:683: row_vals[j]=valid_input();
	mov	a,r5
	add	a,#_main_row_vals_196615_105
	mov	r3,a
	mov	a,r7
	addc	a,#(_main_row_vals_196615_105 >> 8)
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_valid_input
	mov	r2,dpl
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r3
	mov	dph,r4
	mov	a,r2
	movx	@dptr,a
;	main.c:681: for(j=0;j<8;j++){
	inc	r5
	cjne	r5,#0x00,00286$
	inc	r7
00286$:
	clr	c
	mov	a,r5
	subb	a,#0x08
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00142$
;	main.c:688: }
	setb	_main_sloc0_1_0
	jbc	ea,00288$
	clr	_main_sloc0_1_0
00288$:
;	main.c:686: lcdcreatechar(ccode,row_vals);
	mov	dptr,#_lcdcreatechar_PARM_2
	mov	a,#_main_row_vals_196615_105
	movx	@dptr,a
	mov	a,#(_main_row_vals_196615_105 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	lcall	_lcdcreatechar
;	main.c:687: lcdgotoaddr(save_cursor_address);
	mov	dptr,#_save_cursor_address
	movx	a,@dptr
	mov	dpl,a
	lcall	_lcdgotoaddr
	mov	c,_main_sloc0_1_0
	mov	ea,c
;	main.c:689: break;
;	main.c:692: }
;	main.c:695: }
	ljmp	00136$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "       "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.db 0x0a
	.db 0x0d
	.ascii "Enter valid input between (00 to 1F) or (40 to 58): "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0x0a
	.db 0x0d
	.ascii "custom character number %x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0x0a
	.db 0x0d
	.ascii "lcd_ptr= %x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.db 0x0a
	.db 0x0a
	.db 0x0d
	.ascii "Press # for to see the menu"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.db 0x0a
	.db 0x0a
	.db 0x0d
	.ascii "Enter a choice:    "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "%c"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "*************ESD LAB 4 Part 2 Menu***************"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.db 0x0a
	.db 0x0d
	.ascii "Press C to print desired character on LCD"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.db 0x0a
	.db 0x0d
	.ascii "Press S to print desired string on LCD"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.db 0x0a
	.db 0x0d
	.ascii "Press O to clear LCD"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.db 0x0a
	.db 0x0d
	.ascii "Press E to stop the elapsed time clock"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.db 0x0a
	.db 0x0d
	.ascii "Press R to restart the clock"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.db 0x0a
	.db 0x0d
	.ascii "Press B to reset the clock back to '00:00.0'"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.db 0x0a
	.db 0x0d
	.ascii "**************************************************"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.db 0x0a
	.db 0x0d
	.ascii "Enter address without prefix '0x': "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.db 0x0a
	.db 0x0d
	.ascii "Enter row: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.db 0x0a
	.db 0x0d
	.ascii "Enter column: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.db 0x0a
	.db 0x0d
	.ascii "Enter character to print on LCD: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.db 0x0a
	.db 0x0d
	.ascii "Enter string to print on LCD: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.ascii "%c"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.db 0x0a
	.db 0x0d
	.ascii "Printing Hexdump of DDRAM"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.db 0x0a
	.db 0x0d
	.ascii "0x%02x: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.ascii "0x%02x "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.db 0x0a
	.db 0x0d
	.ascii "Printing Hexdump of CGRAM"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.db 0x0a
	.db 0x0d
	.ascii "Create your own custom character"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.ascii "Enter character code: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_28:
	.db 0x0a
	.db 0x0d
	.ascii "Enter row values: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_29:
	.db 0x0a
	.db 0x0d
	.ascii "Enter no. %d row value: "
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__counter:
	.byte #0x00, #0x00	;  0
__xinit__one_tenth_second:
	.db #0x30	; 48	'0'
__xinit__second_one:
	.db #0x30	; 48	'0'
__xinit__second_two:
	.db #0x30	; 48	'0'
__xinit__minute_one:
	.db #0x30	; 48	'0'
__xinit__minute_two:
	.db #0x30	; 48	'0'
	.area CABS    (ABS,CODE)
