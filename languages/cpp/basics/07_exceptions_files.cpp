/*
Objetivo: trabalhar com arquivos e exceções básicas.
Como executar:
  powershell -ExecutionPolicy Bypass -File .\scripts\build-cpp-module.ps1 -Source .\languages\cpp\basics\07_exceptions_files.cpp
Conceitos treinados: ofstream, ifstream, try/catch.
Próximo exercício: projects/01_inventory_cli.cpp
*/

#include <fstream>
#include <iostream>
#include <stdexcept>
#include <string>

int main() {
    try {
        const std::string file_name = "cpp_saida.txt";
        std::ofstream out(file_name);
        if (!out) throw std::runtime_error("Não foi possível criar o arquivo.");
        out << "Linha 1\nLinha 2\n";
        out.close();

        std::ifstream in(file_name);
        if (!in) throw std::runtime_error("Não foi possível abrir o arquivo para leitura.");

        std::string line;
        while (std::getline(in, line)) {
            std::cout << line << '\n';
        }
    } catch (const std::exception& e) {
        std::cerr << "Erro: " << e.what() << '\n';
        return 1;
    }
    return 0;
}
