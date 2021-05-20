
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
		dec R16
		rjmp derecha

		LDI R16, 50

	izquierda:
		SER R17
		OUT portb, r17
		CALL delay_2_25ms
		CLR R17
		OUT portb, R17
		Call delay_19ms
		dec R16
		rjmp izquierda

		rjmp loop


delay_19ms:
	push R18
	push R19
	; Assembly code auto-generated
	; by utility from Bret Mulvey
	; Delay 152 000 cycles
	; 19ms at 8.0 MHz

		ldi  r18, 198
		ldi  r19, 102
	L1: dec  r19
		brne L1
		dec  r18
		brne L1
		nop

		pop R19
		pop R18
		RET

delay_2_25ms:
	push R18
	push R19
; Assembly code auto-generated
; by utility from Bret Mulvey
; Delay 18 000 cycles
; 2ms 250us at 8.0 MHz

    ldi  r18, 24
    ldi  r19, 95
L2: dec  r19
    brne L2
    dec  r18
    brne L2
    rjmp PC+1

	pop R19
	pop R18
	RET

delay_0_75ms:
push R18
push R19
; Assembly code auto-generated
; by utility from Bret Mulvey
; Delay 6 000 cycles
; 750us at 8.0 MHz

    ldi  r18, 8
    ldi  r19, 202
L3: dec  r19
    brne L3
    dec  r18
    brne L3
    nop

	pop R19
	pop R18
	RET