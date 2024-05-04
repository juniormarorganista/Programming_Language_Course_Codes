function [autval,V] = rot_jac(A,errmax,itemax)
  format long;
  n = length(A);
  V = eye(n);
  %autval = diag(A);
  ite = 0;
  err = 1.0;
  if (A == A')
    while(err > errmax)
      U = eye(n);
      maxaux = 0.0;
      for i = 1:n-1
        for j = i+1:n
          aux = abs(A(i,j));
          if(aux > maxaux)
            maxaux = aux;
            p = i;
            q = j;
          end
        end
      end
      
      phi = (A(q,q) - A(p,p))/(2.0*A(p,q));
      
      if (phi == 0.0)
        t = 1.0;
      else
        t = 1.0/(phi + (phi/abs(phi))*sqrt(phi*phi + 1));
      end
      
      c = 1.0/sqrt(1 + t*t);
      s = t*c;
      
      U(p,p) = c;
      U(q,q) = c;
      U(p,q) = s;
      U(q,p) = -s;
      
      A = U'*A*U;
      V = V*U;
      
      err = maxaux;
      ite = ite + 1;
      if(ite == itemax)
        break;
      end
    end
    autval = diag(A);
    err
    ite
  else
    disp("Tente outra matriz seu tonto!!!")
    return;
  end
  end
