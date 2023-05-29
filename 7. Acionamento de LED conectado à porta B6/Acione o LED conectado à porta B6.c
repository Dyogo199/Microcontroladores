void main() {
   TRISB = 0;   // Define a porta B0 como saída digital
   TRISD = 0;

   while (1) {
      PORTB.B6 = 1;   // Aciona o LED conectado à porta B0
      PORTD = 0;
   }
}