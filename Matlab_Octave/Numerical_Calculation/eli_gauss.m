function[x]=eli_gauss(a,b)
n = length(a);
% inicio da verificacao
for i = 1:n
    mat = a(1:i,1:i);
    if (det(mat)==0)
        fprintf('Nao eh possivel decompor a matriz \n')
        return
    end
end
fprintf('Eh possivel decompor a matriz \n')
% fim da verifica��o
for k = 1:n-1
    for i = k+1:n
        fat = a(i,k)/a(k,k);
        for j = k:n
            a(i,j) = a(i,j) - a(k,j)*fat;
        end
        b(i) = b(i) - b(k)*fat; 
    end
end
a
b
x = upper(a,b);
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