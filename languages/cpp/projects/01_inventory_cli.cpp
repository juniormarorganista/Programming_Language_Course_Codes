/*
Objetivo: criar um mini projeto com struct, vector e funções.
Como executar:
  powershell -ExecutionPolicy Bypass -File .\scripts\build-cpp-module.ps1 -Source .\languages\cpp\projects\01_inventory_cli.cpp
Conceitos treinados: struct, STL, agregação simples.
Próximo exercício: adicionar leitura pelo teclado.
*/

#include <iomanip>
#include <iostream>
#include <string>
#include <vector>

struct Product {
    std::string name;
    int quantity;
    double price;
};

double inventory_value(const std::vector<Product>& items) {
    double total = 0.0;
    for (const auto& item : items) {
        total += item.quantity * item.price;
    }
    return total;
}

int main() {
    std::vector<Product> items{
        {"Mouse", 5, 79.90},
        {"Teclado", 3, 129.50},
        {"Monitor", 2, 899.00}
    };

    std::cout << std::fixed << std::setprecision(2);
    for (const auto& item : items) {
        std::cout << item.name << " | qtd=" << item.quantity << " | preço=" << item.price << "\n";
    }

    std::cout << "Valor total do estoque: " << inventory_value(items) << "\n";
    return 0;
}
