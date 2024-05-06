function[ucheb,dudycheb,Txxcheb,Txycheb,Tyycheb] = base_LPTT(nosmod,Re1,beta1,Wi1,xi1,epson1)

global n Re Wi beta epson xi Px Txy y

n       = nosmod;
Re      = Re1;
beta    = beta1;
Wi      = Wi1;
xi      = xi1;
epson   = epson1;

warning('off')

y            = linspace(-1,1,n)';
int_desejada = 4/3;
Px           = -1e-3;
PX           = Px;
delta        = 1e-9;

for i = 1:100
  int = calcula_int(PX);
  if abs(int - int_desejada) < 1e-9
    break
  end
  f   = int - int_desejada;
  PX  = PX + delta;
  int = calcula_int(PX);
  f2  = int - int_desejada;
  fl  = (f2 - f)/delta;
  PX  = (PX-delta) - f/fl;
end

%% Interpolando para o domínio de Chebyshev %%
u  = velocidade_teste;
yf = y;
y  = sin(pi*(nosmod-1:-2:1-nosmod)/(2*(nosmod-1))); % Gauss-Lobatto collocation points for Chebyshev points

calcvalues

Txycheb = Txy;

dudycheb = Re * (Px * y' - Txycheb)/beta;

Tyycheb = zeros(n,1);
Txxcheb = zeros(n,1);

for i = 1:n 
    
    Tyycheb(i,1) = -((2*dudycheb(i)*Txycheb(i)*Wi*sqrt(-1 + beta)*xi)/(sqrt(-1 + beta) + ...
                sqrt(-1 + beta + 8*epson*Re*dudycheb(i)*Txycheb(i)*Wi^2*(-1 + xi))));

    Txxcheb(i,1) = (-1 - 2*epson*Re*Tyycheb(i)*Wi + beta - sqrt(-1 + beta)* ...
               sqrt(-1 + beta + 8*epson*Re*dudycheb(i)*Txycheb(i)*Wi^2*(-1 + xi)))/(2*epson*Re*Wi);

end
ucheb = zeros(n,1);
for i = 2:nosmod-1
  for j = 2:n
    if ( y(i) >= yf(j-1) && y(i) <= yf(j) )
      ucheb(i) = -(y(i)-yf(j  ))/(yf(j)-yf(j-1))*u(j-1) ...
                 +(y(i)-yf(j-1))/(yf(j)-yf(j-1))*u(j);
    end
  end
end

end