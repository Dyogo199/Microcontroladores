#define TRUE 1

void main() {
                                      // Diretivas de pr�-compila��o (#ifdef #else #endif)

       INTCON2.RBPU = 0;              // Todos os resistores de pull-ups PORTB s�o incapazes de zero (RBPU � negado:)
       ADCON1 |= 0X0F;               // Configura todos os pinos do ADC como digital no PIC18F4520


   TRISB.RB0 = 1;                    // BOT�O: Configurar PORTB.RB0 como entrada
   PORTB.RB0 = 1;                    // Opcional, o MCU faz isso automaticamente ;)
                                     // Configura todas as PORTB como l�gica HIGH

   TRISD = 0;                        // LEDs: Configurar PORTB.RB0 como sa�da
   PORTD = 0;                        // Opcional, o MCU faz isso automaticamente ;)
                                      // Configura todas as PORTB como l�gica LOW

    while(TRUE)                      // Loop sem fim
    {
        if(Button(&PORTB, 0, 100, 0))
           {
              PORTD.RD0 ^= 1;        // Alterna o LED

           }
    }
  }