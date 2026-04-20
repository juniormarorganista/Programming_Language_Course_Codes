/*
Objetivo: usar a classe Student em um programa pequeno.
Como executar: javac 01_Student.java 02_StudentDemo.java && java StudentDemo
Conceitos treinados: instanciação e chamada de métodos.
Próximo exercício: mini_projects/01_GradebookApp.java
*/
class StudentDemo {
    public static void main(String[] args) {
        Student student = new Student("Ana", 8.5);
        System.out.println(student.getName() + " -> " + student.getStatus());
    }
}
