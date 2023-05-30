#line 1 "C:/workspace/Aulas-Cpp/Quest_o09.c"
void main()
{
 TRISD = 0x00;
 LATD = 0x00;
 TRISB = 0x00;

 while(1)
 {

 int i;
 for(i=0; i<8; i++)
 {
 PORTB = 0;
 LATD = (1 << i);
 Delay_ms(500);
 LATD = 0x00;
 }
 }
}
