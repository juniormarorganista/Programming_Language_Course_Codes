/*
Objetivo: introduzir classes e encapsulamento simples.
Como executar:
  powershell -ExecutionPolicy Bypass -File .\scripts\build-cpp-module.ps1 -Source .\languages\cpp\basics\06_classes.cpp
Conceitos treinados: class, construtor, método.
Próximo exercício: 07_exceptions_files.cpp
*/

#include <iostream>
#include <string>

class Course {
private:
    std::string name;
    int lessons;

public:
    Course(std::string name, int lessons) : name(std::move(name)), lessons(lessons) {}

    void show() const {
        std::cout << "Curso: " << name << " | aulas: " << lessons << "\n";
    }
};

int main() {
    Course cpp("C++ Foundations", 12);
    cpp.show();
    return 0;
}
