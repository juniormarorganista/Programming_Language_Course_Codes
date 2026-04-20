/*
Objetivo: praticar strings e structs.
Como executar:
  powershell -ExecutionPolicy Bypass -File .\scripts\build-c-module.ps1 -Source .\languages\c\basics\06_strings_structs.c
Conceitos treinados: char[], struct, fgets.
Próximo exercício: projects/01_student_stats.c
*/

#include <stdio.h>
#include <string.h>

typedef struct {
    char nome[50];
    double nota;
} Aluno;

int main(void) {
    Aluno aluno = {"Ana", 9.5};
    char curso[50] = "Programação em C";

    printf("Aluno: %s\n", aluno.nome);
    printf("Nota: %.2f\n", aluno.nota);
    printf("Curso: %s\n", curso);
    printf("Tamanho da string do curso: %zu\n", strlen(curso));

    return 0;
}
