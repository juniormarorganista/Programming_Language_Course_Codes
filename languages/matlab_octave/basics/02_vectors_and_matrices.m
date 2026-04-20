% Objetivo: revisar vetores, matrizes e operações básicas.
% Como executar: octave --quiet --eval "run('.\languages\matlab_octave\basics\02_vectors_and_matrices.m')"
% Conceitos treinados: vetores, matrizes, soma, produto.
% Próximo exercício: 03_loops_and_conditionals.m

clear;
clc;

v = [1, 2, 3, 4, 5];
A = [1, 2; 3, 4];
B = [5, 6; 7, 8];

disp("Vetor v:");
disp(v);

disp("Matriz A:");
disp(A);

disp("A + B =");
disp(A + B);

disp("A * B =");
disp(A * B);

disp("Soma dos elementos de v:");
disp(sum(v));
