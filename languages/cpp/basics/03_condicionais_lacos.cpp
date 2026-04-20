/*
Objetivo: praticar fluxo de controle em C++.
Como executar:
  powershell -ExecutionPolicy Bypass -File .\scripts\build-cpp-module.ps1 -Source .\languages\cpp\basics\03_condicionais_lacos.cpp
Conceitos treinados: if, else, for, range-based for.
Próximo exercício: 04_funcoes_referencias.cpp
*/

#include <iostream>
#include <vector>

int main() {
    int idade = 22;
    if (idade >= 18) {
        std::cout << "Maior de idade\n";
    } else {
        std::cout << "Menor de idade\n";
    }

    std::vector<int> valores{1, 2, 3, 4, 5};
    for (int valor : valores) {
        std::cout << valor << ' ';
    }
    std::cout << '\n';
    return 0;
}
