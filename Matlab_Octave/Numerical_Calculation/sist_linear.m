function [] = sist_linear(A,b)
[L,U] = ludecomp(A)
y = lower(L,b)
x = upper(U,y)
end

function[y]=lower(L,b)
n = length(L);
%y(1) = b(1)/L(1,1);
for i=1:n
    soma = 0.;
    for j = 1:i-1
        soma = soma + L(i,j) * y(j);
    end
    y(i) = (b(i)-soma)/L(i,i);
end
end

function[x]=upper(U,y)
n = length(U);
%x(n) = y(n)/U(n,n);
for i = n:-1:1
    soma = 0.;
    for j = i+1:n
        soma = soma + U(i,j) * x(j);
    end
    x(i) = (y(i)-soma)/U(i,i);
end
end
