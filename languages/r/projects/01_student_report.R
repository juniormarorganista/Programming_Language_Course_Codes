# Objetivo: montar um relatório textual simples de notas.
# Como executar: Rscript .\languages\r\projects\01_student_report.R
# Conceitos treinados: data.frame, média, classificação.
# Próximo exercício: adaptar para leitura de CSV.

alunos <- data.frame(
  nome = c("Ana", "Bruno", "Carla", "Diego"),
  nota = c(7.5, 8.0, 6.5, 9.0),
  faltas = c(2, 0, 5, 1)
)

media_turma <- mean(alunos$nota)
aprovados <- subset(alunos, nota >= 7)

cat("Média da turma:", media_turma, "\n")
cat("Número de aprovados:", nrow(aprovados), "\n")
cat("Alunos aprovados:\n")
print(aprovados)
