# Objetivo: gerar um gráfico simples.
# Como executar: Rscript .\languages\r\plots\01_basic_plot.R
# Conceitos treinados: plot, png, dev.off.
# Próximo exercício: projects/01_student_report.R

dados <- c(7.5, 8.0, 6.5, 9.0, 8.5, 7.0, 6.0, 10.0)

png(filename = "languages/r/plots/basic_plot.png")
plot(dados, type = "b", main = "Notas", xlab = "Índice", ylab = "Valor")
dev.off()

print("Arquivo gerado: languages/r/plots/basic_plot.png")
