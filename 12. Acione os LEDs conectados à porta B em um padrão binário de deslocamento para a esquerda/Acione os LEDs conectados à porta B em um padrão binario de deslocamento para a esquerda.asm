
_main:

;Quest_o12.c,1 :: 		void main() {
;Quest_o12.c,4 :: 		TRISB = 0;   // Define a porta B como saída digital
	CLRF        TRISB+0 
;Quest_o12.c,5 :: 		TRISD = 0;   // Define a porta B como saída digital
	CLRF        TRISD+0 
;Quest_o12.c,7 :: 		while (1) {
L_main0:
;Quest_o12.c,8 :: 		for (i = 0; i < 8; i++) {   // Itera pelos bits da porta B
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
;Quest_o12.c,9 :: 		PORTD = 0;
	CLRF        PORTD+0 
;Quest_o12.c,10 :: 		PORTB = 1 << i;          // Define cada bit como 1 ou 0 de acordo com o padrão binário
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
	MOVWF       PORTB+0 
;Quest_o12.c,11 :: 		Delay_ms(500);           // Adiciona um atraso entre cada mudança no padrão de acionamento dos LEDs
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
;Quest_o12.c,8 :: 		for (i = 0; i < 8; i++) {   // Itera pelos bits da porta B
	INFSNZ      R2, 1 
	INCF        R3, 1 
;Quest_o12.c,12 :: 		}
	GOTO        L_main2
L_main3:
;Quest_o12.c,13 :: 		}
	GOTO        L_main0
;Quest_o12.c,14 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
