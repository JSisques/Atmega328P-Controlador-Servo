/********************************************************

	Autor: Javier Plaza Sisqués

********************************************************/

SER R16													;Ponemos a unos el registro 16
OUT DDRB, R16											;Habilitamos la salida para los puertos B

loop:
	LDI R16, 50											;Establecemos el valor 50 para R16, es 50 ya que 20ms x 50 = 1000ms => 1 seg

	derecha:
		SER R17											;Ponemos a unos R17
		OUT portb, R17									;Sacamos el valor de R17 por los puertos B
		CALL delay_0_75ms								;Delay de 0.75ms para poner el servo a la izquierda

		CLR R17											;Ponemos a ceros R17
		OUT portb, R17									;Sacamos el valor de R17 por los puertos B
		CALL delay_19ms									;Delay de 19ms para completar los 20ms necesarios del servo

		DEC R16											;Decrementamos R16
		BRNE derecha									;Si R16 no ha llegado a cero volvemos al bucle derecha

		LDI R16, 50										;Establecemos el valor 50 para R16

	izquierda:
		SER R17											;Ponemos a unos R17
		OUT portb, R17									;Sacamos el valor de R17 por los puertos B
		CALL delay_2_25ms								;Delay de 2.25ms para poner el servo a la derecha

		CLR R17											;Ponemos a ceros R17
		OUT portb, R17									;Sacamos el valor de R17 por los puertos B
		CALL delay_19ms									;Delay de 19ms para completar los 20ms necesarios del servo

		DEC R16											;Decrementamos R16
		BRNE izquierda									;Si R16 no ha llegado a cero volvemos al bucle izquierda

		RJMP loop										;Una vez hecho todo volvemos a repetir desde el principio


/********************************************************

	Funciones de delay

********************************************************/

delay_19ms:
	PUSH R18											;Copia de seguridad del R18
	PUSH R19											;Copia de seguridad del R19
	PUSH R20											;Copia de seguridad del R20

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
		
	POP R20												;Reestablecemos el valor de R20
	POP R19												;Reestablecemos el valor de R19
	POP R18												;Reestablecemos el valor de R18
	RET													;Devolvemos la funcion

delay_2_25ms:
	PUSH R18											;Copia de seguridad del R18
	PUSH R19											;Copia de seguridad del R19

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

	POP R19												;Reestablecemos el valor de R19
	POP R18												;Reestablecemos el valor de R18
	RET													;Devolvemos la funcion

delay_0_75ms:
	PUSH R18											;Copia de seguridad del R18
	PUSH R19											;Copia de seguridad del R19

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

	POP R19												;Reestablecemos el valor de R19
	POP R18												;Reestablecemos el valor de R18
	RET													;Devolvemos la funcion