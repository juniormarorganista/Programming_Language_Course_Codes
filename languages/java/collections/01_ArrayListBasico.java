/*
Objetivo: praticar uso básico de ArrayList.
Como executar:
  cd .\languages\java\collections
  javac 01_ArrayListBasico.java
  java ArrayListBasico
Conceitos treinados: ArrayList, add, for-each.
Próximo exercício: HashMap.
*/

import java.util.ArrayList;

class ArrayListBasico {
    public static void main(String[] args) {
        ArrayList<String> linguagens = new ArrayList<>();
        linguagens.add("Python");
        linguagens.add("C");
        linguagens.add("Java");
        linguagens.add("PHP");

        for (String linguagem : linguagens) {
            System.out.println(linguagem);
        }
    }
}
