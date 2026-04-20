/*
Objetivo: entender arrays e ponteiros em C.
Como executar:
  powershell -ExecutionPolicy Bypass -File .\scripts\build-c-module.ps1 -Source .\languages\c\basics\05_arrays_ponteiros.c
Conceitos treinados: array, endereço, ponteiro, passagem por referência.
Próximo exercício: 06_strings_structs.c
*/

#include <stdio.h>

void dobrar(int *valor) {
    *valor *= 2;
}

int main(void) {
    int notas[4] = {7, 8, 9, 10};
    int total = 0;

    for (int i = 0; i < 4; ++i) {
        total += notas[i];
    }

    int numero = 15;
    printf("Antes: %d\n", numero);
    dobrar(&numero);
    printf("Depois: %d\n", numero);
    printf("Primeira nota: %d | endereço: %p\n", notas[0], (void*)&notas[0]);
    printf("Média inteira aproximada: %d\n", total / 4);

    return 0;
}
