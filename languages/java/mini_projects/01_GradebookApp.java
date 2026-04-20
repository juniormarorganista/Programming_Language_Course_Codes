/*
Objetivo: mini projeto simples de boletim.
Como executar: javac 01_GradebookApp.java && java GradebookApp
Conceitos treinados: arrays, média, condição.
Próximo exercício: expandir para leitura de arquivo.
*/
class GradebookApp {
    public static void main(String[] args) {
        String[] names = {"Ana", "Bruno", "Carla"};
        double[] grades = {8.0, 5.5, 9.2};

        for (int i = 0; i < names.length; i++) {
            String status = grades[i] >= 6.0 ? "Aprovado" : "Reprovado";
            System.out.println(names[i] + " | nota=" + grades[i] + " | " + status);
        }
    }
}
