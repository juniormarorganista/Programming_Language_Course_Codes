function [ite,T,x,y,z] = poisson3d(x_0,x_f,y_0,y_f,z_0,z_f,caso,ptsx,ptsy,ptsz,erromax,itemax,omega)
  %%% Funcao principal %%%
  deltax  = (x_f - x_0)/(ptsx - 1); deltax2 = deltax*deltax;X = x_0:deltax:x_f;
  deltay  = (y_f - y_0)/(ptsy - 1); deltay2 = deltay*deltay;Y = y_0:deltay:y_f;
  deltaz  = (z_f - z_0)/(ptsz - 1); deltaz2 = deltaz*deltaz;Z = z_0:deltaz:z_f;
  sigma = 2.0/deltax2 + 2.0/deltay2 + 2.0/deltaz2; 
  x = x_0:deltax:x_f; y = y_0:deltay:y_f; z = z_0:deltaz:z_f;
  %%% Condicoes de contorno, termo fonte e solucao analitica
  [T_ana,T,g] = bondary_font(caso,ptsx,ptsy,ptsz,x_0,x_f,y_0,y_f,z_0,z_f,x,y,z);
  T_old = T;
  ite = 1; erro = 100;
  while ((ite < itemax) && (erro > erromax))
    for i = 2:ptsx-1
      for j = 2:ptsy-1
        for k = 2:ptsz-1
          TSI = (T(i+1,j,k) + T(i-1,j,k))/deltax2;
          TSJ = (T(i,j+1,k) + T(i,j-1,k))/deltay2;
          TSK = (T(i,j,k+1) + T(i,j,k-1))/deltaz2;
          TS  = (TSI + TSJ + TSK - g(x(i),y(j),z(k)))/sigma;
          T(i,j,k) = (1.0 - omega)*T(i,j,k) + omega*TS;
        end
      end
    end
    [erro] = cal_erro(T,T_old,T_ana,caso);
    T_old = T;
    ite = ite+1;
  end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Definicao das condicoes de contorno e termo fonte %%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [T_0,T_1,T_2,T_3,T_4,T_5,g] = funcoes_de_condicoes_contorno(caso)
  if (caso == 0)
     g   = @(x,y,z) 0.0;
     T_0 = @(x,y,z) 100.0;
     T_1 = @(x,y,z) 80.0;
     T_2 = @(x,y,z) 0.0;
     T_3 = @(x,y,z) 0.0;
     T_4 = @(x,y,z) 50.0;
     T_5 = @(x,y,z) 0.0;
  else
     g   = @(x,y,z) 2.0*(1.0 - pi*pi*z*z)*cos(pi*x)*sin(pi*y);
     T_0 = @(x,y,z) cos(pi*x)*sin(pi*y)*z*z;
     T_1 = @(x,y,z) cos(pi*x)*sin(pi*y)*z*z;
     T_2 = @(x,y,z) cos(pi*x)*sin(pi*y)*z*z;
     T_3 = @(x,y,z) cos(pi*x)*sin(pi*y)*z*z;
     T_4 = @(x,y,z) cos(pi*x)*sin(pi*y)*z*z;
     T_5 = @(x,y,z) cos(pi*x)*sin(pi*y)*z*z;
  end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Funcoes auxiliares %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Funcoes de contorno
function [T_ana,T,g] = bondary_font(caso,ptsx,ptsy,ptsz,x_0,x_f,y_0,y_f,z_0,z_f,x,y,z)
  %%% Funcoes
  [T_0,T_1,T_2,T_3,T_4,T_5,g] = funcoes_de_condicoes_contorno(caso);
  %%% Chute inical
  T     = ones(ptsx,ptsy,ptsz);
  for j = 1:ptsy
    for k = 1:ptsz
      T(1,j,k)    = T_0(x_0,y(j),z(k));
      T(ptsx,j,k) = T_1(x_f,y(j),z(k));
    end
  end
  for i = 1:ptsx
    for k = 1:ptsz
      T(i,1,k)    = T_2(x(i),y_0,z(k));
      T(i,ptsy,k) = T_3(x(i),y_f,z(k));
    end
  end
  for i = 1:ptsx
    for j = 1:ptsy
      T(i,j,1)    = T_4(x(i),y(j),z_0);
      T(i,j,ptsz) = T_5(x(i),y(j),z_f);
    end
  end
  %%% Solucao analitica
  T_ana = zeros(ptsx,ptsy,ptsz);
  for i = 1:ptsx
    for j = 1:ptsy
      for k = 1:ptsz 
        T_ana(i,j,k) = T_0(x(i),y(j),z(k));
      end
    end
  end
end
%%% Calculo de erro
function [erro] = cal_erro(T,T_old,T_ana,caso)
  if (caso == 0)
    T_aux = T - T_old;
    erro = max(max(max(abs(T_aux))))/max(max(max(max(absT)))),1.0);
  else
    T_aux = T - T_ana;
    erro = max(max(max(abs(T_aux))))/max(max(max(max(abs(T)))),1.0);
  end
end