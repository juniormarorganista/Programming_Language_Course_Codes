function [u] = velocidade_teste

global n Re beta Txy y Px

npts = n;

rhs = Re * (Px * y - Txy) / beta;

dx = abs(y(2) - y(1));

u(1) = 0;
u(npts) = u(1);

u(2) = ( dx * ( 251 * rhs(1)   + 646 * rhs(2) ...
              - 264 * rhs(3)   + 106 * rhs(4) ...
              -  19 * rhs(5) ) + 720 * u(1) ) / 720;
u(npts-1) = u(2);
          
for j = 3 : (npts-1)/2 + 1
        
   u(j) = ( dx * (  281 * rhs(j-2) + 2056 * rhs(j-1) ...
          + 1176 * rhs(j)   -  104 * rhs(j+1) ...
          +   11 * rhs(j+2) ) / 90 ...
          +   11 *   u(j-2) + 16 * u(j-1) )/27;
   
   u(npts-j+1) = u(j);
      
end

end