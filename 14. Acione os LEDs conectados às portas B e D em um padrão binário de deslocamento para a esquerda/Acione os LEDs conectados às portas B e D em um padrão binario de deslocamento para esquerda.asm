
_main:

;MyProject.c,1 :: 		void main() {
;MyProject.c,2 :: 		TRISB = 0x00;  // Define a porta B como saída
	CLRF        TRISB+0 
;MyProject.c,3 :: 		TRISD = 0x00;  // Define a porta D como saída
	CLRF        TRISD+0 
;MyProject.c,5 :: 		while (1) {
L_main0:
;MyProject.c,7 :: 		PORTB = (PORTB >> 1) | 0x80;  // 0x80 é o bit mais significativo
	MOVF        PORTB+0, 0 
	MOVWF       R0 
	RRCF        R0, 1 
	BCF         R0, 7 
	MOVLW       128
	IORWF       R0, 0 
	MOVWF       PORTB+0 
;MyProject.c,10 :: 		PORTD = (PORTD >> 1) | 0x80;  // 0x80 é o bit mais significativo
	MOVF        PORTD+0, 0 
	MOVWF       R0 
	RRCF        R0, 1 
	BCF         R0, 7 
	MOVLW       128
	IORWF       R0, 0 
	MOVWF       PORTD+0 
;MyProject.c,13 :: 		Delay_ms(500);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main2:
	DECFSZ      R13, 1, 1
	BRA         L_main2
	DECFSZ      R12, 1, 1
	BRA         L_main2
	DECFSZ      R11, 1, 1
	BRA         L_main2
	NOP
	NOP
;MyProject.c,14 :: 		}
	GOTO        L_main0
;MyProject.c,15 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
