		ORG 0000H
		LJMP MAIN
		ORG 000BH
		LJMP ISR_TIMER

MAIN: 	MOV IE, #82H ;Setting up the interrupt enable register
		MOV TMOD, #01H ; Using Timer0 mode 1
		MOV TL0, #00H ; initialize the value of 00 in lower register
		MOV TH0,#00H ; initialize the value of 00 in higher register
		MOV TCON, #10H ; set timer overflow flag

LOOP: 	SJMP LOOP

ISR_TIMER: CPL P1.2 ; complement the unused port
			CJNE R1,#05H, EXTRA_LOOP
			CPL P1.1 ; toggle the LED
			MOV TL0,#00H ; initialize the value of Lower register
			MOV TH0,#00H ; initialize the value of Lower register
			MOV TCON,#10H ; set timer overflow flag
			MOV R1,#00H ; initialize the counter by Register R1 by zero.
			SJMP ENDLOOP
EXTRA_LOOP: CJNE R1,#04H,LOOP1
			MOV TL0,#0D1H ; for measuring 40ms counter value be 34769 hex value be 87D1 the TL0 value to be D1
			MOV TH0,#87H
			MOV TCON,#10H ; set timer overflow flag
			INC R1 ; increment the counter regsiter
			SJMP ENDLOOP
LOOP1:		MOV TL0, #00H ; Loop to counter 70ms * 5 = 350ms
			MOV TH0,#00H
			MOV TCON,#10H
			INC R1 ;increment the counter regsiter
			SJMP ENDLOOP
ENDLOOP:	CPL P1.2 ; complement the unused register
			RETI ; return to interrupt
			END
