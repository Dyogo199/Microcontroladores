void main() {
   TRISB = 0;   // Define a porta B0 como sa�da digital
   TRISD = 0;

   while (1) {
      PORTB.B6 = 1;   // Aciona o LED conectado � porta B0
      PORTD = 0;
   }
}