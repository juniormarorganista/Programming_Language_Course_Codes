/*
Objetivo: usar vector e string de forma idiomática.
Como executar:
  powershell -ExecutionPolicy Bypass -File .\scripts\build-cpp-module.ps1 -Source .\languages\cpp\basics\05_vectors_strings.cpp
Conceitos treinados: std::vector, std::string, algoritmo simples.
Próximo exercício: 06_classes.cpp
*/

#include <algorithm>
#include <iostream>
#include <string>
#include <vector>

int main() {
    std::vector<std::string> linguagens{"Python", "C", "C++", "Fortran"};
    std::sort(linguagens.begin(), linguagens.end());

    for (const auto& item : linguagens) {
        std::cout << item << " (" << item.size() << " letras)\n";
    }
    return 0;
}
