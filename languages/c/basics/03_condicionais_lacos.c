/*
Objetivo: praticar if, else, for e while.
Como executar:
  powershell -ExecutionPolicy Bypass -File .\scripts\build-c-module.ps1 -Source .\languages\c\basics\03_condicionais_lacos.c
Conceitos treinados: fluxo de controle.
Próximo exercício: 04_funcoes.c
*/

#include <stdio.h>

int main(void) {
    int numero = 7;

    if (numero % 2 == 0) {
        printf("%d é par.\n", numero);
    } else {
        printf("%d é ímpar.\n", numero);
    }

    printf("Contagem com for: ");
    for (int i = 1; i <= 5; ++i) {
        printf("%d ", i);
    }
    printf("\n");

    int contador = 3;
    printf("Contagem regressiva com while: ");
    while (contador > 0) {
        printf("%d ", contador);
        contador--;
    }
    printf("\n");

    return 0;
}
