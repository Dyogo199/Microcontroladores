#line 1 "C:/workspace/Aulas-Cpp/Questao15/MyProject.c"
void main() {
 TRISB = 0x00;
 TRISD = 0x00;

 while (1) {

 PORTB = (PORTB << 1) | 0x01;


 PORTD = (PORTD << 1) | 0x01;


 Delay_ms(500);
 }
}
