% Objetivo: comparar bisseção e Newton para a mesma função.
% Como executar: octave --quiet --eval "run('.\languages\matlab_octave\projects\01_root_methods_comparison.m')"
% Conceitos treinados: comparação de métodos.
% Próximo exercício: adapte para outra função não linear.

clear;
clc;

f = @(x) x.^3 - x - 2;
df = @(x) 3*x.^2 - 1;

a = 1; b = 2; tol = 1e-6;
for k1 = 1:100
    c = (a + b) / 2;
    if abs(f(c)) < tol || (b - a) / 2 < tol
        root_bis = c;
        break;
    end
    if f(a) * f(c) < 0
        b = c;
    else
        a = c;
    end
end

x = 1.5;
for k2 = 1:50
    x_new = x - f(x)/df(x);
    if abs(x_new - x) < 1e-10
        root_newton = x_new;
        break;
    end
    x = x_new;
end

fprintf("Bisseção -> raiz = %.8f, iter = %d\n", root_bis, k1);
fprintf("Newton   -> raiz = %.8f, iter = %d\n", root_newton, k2);
