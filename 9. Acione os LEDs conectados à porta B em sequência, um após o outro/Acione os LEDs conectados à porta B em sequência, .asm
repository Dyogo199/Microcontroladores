
_main:

;Quest_o09.c,1 :: 		void main()
;Quest_o09.c,3 :: 		TRISD = 0x00; // Define a porta D como saída
	CLRF        TRISD+0 
;Quest_o09.c,4 :: 		LATD = 0x00; // Define todos os bits da porta D como 0 (desliga os LEDs)
	CLRF        LATD+0 
;Quest_o09.c,5 :: 		TRISB = 0x00; // Define a porta D como saída
	CLRF        TRISB+0 
;Quest_o09.c,7 :: 		while(1) // Loop infinito
L_main0:
;Quest_o09.c,11 :: 		for(i=0; i<8; i++) // Loop de 0 a 7 (8 LEDs)
	CLRF        R2 
	CLRF        R3 
L_main2:
	MOVLW       128
	XORWF       R3, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main7
	MOVLW       8
	SUBWF       R2, 0 
L__main7:
	BTFSC       STATUS+0, 0 
	GOTO        L_main3
;Quest_o09.c,13 :: 		PORTB = 0;
	CLRF        PORTB+0 
;Quest_o09.c,14 :: 		LATD = (1 << i); // Liga o LED conectado ao bit i da porta D
	MOVF        R2, 0 
	MOVWF       R1 
	MOVLW       1
	MOVWF       R0 
	MOVF        R1, 0 
L__main8:
	BZ          L__main9
	RLCF        R0, 1 
	BCF         R0, 0 
	ADDLW       255
	GOTO        L__main8
L__main9:
	MOVF        R0, 0 
	MOVWF       LATD+0 
;Quest_o09.c,15 :: 		Delay_ms(500); // Aguarda 500ms
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main5:
	DECFSZ      R13, 1, 1
	BRA         L_main5
	DECFSZ      R12, 1, 1
	BRA         L_main5
	DECFSZ      R11, 1, 1
	BRA         L_main5
	NOP
	NOP
;Quest_o09.c,16 :: 		LATD = 0x00; // Desliga todos os LEDs
	CLRF        LATD+0 
;Quest_o09.c,11 :: 		for(i=0; i<8; i++) // Loop de 0 a 7 (8 LEDs)
	INFSNZ      R2, 1 
	INCF        R3, 1 
;Quest_o09.c,17 :: 		}
	GOTO        L_main2
L_main3:
;Quest_o09.c,18 :: 		}
	GOTO        L_main0
;Quest_o09.c,19 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
