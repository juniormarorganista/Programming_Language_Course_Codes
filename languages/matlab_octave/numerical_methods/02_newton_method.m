% Objetivo: implementar o método de Newton.
% Como executar: octave --quiet --eval "run('.\languages\matlab_octave\numerical_methods\02_newton_method.m')"
% Conceitos treinados: derivada explícita, iteração, critério de parada.
% Próximo exercício: statistics/01_basic_statistics.m

clear;
clc;

f = @(x) x.^3 - x - 2;
df = @(x) 3*x.^2 - 1;
x = 1.5;
tol = 1e-8;
max_iter = 50;

for k = 1:max_iter
    x_new = x - f(x) / df(x);
    if abs(x_new - x) < tol
        fprintf("Raiz aproximada: %.10f\n", x_new);
        fprintf("Iterações: %d\n", k);
        break;
    end
    x = x_new;
end
