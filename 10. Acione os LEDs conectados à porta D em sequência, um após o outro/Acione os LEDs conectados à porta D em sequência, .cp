#line 1 "C:/workspace/Aulas-Cpp/Quest_o10.c"
void main()
{
 TRISD = 0x00;
 LATB = 0x00;
 TRISB = 0x00;

 while(1)
 {

 int i;
 for(i=0; i<8; i++)
 {
 PORTD = 0;
 LATB = (1 << i);
 Delay_ms(500);
 LATB = 0x00;
 }
 }
}
