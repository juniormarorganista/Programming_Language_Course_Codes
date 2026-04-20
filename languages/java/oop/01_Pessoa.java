/*
Objetivo: introduzir classes e objetos em Java.
Como executar:
  cd .\languages\java\oop
  javac 01_Pessoa.java
  java PessoaTeste
Conceitos treinados: classe, atributo, construtor, método.
Próximo exercício: herança.
*/

class Pessoa {
    private String nome;
    private String area;

    public Pessoa(String nome, String area) {
        this.nome = nome;
        this.area = area;
    }

    public String apresentar() {
        return "Olá, meu nome é " + nome + " e estudo " + area + ".";
    }
}

class PessoaTeste {
    public static void main(String[] args) {
        Pessoa usuario = new Pessoa("Juniormar", "programação");
        System.out.println(usuario.apresentar());
    }
}
