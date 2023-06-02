int matriz[8][2] = {
        {1, 0}, // Coluna 1, linha 1
        {0, 1}, // Coluna 2, linha 1
        {1, 0}, // Coluna 1, linha 2
        {0, 1}, // Coluna 2, linha 2
        {1, 0}, // Coluna 1, linha 3
        {0, 1}, // Coluna 2, linha 3
        {1, 0}, // Coluna 1, linha 4
        {0, 1}  // Coluna 2, linha 4
    };
void main()
{
    TRISB = 0x00; // Define a porta B como saída
    TRISD = 0x00; // Define a porta D como saída

    // Matriz de valores de 0s e 1s


    while(1) // Loop infinito
    {
        int coluna, linha;
        for(coluna=0; coluna<2; coluna++) // Loop pelas colunas
        {
            for(linha=0; linha<8; linha++) // Loop pelas linhas
            {
                if(coluna == 0) // Se a coluna é a primeira (porta B)
                    LATB = matriz[linha][coluna] << linha; // Define o valor do LED conectado ao bit linha da porta B
                else // Se a coluna é a segunda (porta D)
                    LATD = matriz[linha][coluna] << linha; // Define o valor do LED conectado ao bit linha da porta D

                Delay_ms(500); // Aguarda 50ms
            }
        }
    }
}