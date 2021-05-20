
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
	push R20
; Assembly code auto-generated
; by utility from Bret Mulvey
; Delay 304 000 cycles
; 19ms at 16 MHz

    ldi  r18, 2
    ldi  r19, 139
    ldi  r20, 204
L1: dec  r20
    brne L1
    dec  r19
    brne L1
    dec  r18
    brne L1
		
		pop R20
		pop R19
		pop R18
		RET

delay_2_25ms:
	push R18
	push R19
; Assembly code auto-generated
; by utility from Bret Mulvey
; Delay 40 000 cycles
; 2ms 500us at 16 MHz

    ldi  r18, 52
    ldi  r19, 242
L1: dec  r19
    brne L1
    dec  r18
    brne L1
    nop

	pop R19
	pop R18
	RET

delay_0_75ms:
push R18
push R19
; Assembly code auto-generated
; by utility from Bret Mulvey
; Delay 12 000 cycles
; 750us at 16 MHz

    ldi  r18, 16
    ldi  r19, 149
L1: dec  r19
    brne L1
    dec  r18
    brne L1


	pop R19
	pop R18
	RET