#line 1 "C:/workspace/Aulas-Cpp/Questao19/MyProject.c"


void main() {


 INTCON2.RBPU = 0;
 ADCON1 |= 0X0F;


 TRISB.RB0 = 1;
 PORTB.RB0 = 1;


 TRISD = 0;
 PORTD = 0;


 while( 1 )
 {
 if(Button(&PORTB, 0, 100, 0))
 {
 PORTD.RD0 ^= 1;

 }
 }
 }
