/*
Objetivo: trabalhar com funções e referências.
Como executar:
  powershell -ExecutionPolicy Bypass -File .\scripts\build-cpp-module.ps1 -Source .\languages\cpp\basics\04_funcoes_referencias.cpp
Conceitos treinados: funções, referências, const ref.
Próximo exercício: 05_vectors_strings.cpp
*/

#include <iostream>
#include <vector>

double media(const std::vector<double>& notas) {
    double soma = 0.0;
    for (double nota : notas) soma += nota;
    return soma / notas.size();
}

void aplicar_bonus(double& nota, double bonus) {
    nota += bonus;
}

int main() {
    std::vector<double> notas{7.0, 8.5, 9.0};
    std::cout << "Média inicial: " << media(notas) << "\n";
    aplicar_bonus(notas[0], 1.0);
    std::cout << "Primeira nota após bônus: " << notas[0] << "\n";
    return 0;
}
