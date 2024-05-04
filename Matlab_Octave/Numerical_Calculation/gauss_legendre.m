function [int] = gauss_legendre(fun,a,b,n)
% Quadratura de Gauss-Legendre com n = 2,3,4,5 e 6 pontos
% fun: funcao que avalia vetor
num_nos = n;
if (num_nos == 2)
nos = [-0.5773502691; 
       0.5773502691];
pesos = [1.0;
         1.0];
elseif (num_nos == 3)
nos = [-0.7745966692
       0.0000000000;
       0.7745966692];
pesos = [0.5555555555;
         0.8888888888;
         0.5555555555];
elseif (num_nos == 4)
nos = [-0.8611363115
       -0.3399810435;
       0.3399810435;
       0.8611363115];
pesos = [0.3478548451;
         0.6521451548;
         0.6521451548;
         0.3478548451];
elseif (num_nos == 5)        
nos = [-0.9061798459;
       -0.5384693101;
       0.0000000000;
       0.5384693101;
       0.9061798459];
pesos = [0.2369268850;
         0.4786286704;
         0.5688888888;
         0.4786286704;
         0.2369268850];
elseif (num_nos == 6)
nos = [-0.9324695142031520; 
       -0.6612093864662645; 
       -0.2386191860831969; 
       0.2386191860831969;
       0.6612093864662645; 
       0.9324695142031520];
pesos = [0.1713244923791703;
         0.3607615730481386;
         0.4679139345726910;
         0.4679139345726910;
         0.3607615730481386;
         0.1713244923791703];
else
    disp('Escolha uma quantidade de pontos tabelada!!!')
    return
end
% mudanca de intervalo de [-1,1] para [a,b]
ab_nos = ((b-a)*nos+ a + b)/2;
ab_pesos = pesos*(b-a)/2;ab_pesos.*fun(ab_nos)
% aplica regra de Guass-Legendre
int = sum(ab_pesos.*fun(ab_nos));
end