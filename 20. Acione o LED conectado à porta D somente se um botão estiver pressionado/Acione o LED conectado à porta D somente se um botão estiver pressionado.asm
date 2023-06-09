
_main:

;MyProject.c,3 :: 		void main() {
;MyProject.c,6 :: 		INTCON2.RBPU = 0;              // Todos os resistores de pull-ups PORTB s�o incapazes de zero (RBPU � negado:)
	BCF         INTCON2+0, 7 
;MyProject.c,7 :: 		ADCON1 |= 0X0F;               // Configura todos os pinos do ADC como digital no PIC18F4520
	MOVLW       15
	IORWF       ADCON1+0, 1 
;MyProject.c,10 :: 		TRISB.RB0 = 1;                    // BOT�O: Configurar PORTB.RB0 como entrada
	BSF         TRISB+0, 0 
;MyProject.c,11 :: 		PORTB.RB0 = 1;                    // Opcional, o MCU faz isso automaticamente ;)
	BSF         PORTB+0, 0 
;MyProject.c,14 :: 		TRISD = 0;                        // LEDs: Configurar PORTB.RB0 como sa�da
	CLRF        TRISD+0 
;MyProject.c,15 :: 		PORTD = 0;                        // Opcional, o MCU faz isso automaticamente ;)
	CLRF        PORTD+0 
;MyProject.c,18 :: 		while(TRUE)                      // Loop sem fim
L_main0:
;MyProject.c,20 :: 		if(Button(&PORTB, 0, 100, 0))
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       100
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main2
;MyProject.c,22 :: 		PORTD.RD0 ^= 1;        // Alterna o LED
	BTG         PORTD+0, 0 
;MyProject.c,24 :: 		}
L_main2:
;MyProject.c,25 :: 		}
	GOTO        L_main0
;MyProject.c,26 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
