%function[] = LST_spatial_channel_ptt_2D()
%% simple 2D code for spatial stability analysis of chanenel flow 
%% for viscoelasticity Oldroyd-b model

%% parameters
vecbetann = [0.9 0.8 0.7 0.6 0.5];    % Viscoelasticity model variable
vecWi     = [1.0 2.0 5 10 20 50 100]; % Weisenberg number
vecxi     = [0 0.25 0.5];             % LPTT constant
vecepson  = [0.5 0.75 10];            % LPTT constant

nosmod = 121;  % number of Chebyshev equations (modes)

%% differentiation matrices
[y,A] = chebdif(nosmod,2);
Dy    = squeeze(A(:,:,1)); % first derivative equations
Dy2   = squeeze(A(:,:,2)); % second derivative equations
Id    =   eye(nosmod,nosmod); 
zero  = zeros(nosmod,nosmod);



vecbetann = [0.9 0.8 0.7 0.6 0.5];    % Viscoelasticity model variable
vecWi     = [1.0 2.0 5 10 20 50 100]; % Weisenberg number
vecxi     = [0 0.25 0.5];             % LPTT constant
vecepson  = [0.5 0.75 10];            % LPTT constant

for kbeta = 1:length(vecbetann)
 betann = vecbetann(kbeta);
 for kWi = 1:length(vecWi) 
  Wi = vecWi(kWi);
  for kxi = 1:length(vecxi) 
   xi = vecxi(kxi);
   for kepson = 1:length(vecepson)
    epson = vecepson(kepson);
    for Re = 4000:100:10000 % Reynolds number loop
 
     %% base flow
     [U,dUdy,Txxb,Txyb,Tyyb] = base_LPTT(nosmod,Re,betann,Wi,xi,epson);
     
     dTxxbdy = Dy * Txxb;
     dTxybdy = Dy * Txyb;
     dTyybdy = Dy * Tyyb;
   
     U       = diag(U);
     dUdy    = diag(dUdy);
     Txxb    = diag(Txxb);
     Txyb    = diag(Txyb);
     Tyyb    = diag(Tyyb);
     dTxxbdy = diag(dTxxbdy);
     dTxybdy = diag(dTxybdy);
     dTyybdy = diag(dTyybdy);
     
     cte     = epson * Re * Wi / (1 - betann);
   
     %% operators for 2D linearised Navier-Stokes equation
           
     varTxx_u    = - 2*Wi*Txyb*Dy + Wi*xi*Txyb*Dy;
     varTxx_v    = + Wi*dTxxbdy*Id + Wi*Txxb*Dy;
     varTxx_Txy  = - 2*Wi*dUdy*Id + Wi*xi*dUdy*Id;
     varTxx_Tyy  = + cte*Txxb*Id;
     varTxx_au   = - 1i*Wi*Txxb*Id + 2*1i*Wi*xi*Txxb*Id + 2*1i*(1 - betann)/Re*Id;
     varTxx_av   = + 1i*Wi*xi*Txyb*Id;
     varTxx_aTxx = + 1i*Wi*U*Id;
       
     varTxy_u      = + 1/2*Wi*xi*Txxb*Dy - Wi*Tyyb*Dy + 0.5*Wi*xi*Tyyb*Dy;
     varTxy_v      = + Wi*dTxybdy*Id + Wi*Txyb*Dy;
     varTxy_Txx    = + cte*Txyb*Id + 0.5*Wi*xi*dUdy*Id;
     varTxy_Tyy    = + cte*Txyb*Id - Wi*dUdy*Id + 0.5*Wi*xi*dUdy*Id;
     varTxy_au     = + 1i*Wi*Txyb*Id; 
     varTxy_av     = - 1i*Wi*Txxb*Id + 0.5*Wi*xi*Txxb*Id + 0.5*1i*Wi*xi*Tyyb*Id + (1 - betann)/Re*Id; 
     varTxy_aTxy   = + 1i*Wi*U*Id;
     
     varTyy_u    = + Wi*xi*Txyb*Dy;
     varTyy_v    = + Wi*dTyybdy*Id - Wi*Tyyb*Dy + 2*Wi*xi*Tyyb*Dy + 2*(1 - betann)/Re*Dy;
     varTyy_Txx  = + cte*Tyyb*Id;
     varTyy_Txy  = + Wi*xi*dUdy*Id;
     varTyy_au   = + 1i*Wi*Tyyb*Id; 
     varTyy_av   = - 2*1i*Wi*Txyb*Id + 1i*Wi*xi*Txyb*Id;
     varTyy_aTyy = + 1i*Wi*U*Id;
   
     for omega = 0.05:0.01:0.6 % real angular frequency loop
       
       var         = -1i*omega*Id - (betann/Re)*Dy2;
       varTxx_Txx  = + Id + 2*cte*Txxb*Id + cte*Tyyb*Id - 1i*omega*Wi*Id;
       varTxy_Txy  = + Id + cte*Txxb*Id + cte*Tyyb*Id - 1i*omega*Wi*Id;
       varTyy_Tyy  = + Id + cte*Txxb*Id + 2*cte*Tyyb*Id - 1i*omega*Wi*Id; 
       
       L = [zero          zero            Dy           zero            zero   zero       zero        zero;       % continuity
            var           zero            dUdy         zero            zero   zero       -Dy         zero;       % QDM x
            zero          Id              zero         zero            zero   zero       zero        zero;       % alpha u
            zero          zero            var          zero            Dy     zero       zero        -Dy ;       % QDM y
            zero          zero            zero         Id              zero   zero       zero        zero;       % alpha v
            varTxx_u      zero            varTxx_v     zero            zero   varTxx_Txx varTxx_Txy  varTxx_Tyy; % Eq. Txx
            varTxy_u      zero            varTxy_v     zero            zero   varTxy_Txx varTxy_Txy  varTxy_Tyy; % Eq. Txy
            varTyy_u      zero            varTyy_v     zero            zero   varTyy_Txx varTyy_Txy  varTyy_Tyy]; % Eq. Tyy
            
           
       F = [-1i*Id        zero            zero            zero            zero   zero        zero       zero;     % continuity
            -1i*U         -(betann/Re)*Id zero            zero            -1i*Id 1i*Id       zero       zero;     % QDM x
             Id           zero            zero            zero            zero   zero        zero       zero;     % alpha u
             zero         zero            -1i*U           -(betann/Re)*Id zero   zero        1i*Id      zero;     % QDM y
             zero         zero            Id              zero            zero   zero        zero       zero;     % alpha v
             varTxx_au    zero            varTxx_av       zero            zero   varTxx_aTxx zero       zero;     % Eq. Txx
             varTxy_au    zero            varTxy_av       zero            zero   varTxy_aTxy zero       zero;     % Eq. Txy
             varTyy_au    zero            varTyy_av       zero            zero   varTyy_aTyy zero       zero];     % Eq. Tyy
       
       % L*[u; alpha*u; v; alpha*v; p; Txx; Txy; Tyy] = alpha*F*[u; alpha*u; v; alpha*v; p; Txx; Txy; Tyy]
   
       
       % Continuity Equation: 
       % i alpha u + dvdy = 0
       
       % QDM x equation: 
       % i alpha U u - i omega u + dUdy v  = - i alpha p + betann/Re ( d2udy2 - alpha^2 u ) + i alpha Txx + dTxy/dy
       
       % QDM y equation: 
       % i alpha U v - i omega v  = - dpdy + betann/Re ( d2vdy2 - alpha^2 v ) + i alpha Txy + dTyy/dy 
       
       % Tensor Txx equation  
       % 2 cte Txxb Txx + cte Tyyb Txx  + cte Txxb Tyy - i omega Wi Txx +
       % + Wi dTxxbdy v - 2 Wi dUdy Txy + Wi xi dUdy Txy - 2 Wi Txyb du/dy +
       % + Wi xi Txyb du/dy + Wi Txxb dv/dy + i alpha Wi U Txx +
       % - i alpha Wi Txxb u + 2 i alpha Wi xi Txxb u + i alpha Wi xi Txyb v
       % = 2 i alpha (1 - betann) / Re u    
       
       % Tensor Txy equation 
       % cte Txyb Txx + cte Txxb Txy + cte Tyyb Txy + cte Txyb Tyyp - i omega Wi Txy + 
       % + Wi dTxybdy v + 1/2 Wi xi dUdy Txx - Wi dUdy Tyyp + 1/2 Wi xi dUdy Tyy + 
       % + 1/2 Wi xi Txxb du/dy - Wi Tyyb du/dy +
       % + 1/2 Wi xi Tyyb du/dy + Wi Txyb dv/dy + i alpha Wi U Txy + i alpha Wi Txyb u + 
       % - i alpha Wi Txxb v + i alpha 1/2 Wi xi Txxb v + i alpha Wi xi Tyyb vp = 
       % = (1-betann) / Re * (du/dy + i alpha v)
      
       % Tensor Tyy equation 
       % cte Tyyb Txx + cte Txxb Tyy + 2 cte Tyyb Tyy + 
       % -i omega Wi Tyy + Wi dTyybdy v + Wi xi dUdy Txy + Wi xi Txyb du/dy + 
       % - Wi Tyyb dv/dy + 2 Wi xi Tyyb dv/dy + 
       % + i alpha Wi U Tyy + i alpha Wi Tyyb u - 2 i alpha Wi Txyb v + i alpha Wi xi Txyb v = 
       % = 2 (1 - betann) / Re dv/dy
       
       %% boundary conditions
       % vector y goes from 1 to -1, i.e. y(1)=1, y(nosmod)=-1
       % replace first and last rows of x-momentum eq. by u(\pm 1)=0
       L(nosmod+1,:)        = 0;
       L(nosmod+1,nosmod+1) = 1;
       F(nosmod+1,:)        = 0; % u(y = 1) = 0
       L(2*nosmod,:)        = 0;
       L(2*nosmod,2*nosmod) = 1;
       F(2*nosmod,:)        = 0; % u(y = -1) = 0
   
       % replace first and last rows of y-momentum eq. by v(\pm 1)=0
       L(3*nosmod+1,:)          = 0;
       L(3*nosmod+1,2*nosmod+1) = 1;
       F(3*nosmod+1,:)          = 0; % v(y = 1) = 0
       L(4*nosmod,:)            = 0;
       L(4*nosmod,3*nosmod)     = 1;
       F(4*nosmod,:)            = 0; % v(y = -1) = 0
       
       % solve the eigenvalue problem
       [eigenvec,eigenval] = eig(L,F);
       alpha               = diag(eigenval);
   
       % find eigenvalues and eigenfunctions in a specified region
       [alpharef,eigenvecref] = refinemodos(alpha,eigenvec,omega);
       % sort the eigenvalues and eigenfunctions in ascending order
       [alpha,eigenvec] = sortmode(alpharef,eigenvecref);
   
   %    alpha(1)
       %plotresults(alpha,eigenvec,nosmod,y)
       dlmwrite(strcat('curva_',num2str(betann),'_',num2str(Wi),'_',num2str(xi),'_',num2str(epson),'.dat'),[Re omega real(alpha(1)) imag(alpha(1))],'-append');

      end
     end
    end
   end
  end
end
%end
