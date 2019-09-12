%% Smith_chart_calculator
%Description:
%   To calculate Reflexion Coefficient, VSWR and Return Loss
%   (because Matlab Tools need "RF Toolbox" or "Antenna Toolbox").
%
%Parameters:
%   - Z0 = Impédance caractéristique
%   - Zt = Impédance de la charge
%
%Retour:
%   - Coefficient de Réflexion: m*e^(thd degree)
%   - VSWR = SWR
%   - Return Loss = rloss
%
%Note - truc ajouté:
%   J'ai ajouté la possibilité d'afficher plusieurs point pour différentes
%   valeur de Zt qui change (ex.: Devoir #2 d'ELE412: Question 3 e) où la
%   distance D dans le calcul de Zin_cc (court-circuit) variait de 1.5m à
%   5.6 mètres).
%
%   Grâce à cela, il est possible d'envoyer Zt et Z0 sous la forme de
%   vecteur et d'afficher le résulat obtenue graphiquement tout sur le même
%   graphique.
%
%Source:
%   - http://www.matrixlab-examples.com/smith-chart.html (25 mars 2017)
%
%-------------------------

function [z_normalised,m, thd, SWR, rloss] = Smith_chart_calculator(Z0, Zt)
    %Draw the Smith Chart
    draw_smith_chart
    
    %Normalizr give impendance
    z_normalised = Zt./Z0;
    
    %Calculate reflection, magnitude and angle
    g = (z_normalised - 1)./(z_normalised + 1);
    m = abs(g); %rho, the norm
    th = angle(g); %theta, the angle
    
    hold on
    %Plot approriate point
    if(isvector(z_normalised))
        %Source 1:
        %http://stackoverflow.com/questions/4140312/labeling-points-in-order-in-a-plot
        %(consulte le 1er avril 2017)
        %
        %Source 2 (aide pour comprendre text):
        %http://stackoverflow.com/questions/31072992/putting-text-on-polar-plot 
        %(consulte le 1er avril 2017)
        labels = cellstr( num2str([1:10]') );  %' # labels correspond to their order
        polar(th,m,'r*')
        
        %text(x,y,texte,...)
        txt_x = m.*cos(th);
        txt_y = m.*sin(th);
        text(txt_x, txt_y, labels,'VerticalAlignment','bottom', 'HorizontalAlignment','right','Color','red');
    else
        %No texte if only 1 point.
        polarplot(th,m,'r*')
    end
    polar(th,m,'*')
    
    %Change radians to degrees
    thd  = th*180./pi;
    
    %Calculate VSWR and return loss.
    %We can add epsilon to magnitude, to avoid div by 0 or log(0)
    SWR = (1+m)./(1-m+eps);
    rloss = -20*log10(m+eps);
    
    hold off %Pour remettre comme avant.
    
end