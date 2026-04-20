/*
Objetivo: praticar condicionais em Java.
Como executar:
  cd .\languages\java\basics
  javac 03_Condicionais.java
  java Condicionais
Conceitos treinados: if, else if, else.
Próximo exercício: 04_Lacos.java
*/

class Condicionais {
    public static void main(String[] args) {
        int nota = 8;

        if (nota >= 9) {
            System.out.println("Excelente.");
        } else if (nota >= 7) {
            System.out.println("Aprovado.");
        } else if (nota >= 5) {
            System.out.println("Recuperação.");
        } else {
            System.out.println("Reprovado.");
        }
    }
}
