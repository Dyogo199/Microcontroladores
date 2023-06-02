#line 1 "C:/workspace/Aulas-Cpp/Questao17/MyProject.c"
int matriz[8][2] = {
 {0, 1},
 {0, 1},
 {0, 1},
 {0, 1},
 {0, 1},
 {0, 1},
 {0, 1},
 {0, 1}
 };
void main()
{
 TRISB = 0x00;
 TRISD = 0x00;




 while(1)
 {
 int coluna, linha;
 for(coluna=0; coluna<2; coluna++)
 {
 for(linha=0; linha<8; linha++)
 {
 if(coluna == 0)
 LATB = matriz[linha][coluna] << linha;
 else
 LATD = matriz[linha][coluna] << linha;

 Delay_ms(500);
 }
 }
 }
}
