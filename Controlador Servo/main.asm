
SER R16
OUT DDRB, R16
loop:
	LDI R16, 50

	derecha:
		SER R17
		OUT portb, r17
		CALL delay_0_75ms

		CLR R17
		OUT portb, R17
		Call delay_19ms

		DEC R16
		BRNE derecha

		LDI R16, 50

	izquierda:
		SER R17
		OUT portb, r17
		CALL delay_2_25ms

		CLR R17
		OUT portb, R17
		Call delay_19ms

		DEC R16
		BRNE izquierda

		RJMP loop


delay_19ms:
	PUSH R18
	PUSH R19
	PUSH R20

	; Assembly code auto-generated
	; by utility from Bret Mulvey
	; Delay 304 000 cycles
	; 19ms at 16 MHz

	ldi  r18, 2
	ldi  r19, 139
	ldi  r20, 204
	L1: 
		dec  r20
		brne L1
		dec  r19
		brne L1
		dec  r18
		brne L1
		
	POP R20
	POP R19
	POP R18
	RET

delay_2_25ms:
	PUSH R18
	PUSH R19

	; Assembly code auto-generated
	; by utility from Bret Mulvey
	; Delay 40 000 cycles
	; 2ms 500us at 16 MHz

	ldi  r18, 52
	ldi  r19, 242
	L2: 
		dec  r19
		brne L2
		dec  r18
		brne L2
		nop

	POP R19
	POP R18
	RET

delay_0_75ms:
	PUSH R18
	PUSH R19

	; Assembly code auto-generated
	; by utility from Bret Mulvey
	; Delay 12 000 cycles
	; 750us at 16 MHz

	ldi  r18, 16
	ldi  r19, 149
	L3: 
		dec  r19
		brne L3
		dec  r18
		brne L3

	POP R19
	POP R18
	RET