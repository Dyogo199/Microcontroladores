#define TRUE 1

void main() {
                                      // Diretivas de pré-compilação (#ifdef #else #endif)

       INTCON2.RBPU = 0;              // Todos os resistores de pull-ups PORTB são incapazes de zero (RBPU é negado:)
       ADCON1 |= 0X0F;               // Configura todos os pinos do ADC como digital no PIC18F4520


   TRISB.RB0 = 1;                    // BOTÃO: Configurar PORTB.RB0 como entrada
   PORTB.RB0 = 1;                    // Opcional, o MCU faz isso automaticamente ;)
                                     // Configura todas as PORTB como lógica HIGH

   TRISD = 0;                        // LEDs: Configurar PORTB.RB0 como saída
   PORTD = 0;                        // Opcional, o MCU faz isso automaticamente ;)
                                      // Configura todas as PORTB como lógica LOW

    while(TRUE)                      // Loop sem fim
    {
        if(Button(&PORTB, 0, 100, 0))
           {
              PORTD.RD0 ^= 1;        // Alterna o LED

           }
    }
  }