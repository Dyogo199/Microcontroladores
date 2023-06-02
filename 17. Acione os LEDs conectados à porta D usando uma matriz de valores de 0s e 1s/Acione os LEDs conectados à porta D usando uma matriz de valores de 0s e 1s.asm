
_main:

;MyProject.c,11 :: 		void main()
;MyProject.c,13 :: 		TRISB = 0x00; // Define a porta B como saída
	CLRF        TRISB+0 
;MyProject.c,14 :: 		TRISD = 0x00; // Define a porta D como saída
	CLRF        TRISD+0 
;MyProject.c,19 :: 		while(1) // Loop infinito
L_main0:
;MyProject.c,22 :: 		for(coluna=0; coluna<2; coluna++) // Loop pelas colunas
	CLRF        R5 
	CLRF        R6 
L_main2:
	MOVLW       128
	XORWF       R6, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main12
	MOVLW       2
	SUBWF       R5, 0 
L__main12:
	BTFSC       STATUS+0, 0 
	GOTO        L_main3
;MyProject.c,24 :: 		for(linha=0; linha<8; linha++) // Loop pelas linhas
	CLRF        R7 
	CLRF        R8 
L_main5:
	MOVLW       128
	XORWF       R8, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main13
	MOVLW       8
	SUBWF       R7, 0 
L__main13:
	BTFSC       STATUS+0, 0 
	GOTO        L_main6
;MyProject.c,26 :: 		if(coluna == 0) // Se a coluna é a primeira (porta B)
	MOVLW       0
	XORWF       R6, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main14
	MOVLW       0
	XORWF       R5, 0 
L__main14:
	BTFSS       STATUS+0, 2 
	GOTO        L_main8
;MyProject.c,27 :: 		LATB = matriz[linha][coluna] << linha; // Define o valor do LED conectado ao bit linha da porta B
	MOVF        R7, 0 
	MOVWF       R0 
	MOVF        R8, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       _matriz+0
	ADDWF       R0, 0 
	MOVWF       R3 
	MOVLW       hi_addr(_matriz+0)
	ADDWFC      R1, 0 
	MOVWF       R4 
	MOVF        R5, 0 
	MOVWF       R0 
	MOVF        R6, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVF        R0, 0 
	ADDWF       R3, 0 
	MOVWF       FSR0L+0 
	MOVF        R1, 0 
	ADDWFC      R4, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R2 
	MOVF        R7, 0 
	MOVWF       R1 
	MOVF        R2, 0 
	MOVWF       R0 
	MOVF        R1, 0 
L__main15:
	BZ          L__main16
	RLCF        R0, 1 
	BCF         R0, 0 
	ADDLW       255
	GOTO        L__main15
L__main16:
	MOVF        R0, 0 
	MOVWF       LATB+0 
	GOTO        L_main9
L_main8:
;MyProject.c,29 :: 		LATD = matriz[linha][coluna] << linha; // Define o valor do LED conectado ao bit linha da porta D
	MOVF        R7, 0 
	MOVWF       R0 
	MOVF        R8, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       _matriz+0
	ADDWF       R0, 0 
	MOVWF       R3 
	MOVLW       hi_addr(_matriz+0)
	ADDWFC      R1, 0 
	MOVWF       R4 
	MOVF        R5, 0 
	MOVWF       R0 
	MOVF        R6, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVF        R0, 0 
	ADDWF       R3, 0 
	MOVWF       FSR0L+0 
	MOVF        R1, 0 
	ADDWFC      R4, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R2 
	MOVF        R7, 0 
	MOVWF       R1 
	MOVF        R2, 0 
	MOVWF       R0 
	MOVF        R1, 0 
L__main17:
	BZ          L__main18
	RLCF        R0, 1 
	BCF         R0, 0 
	ADDLW       255
	GOTO        L__main17
L__main18:
	MOVF        R0, 0 
	MOVWF       LATD+0 
L_main9:
;MyProject.c,31 :: 		Delay_ms(500); // Aguarda 50ms
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main10:
	DECFSZ      R13, 1, 1
	BRA         L_main10
	DECFSZ      R12, 1, 1
	BRA         L_main10
	DECFSZ      R11, 1, 1
	BRA         L_main10
	NOP
	NOP
;MyProject.c,24 :: 		for(linha=0; linha<8; linha++) // Loop pelas linhas
	INFSNZ      R7, 1 
	INCF        R8, 1 
;MyProject.c,32 :: 		}
	GOTO        L_main5
L_main6:
;MyProject.c,22 :: 		for(coluna=0; coluna<2; coluna++) // Loop pelas colunas
	INFSNZ      R5, 1 
	INCF        R6, 1 
;MyProject.c,33 :: 		}
	GOTO        L_main2
L_main3:
;MyProject.c,34 :: 		}
	GOTO        L_main0
;MyProject.c,35 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
