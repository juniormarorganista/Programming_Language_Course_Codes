#include <iostream>
#include "calculator.h"

using namespace std;

int main() {
    int opcao;
    float num1, num2;

    cout << "Selecione a operacao:" << endl;
    cout << "1. Adicao" << endl;
    cout << "2. Subtracao" << endl;
    cout << "3. Multiplicacao" << endl;
    cout << "4. Divisao" << endl;
    cin >> opcao;

    cout << "Digite dois numeros:" << endl;
    cin >> num1 >> num2;

    switch (opcao) {
        case 1:
            cout << "Resultado: " << adicao(num1, num2) << endl;
            break;
        case 2:
            cout << "Resultado: " << subtracao(num1, num2) << endl;
            break;
        case 3:
            cout << "Resultado: " << multiplicacao(num1, num2) << endl;
            break;
        case 4:
            if (num2 != 0) {
                cout << "Resultado: " << divisao(num1, num2) << endl;
            } else {
                cout << "Erro: divisao por zero!" << endl;
            }
            break;
        default:
            cout << "Opcao invalida!" << endl;
            break;
    }

    return 0;
}

