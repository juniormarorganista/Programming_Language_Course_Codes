/*
Objetivo: introduzir listas em Java.
Como executar: javac 01_ListExample.java && java ListExample
Conceitos treinados: ArrayList, loop.
Próximo exercício: files/01_WriteReport.java
*/
import java.util.ArrayList;
import java.util.List;

class ListExample {
    public static void main(String[] args) {
        List<String> languages = new ArrayList<>();
        languages.add("Java");
        languages.add("Python");
        languages.add("SQL");

        for (String language : languages) {
            System.out.println(language);
        }
    }
}
