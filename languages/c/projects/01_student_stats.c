/*
Objetivo: montar um mini projeto em C com arrays e funções.
Como executar:
  powershell -ExecutionPolicy Bypass -File .\scripts\build-c-module.ps1 -Source .\languages\c\projects\01_student_stats.c
Conceitos treinados: leitura, laços, funções, estatísticas simples.
Próximo exercício: adaptar o programa para ler dados do teclado.
*/

#include <stdio.h>

#define N 5

double media(const double notas[], int n) {
    double soma = 0.0;
    for (int i = 0; i < n; ++i) {
        soma += notas[i];
    }
    return soma / n;
}

double maior_nota(const double notas[], int n) {
    double maior = notas[0];
    for (int i = 1; i < n; ++i) {
        if (notas[i] > maior) {
            maior = notas[i];
        }
    }
    return maior;
}

int main(void) {
    double notas[N] = {8.5, 7.0, 9.2, 6.8, 8.9};

    printf("Relatório de notas\n");
    for (int i = 0; i < N; ++i) {
        printf("Aluno %d -> %.1f\n", i + 1, notas[i]);
    }

    printf("Média da turma: %.2f\n", media(notas, N));
    printf("Maior nota: %.2f\n", maior_nota(notas, N));

    return 0;
}
