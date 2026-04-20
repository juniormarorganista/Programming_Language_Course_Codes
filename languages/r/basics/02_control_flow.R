# Objetivo: revisar if, else e laços.
# Como executar: Rscript .\languages\r\basics\02_control_flow.R
# Conceitos treinados: if, else, for, módulo.
# Próximo exercício: data/01_vectors_and_factors.R

for (i in 1:10) {
  if (i %% 2 == 0) {
    print(paste(i, "é par"))
  } else {
    print(paste(i, "é ímpar"))
  }
}
