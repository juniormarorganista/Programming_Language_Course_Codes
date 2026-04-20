/*
Objetivo: compilar e executar o primeiro programa em C.
Como executar:
  powershell -ExecutionPolicy Bypass -File .\scripts\build-c-module.ps1 -Source .\languages\c\basics\01_hello.c
Conceitos treinados: main, stdio, compilação.
Próximo exercício: 02_variaveis_tipos.c
*/

#include <stdio.h>

int main(void) {
    printf("Olá, C no Windows e no VS Code!\n");
    return 0;
}
