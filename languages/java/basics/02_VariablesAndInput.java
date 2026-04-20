/*
Objetivo: trabalhar com variáveis e entrada básica.
Como executar: javac 02_VariablesAndInput.java && java VariablesAndInput
Conceitos treinados: tipos primitivos, Scanner.
Próximo exercício: oop/01_Student.java
*/
import java.util.Scanner;

class VariablesAndInput {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Digite seu nome: ");
        String nome = scanner.nextLine();
        System.out.print("Digite sua idade: ");
        int idade = scanner.nextInt();
        System.out.println("Nome: " + nome + " | Idade: " + idade);
        scanner.close();
    }
}
