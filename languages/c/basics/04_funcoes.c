/*
Objetivo: separar lógica em funções.
Como executar:
  powershell -ExecutionPolicy Bypass -File .\scripts\build-c-module.ps1 -Source .\languages\c\basics\04_funcoes.c
Conceitos treinados: protótipos, retorno, parâmetros.
Próximo exercício: 05_arrays_ponteiros.c
*/

#include <stdio.h>

double media3(double a, double b, double c);
int maior(int a, int b);

int main(void) {
    printf("Média: %.2f\n", media3(7.5, 8.0, 9.0));
    printf("Maior valor: %d\n", maior(12, 20));
    return 0;
}

double media3(double a, double b, double c) {
    return (a + b + c) / 3.0;
}

int maior(int a, int b) {
    return (a > b) ? a : b;
}
