/*
Objetivo: revisar tipos básicos e formatação de saída.
Como executar:
  powershell -ExecutionPolicy Bypass -File .\scripts\build-c-module.ps1 -Source .\languages\c\basics\02_variaveis_tipos.c
Conceitos treinados: int, double, char, printf.
Próximo exercício: 03_condicionais_lacos.c
*/

#include <stdio.h>

int main(void) {
    int idade = 31;
    double altura = 1.78;
    char inicial = 'J';

    printf("Idade: %d\n", idade);
    printf("Altura: %.2f\n", altura);
    printf("Inicial: %c\n", inicial);

    return 0;
}
