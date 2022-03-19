/* Author: Swapnil Ghonge*/
/* Course : ESD LAB 1*/


		ORG 0000H
		CLR C
		MOV A,#07H ; Moving Value #07 in Accumulator
		MOV 20H,A	; moving A to 20 h location
		MOV R2,A	
		MOV B,#03H ; Moving value 03 in register B
		MOV 22H,B ; moving A to 22h location
		MOV A,B
		JZ ERROR ; Checking for Zero and jump
		MOV A,R2
		RLC A		; multiply by value stored by a
		JC LOOP3
		RLC A		; multiply by value stored by a
		JC LOOP2
		RLC A		;	multiply by value stored by a
		MOV 21H,A
MAIN:	SUBB A,B        ;Subtracting B from A
     	JC LOOP         ;Jump 
     	INC R0          ;Incremented  R0 
     	MOV R7,A		; Move the value of A in R7
     	JMP MAIN
LOOP: 	;MOV 21H,R0      ;Move the quotient to address 21H
       	MOV 24H,R7      ;Move Remainder at address  22H
      	MOV 23H,R0      ;Move to address 23H
      	MOV 30H,#00H    ;Move 00 at location 30H
      	JMP ENDLOOP
LOOP2:	MOV 23H,A       ;Calculation exceeded 8 bit 
      	MOV 30H,#02H    ;write 0x02H at address 30H
      	JMP ENDLOOP
LOOP3: 	CLR C
       	RLC A          ;Multiply by 2
       	MOV 23H,A      
       	MOV 30H,#02H   ;Calculation exceeds 8 bit    
ERROR: 	MOV 30H,#0001H  ;IF Divisor is 0,and saving at memory location 30h
ENDLOOP: JMP ENDLOOP
			END