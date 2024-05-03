function[L,U,b] = lu_decomposition_pivo(A,b=0)

n = length(A); % n = tamanho de A

for k = 1:n-1
    % Verificacao
    Aux = A(1:k,1:k);
    i   = 1;
    pos = k;
    while (det(Aux) == 0 && pos <= n)
        % troca de linhas
        pos       = k + i;
        linha_aux = A(k,:);
        b_aux     = b(k);
        A(k,:)    = A(pos,:);
        A(pos,:)  = linha_aux;
        b(k)      = b(pos);
        b(pos)    = b_aux;
        Aux       = A(1:k,1:k);
        i         = i + 1;
    end
    if (det(Aux) == 0)
        disp('Nao eh possivel decompor A em L U')
        return
    end
end
disp('Decompondo A em L*U')
U = zeros(n);
L = eye(n);
% Decomposicao de A em L U
for lc = 1:n
    % Calculo de linhas de U
    for j = lc:n
        soma = 0;
        for k = 1:lc-1
            soma = soma + L(lc,k)*U(k,j);
        end
        U(lc,j) = A(lc,j) - soma;
    end
    % Calculo de colunas de L
    for i = lc+1:n
        soma = 0;
        for k = 1:lc-1
            soma = soma + L(i,k)*U(k,lc);
        end
        L(i,lc) = (A(i,lc)-soma)/U(lc,lc);
    end
end
end