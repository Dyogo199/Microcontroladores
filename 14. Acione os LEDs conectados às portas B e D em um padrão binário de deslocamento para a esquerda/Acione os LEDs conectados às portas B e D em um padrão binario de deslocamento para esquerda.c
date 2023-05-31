void main() {
    TRISB = 0x00;  // Define a porta B como saída
    TRISD = 0x00;  // Define a porta D como saída

    while (1) {
        // Realiza o deslocamento para a esquerda em RB
        PORTB = (PORTB >> 1) | 0x80;  // 0x80 é o bit mais significativo

        // Realiza o deslocamento para a esquerda em RD
        PORTD = (PORTD >> 1) | 0x80;  // 0x80 é o bit mais significativo

        // Pequena pausa para visualizar o padrão
        Delay_ms(500);
    }
}
