void main()
{
    TRISD = 0x00; // Define a porta D como saída
    LATD = 0x00; // Define todos os bits da porta D como 0 (desliga os LEDs)
    TRISB = 0x00; // Define a porta D como saída

    while(1) // Loop infinito
    {

        int i;
        for(i=0; i<8; i++) // Loop de 0 a 7 (8 LEDs)
        {
         PORTB = 0;
            LATD = (1 << i); // Liga o LED conectado ao bit i da porta D
            Delay_ms(500); // Aguarda 500ms
            LATD = 0x00; // Desliga todos os LEDs
        }
    }
}