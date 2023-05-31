#line 1 "C:/workspace/Aulas-Cpp/Questao14/MyProject.c"
void main() {
 TRISB = 0x00;
 TRISD = 0x00;

 while (1) {

 PORTB = (PORTB >> 1) | 0x80;


 PORTD = (PORTD >> 1) | 0x80;


 Delay_ms(500);
 }
}
