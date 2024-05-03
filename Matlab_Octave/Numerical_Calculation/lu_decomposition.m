function[L,U] = lu_decomposition(A)

n = length(A); % n = tamanho de A

% Verificacao com o determinante das menores
for k = 1:n-1
  Aux = A(1:k,1:k);
  d   = det(Aux);
  if (d==0)
    disp('Não é possível decompor A em L U')
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
