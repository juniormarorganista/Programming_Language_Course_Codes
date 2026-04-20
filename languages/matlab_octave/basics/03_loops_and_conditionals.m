% Objetivo: revisar estruturas de repetição e decisão.
% Como executar: octave --quiet --eval "run('.\languages\matlab_octave\basics\03_loops_and_conditionals.m')"
% Conceitos treinados: for, if, mod.
% Próximo exercício: numerical_methods/01_bisection_method.m

clear;
clc;

for i = 1:10
    if mod(i, 2) == 0
        fprintf("%d é par\n", i);
    else
        fprintf("%d é ímpar\n", i);
    end
end
