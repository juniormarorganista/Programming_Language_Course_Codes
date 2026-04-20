# Objetivo: revisar vetores e fatores.
# Como executar: Rscript .\languages\r\data\01_vectors_and_factors.R
# Conceitos treinados: c, factor, levels.
# Próximo exercício: 02_data_frames.R

notas <- c(7.5, 8.0, 6.5, 9.0)
status <- factor(c("aprovado", "aprovado", "revisao", "aprovado"))

print(notas)
print(status)
print(levels(status))
