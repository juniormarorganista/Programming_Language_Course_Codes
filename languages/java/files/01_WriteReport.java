/*
Objetivo: escrever um arquivo simples.
Como executar: javac 01_WriteReport.java && java WriteReport
Conceitos treinados: java.nio.file.
Próximo exercício: mini_projects/01_GradebookApp.java
*/
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

class WriteReport {
    public static void main(String[] args) throws IOException {
        Path path = Path.of("grade_report.txt");
        Files.writeString(path, "Relatório simples gerado por Java.
");
        System.out.println("Arquivo criado em " + path.toAbsolutePath());
    }
}
