
_main:

;Quest_o06.c,1 :: 		void main() {
;Quest_o06.c,2 :: 		TRISB = 0;   // Define a porta B0 como sa�da digital
	CLRF        TRISB+0 
;Quest_o06.c,3 :: 		TRISD = 0;
	CLRF        TRISD+0 
;Quest_o06.c,5 :: 		while (1) {
L_main0:
;Quest_o06.c,6 :: 		PORTB.B5 = 1;   // Aciona o LED conectado � porta B0
	BSF         PORTB+0, 5 
;Quest_o06.c,7 :: 		PORTD = 0;
	CLRF        PORTD+0 
;Quest_o06.c,8 :: 		}
	GOTO        L_main0
;Quest_o06.c,9 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
