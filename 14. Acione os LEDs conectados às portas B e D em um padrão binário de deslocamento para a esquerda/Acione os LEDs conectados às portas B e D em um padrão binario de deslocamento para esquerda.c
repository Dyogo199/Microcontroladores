void main() {
    TRISB = 0x00;  // Define a porta B como sa�da
    TRISD = 0x00;  // Define a porta D como sa�da

    while (1) {
        // Realiza o deslocamento para a esquerda em RB
        PORTB = (PORTB >> 1) | 0x80;  // 0x80 � o bit mais significativo

        // Realiza o deslocamento para a esquerda em RD
        PORTD = (PORTD >> 1) | 0x80;  // 0x80 � o bit mais significativo

        // Pequena pausa para visualizar o padr�o
        Delay_ms(500);
    }
}
