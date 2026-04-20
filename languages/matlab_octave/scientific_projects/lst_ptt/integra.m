function[int]=integra(fx)

global n y

% x -> vetor crescente com incremento constante h
% fx -> vetor valores da fun��o nos pontos correspondentes
% Sabendo-se que o n�mero de pontos � sempre maior do que 3
% calcular a integral usando as regras de simpson (1/3 e 3/8)

x = y;

h   = x(2) - x(1);
int = 0.;
if mod(n-1,2)==0 %%%%%% 1/3 de Simpson
    for i = 1 : 2: n - 2
        int = int + fx(i) + 4*fx(i+1) + fx(i+2);
    end
    int = h * int / 3;
else %%%%%% 1/3  e 3/8 de Simpson
    for i = 1 : 2: n - 5
        int = int + fx(i) + 4*fx(i+1) + fx(i+2);
    end
    int = h * int / 3 + ...
        3 * h * (fx(n-3) + 3*fx(n-2) + 3*fx(n-1) + fx(n))/8;
end
end