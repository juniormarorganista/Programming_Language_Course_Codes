function[] = plotpoisson3d(vector_omega,vector_ite,b,ptsz,X,Y,Z,T,erromax)

    ptsz_plot0 = round(1);
    ptsz_plot1 = round(ptsz/4);
    ptsz_plot2 = round(ptsz/2);
    ptsz_plot3 = round(3*ptsz/4);
    ptsz_plot4 = round(ptsz);
    
    min_t = min(min(min(T)));
    max_t = max(max(max(T)));
    
    figure(1)
        subplot(4,3,1)
        surf(X,Y,T(:,:,ptsz_plot0))
        grid
        colormap jet
        caxis([min_t max_t])
        colorbar
        title(['z = ' num2str(Z(ptsz_plot0))])
        xlabel('x')
        ylabel('y')

        subplot(4,3,2)
        contourf(X,Y,T(:,:,ptsz_plot1))
        grid
        colormap jet
        caxis([min_t max_t])
        colorbar
        title(['z = ' num2str(Z(ptsz_plot1))])
        xlabel('x')
        ylabel('y')

        subplot(4,3,3)
        contourf(X,Y,T(:,:,ptsz_plot2))
        grid
        colormap jet
        caxis([min_t max_t])
        colorbar
        title(['z = ' num2str(Z(ptsz_plot2))])
        xlabel('x')
        ylabel('y')

        subplot(4,3,4)
        contourf(X,Y,T(:,:,ptsz_plot3))
        grid
        colormap jet
        caxis([min_t max_t])
        colorbar
        title(['z = ' num2str(Z(ptsz_plot3))])
        xlabel('x')
        ylabel('y')

        subplot(4,3,5)
        contourf(X,Y,T(:,:,ptsz_plot4))
        grid
        colormap jet
        caxis([min_t max_t])
        colorbar
        title(['z = ' num2str(Z(ptsz_plot4))])
        xlabel('x')
        ylabel('y')

        subplot(4,3,[7,12])
        plot(vector_omega,vector_ite,'--m',vector_omega(b),vector_ite(b),'+b')
        axis([0 2 0 max(vector_ite)+10])
        grid
        title(['Fator de relaxação (\omega) com erromax = ' num2str(erromax)])
        xlabel('\omega')
        ylabel('Iterações')
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    figure(2)
        subplot(4,3,1)
        surf(X,Y,T(:,:,ptsz_plot0))
        grid
        colormap jet
        caxis([min_t max_t])
        colorbar
        title(['z = ' num2str(Z(ptsz_plot0))])
        xlabel('x')
        ylabel('y')

        subplot(4,3,2)
        surf(X,Y,T(:,:,ptsz_plot1))
        grid
        colormap jet
        caxis([min_t max_t])
        colorbar
        title(['z = ' num2str(Z(ptsz_plot1))])
        xlabel('x')
        ylabel('y')

        subplot(4,3,3)
        surf(X,Y,T(:,:,ptsz_plot2))
        grid
        colormap jet
        caxis([min_t max_t])
        colorbar
        title(['z = ' num2str(Z(ptsz_plot2))])
        xlabel('x')
        ylabel('y')

        subplot(4,3,4)
        surf(X,Y,T(:,:,ptsz_plot3))
        grid
        colormap jet
        caxis([min_t max_t])
        colorbar
        title(['z = ' num2str(Z(ptsz_plot3))])
        xlabel('x')
        ylabel('y')

        subplot(4,3,5)
        surf(X,Y,T(:,:,ptsz_plot4))
        grid
        colormap jet
        caxis([min_t max_t])
        colorbar
        title(['z = ' num2str(Z(ptsz_plot4))])
        xlabel('x')
        ylabel('y')

        subplot(4,3,[7,12])
        plot(vector_omega,vector_ite,'--r',vector_omega(b),vector_ite(b),'*m')
        axis([0 2 0 max(vector_ite)+10])
        grid
        title(['Fator de relaxação (\omega) com erromax = ' num2str(erromax)])
        xlabel('\omega')
        ylabel('Iterações')
        
end