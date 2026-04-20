% Objetivo: implementar o método da bisseção para uma função simples.
% Como executar: octave --quiet --eval "run('.\languages\matlab_octave\numerical_methods\01_bisection_method.m')"
% Conceitos treinados: funções anônimas, laços, tolerância numérica.
% Próximo exercício: 02_newton_method.m

clear;
clc;

f = @(x) x.^3 - x - 2;
a = 1;
b = 2;
tol = 1e-6;
max_iter = 100;

if f(a) * f(b) > 0
    error("O intervalo inicial não contém mudança de sinal.");
end

for k = 1:max_iter
    c = (a + b) / 2;
    if abs(f(c)) < tol || (b - a) / 2 < tol
        fprintf("Raiz aproximada: %.8f\n", c);
        fprintf("Iterações: %d\n", k);
        break;
    end

    if f(a) * f(c) < 0
        b = c;
    else
        a = c;
    end
end
