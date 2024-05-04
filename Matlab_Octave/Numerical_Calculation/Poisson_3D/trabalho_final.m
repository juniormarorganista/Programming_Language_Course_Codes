clear all; close all; clc;
%%% Teste do omega otimo
x_0 = 0.0;x_f = 1.0;
y_0 = 0.0;y_f = 1.0;
z_0 = 0.0;z_f = 1.0;
ptsx = 21;ptsy = 21;ptsz = 21;

erromax = 1.0e-2
itemax  = 1e6

%%% Definicao dos casos
%%% caso = 0 (trabalho)
%%% caso = 1 (sol.ana. --- T(x,y,z) = cos(pi*x)sin(pi*x)z^2 ---)
caso = 0;

%%% Vetor dos vatores de relaxacao
vector_omega = 0.1:0.1:1.9;
n = length(vector_omega);
t = zeros(1,n);
disp('Comeca a verificacao do fator de relaxacao!')

for i = 1:n
  omega = vector_omega(i);
  tic;
  [ite,T,X,Y,Z] = poisson3d(x_0,x_f,y_0,y_f,z_0,z_f,caso,ptsx,ptsy,ptsz,erromax,itemax,omega);
  t(i) = toc;
  vector_ite(i) = ite;
  fflush(stdout)
  ite
end

[a,b]     = min(vector_ite);
w_otimo   = vector_omega(b);

plotpoisson3d(vector_omega,vector_ite,b,ptsz,X,Y,Z,T,erromax)
