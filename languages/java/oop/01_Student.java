/*
Objetivo: definir uma classe simples.
Como executar: javac 01_Student.java 02_StudentDemo.java && java StudentDemo
Conceitos treinados: atributos, construtor, método.
Próximo exercício: collections/01_ListExample.java
*/
class Student {
    private String name;
    private double grade;

    public Student(String name, double grade) {
        this.name = name;
        this.grade = grade;
    }

    public String getName() {
        return name;
    }

    public double getGrade() {
        return grade;
    }

    public String getStatus() {
        return grade >= 6.0 ? "Aprovado" : "Reprovado";
    }
}
