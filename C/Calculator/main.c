#include <stdio.h>
#include "calculator.h"

int main() {
    int opcao;
    float num1, num2;

    printf("Selecione a operacao:\n");
    printf("1. Adicao\n");
    printf("2. Subtracao\n");
    printf("3. Multiplicacao\n");
    printf("4. Divisao\n");
    scanf("%d", &opcao);

    printf("Digite dois numeros:\n");
    scanf("%f %f", &num1, &num2);

    switch (opcao) {
        case 1:
            printf("Resultado: %.2f\n", adicao(num1, num2));
            break;
        case 2:
            printf("Resultado: %.2f\n", subtracao(num1, num2));
            break;
        case 3:
            printf("Resultado: %.2f\n", multiplicacao(num1, num2));
            break;
        case 4:
            if (num2 != 0) {
                printf("Resultado: %.2f\n", divisao(num1, num2));
            } else {
                printf("Erro: divisao por zero!\n");
            }
            break;
        default:
            printf("Opcao invalida!\n");
            break;
    }

    return 0;
}

