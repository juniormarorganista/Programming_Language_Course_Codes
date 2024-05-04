function [D,y] = newton_interp(xi,yi,x)
%%% xi, yi, x: vetor linha
[m,n]= size (x);
if (n == 1)
    xi = xi';
    yi = yi';
    x = x';
end
n = length(xi); ni = length(x); N = ones(n,ni);
D = zeros(n,n); D(:,1) = yi';
for j=1:n %%% Tabela de diferencas divididas
    for i=1:n-j
        D(i,j+1) = (D(i+1,j)-D(i,j))/(xi(i+j)-xi(i));
    end
end

for i=2:n %%% Forma de Newton
    for k = 1:i-1
        N(i,:) = N(i,:).*(x-xi(k));
    end
end
y = D(1,:)*N;
end