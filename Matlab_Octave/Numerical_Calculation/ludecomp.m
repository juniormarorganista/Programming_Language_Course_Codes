function[l,u]=ludecomp(a)
n = length(a);
u = zeros(n,n);
l = eye(n,n);
% inicio da verificacao
for i = 1:n-1
    mat = a(1:i,1:i);
    if (det(mat)==0)
        fprintf('Nao eh possivel decompor a matriz \n')
        return
    end
end
fprintf('Eh possivel decompor a matriz \n')
% fim da verifica��o
for h = 1:n
    for j = h:n
        soma = 0.;
        for k = 1:h-1
            soma = soma + l(h,k)*u(k,j);
        end
        u(h,j) = a(h,j)-soma;
    end
    for i = h+1:n
        soma = 0.;
        for k = 1:h-1
            soma = soma + l(i,k)*u(k,h);
        end
        l(i,h) = (a(i,h)-soma)/u(h,h);
    end
end
end