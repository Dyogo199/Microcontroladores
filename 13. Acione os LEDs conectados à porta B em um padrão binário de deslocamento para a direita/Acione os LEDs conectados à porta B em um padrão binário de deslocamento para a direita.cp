#line 1 "C:/workspace/Aulas-Cpp/Quest_o13.c"
void main() {
 int i;

 TRISB = 0;
 TRISD = 0;

 while (1) {
 for (i = 7; i >= 0; i--) {
 PORTD = 0;
 PORTB = 1 << i;
 Delay_ms(500);
 }
 }
}
