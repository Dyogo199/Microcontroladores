void main() {
   int i;

   TRISB = 0;   // Define a porta B como saída digital
   TRISD = 0;   // Define a porta B como saída digital

   while (1) {
      for (i = 7; i >= 0; i--) {   // Itera pelos bits da porta B
         PORTD = 0;
         PORTB = 1 << i;          // Define cada bit como 1 ou 0 de acordo com o padrão binário
         Delay_ms(500);           // Adiciona um atraso entre cada mudança no padrão de acionamento dos LEDs
      }
   }
}