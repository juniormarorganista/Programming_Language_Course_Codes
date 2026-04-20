/*
Objetivo: compilar e executar o primeiro programa em C++.
Como executar:
  powershell -ExecutionPolicy Bypass -File .\scripts\build-cpp-module.ps1 -Source .\languages\cpp\basics\01_hello.cpp
Conceitos treinados: iostream, main.
Próximo exercício: 02_variaveis_tipos.cpp
*/

#include <iostream>

int main() {
    std::cout << "Olá, C++ no VS Code!" << std::endl;
    return 0;
}
