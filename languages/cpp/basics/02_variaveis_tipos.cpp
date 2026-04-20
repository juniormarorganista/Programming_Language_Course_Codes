/*
Objetivo: revisar tipos, auto e const.
Como executar:
  powershell -ExecutionPolicy Bypass -File .\scripts\build-cpp-module.ps1 -Source .\languages\cpp\basics\02_variaveis_tipos.cpp
Conceitos treinados: int, double, std::string, auto, const.
Próximo exercício: 03_condicionais_lacos.cpp
*/

#include <iostream>
#include <string>

int main() {
    const std::string nome = "Juniormar";
    auto semestre = 4;
    double nota = 8.75;

    std::cout << "Nome: " << nome << "\n";
    std::cout << "Semestre: " << semestre << "\n";
    std::cout << "Nota: " << nota << "\n";
    return 0;
}
