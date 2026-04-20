# Objetivo: criar e manipular data frames.
# Como executar: Rscript .\languages\r\data\02_data_frames.R
# Conceitos treinados: data.frame, subset, mean.
# Próximo exercício: statistics/01_summary_statistics.R

alunos <- data.frame(
  nome = c("Ana", "Bruno", "Carla", "Diego"),
  nota = c(7.5, 8.0, 6.5, 9.0),
  faltas = c(2, 0, 5, 1)
)

print(alunos)
print(subset(alunos, nota >= 7))
print(mean(alunos$nota))
