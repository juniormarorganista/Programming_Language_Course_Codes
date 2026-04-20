/*
Objetivo: praticar variáveis e tipos primitivos.
Como executar:
  cd .\languages\java\basics
  javac 02_VariaveisETipos.java
  java VariaveisETipos
Conceitos treinados: int, double, boolean, String.
Próximo exercício: 03_Condicionais.java
*/

class VariaveisETipos {
    public static void main(String[] args) {
        String nome = "Juniormar";
        int idade = 30;
        double altura = 1.78;
        boolean estudandoJava = true;

        System.out.println("Nome: " + nome);
        System.out.println("Idade: " + idade);
        System.out.println("Altura: " + altura);
        System.out.println("Estudando Java? " + estudandoJava);
    }
}
