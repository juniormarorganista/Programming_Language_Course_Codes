% Objetivo: calcular média, mediana, variância e desvio padrão.
% Como executar: octave --quiet --eval "run('.\languages\matlab_octave\statistics\01_basic_statistics.m')"
% Conceitos treinados: mean, median, var, std.
% Próximo exercício: projects/01_root_methods_comparison.m

clear;
clc;

data = [7.5, 8.0, 6.5, 9.0, 8.5, 7.0, 6.0, 10.0];

fprintf("Dados: ");
disp(data);

fprintf("Média: %.4f\n", mean(data));
fprintf("Mediana: %.4f\n", median(data));
fprintf("Variância: %.4f\n", var(data));
fprintf("Desvio padrão: %.4f\n", std(data));
