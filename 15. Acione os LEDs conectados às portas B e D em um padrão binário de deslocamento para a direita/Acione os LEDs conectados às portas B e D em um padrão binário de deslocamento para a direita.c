void main() {
    TRISB = 0x00;  // Define a porta B como saída
    TRISD = 0x00;  // Define a porta D como saída

    while (1) {
        // Realiza o deslocamento para a direita em RB
        PORTB = (PORTB << 1) | 0x01;  // 0x01 é o bit menos significativo

        // Realiza o deslocamento para a direita em RD
        PORTD = (PORTD << 1) | 0x01;  // 0x01 é o bit menos significativo

        // Pequena pausa para visualizar o padrão
        Delay_ms(500);
    }
}