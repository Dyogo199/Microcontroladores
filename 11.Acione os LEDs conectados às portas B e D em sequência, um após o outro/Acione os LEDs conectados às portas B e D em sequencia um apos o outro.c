void main()
{
    TRISD = 0x00; // Define a porta D como saída
    LATB = 0x00; // Define todos os bits da porta B como 0 (desliga os LEDs)
    LATD = 0x00; // Define todos os bits da porta B como 0 (desliga os LEDs)
    TRISB = 0x00; // Define a porta B como saída

    while(1) // Loop infinito
    {

        int i;
        for(i=0; i<8; i++) // Loop de 0 a 7 (8 LEDs)
        {

            LATD = (1 << i);  // Liga o LED conectado ao bit i da porta D
            LATB = (1 << i); // Liga o LED conectado ao bit i da porta B
            Delay_ms(500); // Aguarda 500ms
            LATB = 0x00; // Desliga todos os LEDs
            LATD = 0x00; // Desliga todos os LEDs
        }
    }
}