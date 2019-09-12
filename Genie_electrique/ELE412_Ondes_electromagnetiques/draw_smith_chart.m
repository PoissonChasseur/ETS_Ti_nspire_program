%% Draw_Smith_Chart
%Description:
%   Function to drasw Smith Chart (Matlab tools need "RF Toolbox" or
%   "Antenna Toolbox").
%
%Source:
%   - http://www.matrixlab-examples.com/smith-chart.html (25 mars 2017)
%
%----------------

function draw_smith_chart()
    %Parameters for the precision selected
    nb_horizontal_circle = 5;
    %nb_vertical_circle = 100;

    %Caracteristic for the figure
    figure
    hold on %each "plot" execution will draw at the same figure.
    title(' Smith Chart ')
    set(gca,'xticklabel')
    set(gca,'yticklabel')
    axis equal;
    %-------------------------------------------
    %Select the centers of the horizontal circle
    xc = linspace(0,1,nb_horizontal_circle);
    yc = 0;
    %Plot the horizontal circles
    for i = 1:length(xc)
       plot_circle(xc(i), yc, 1-xc(i), 0, 2*pi, 360);
    end
    
    %-------------------------------------------
    %Iterathe thru the vertical circle with appropraite angle and radii
    xc = 1;
    yc = [0.5, 1, 2, 4]; %yc and r of 1/2 circle
    %yc = linspace(0.5,4,4);
    
    %choose starting point
    a1 = [2.5, pi, 3.79, 4.22];
    %a1 = linspace(0,pi/2,5);
    
    for i = 1:length(yc)
        %Upper arc
        plot_circle(xc, yc(i), yc(i), a1(i), 3/2*pi, 360);
        
        %Lowe arcs
        plot_circle(xc, -yc(i), yc(i), pi/2, 2*pi-a1(i), 360); 
    end
    
    %Ligne du milieu entre le haut et le bas de l'Abaque de Smith
    plot([1,-1],[0,0],'linewidth',1,'color','k');
    
   % hold off %Replace like before.
end

%% Draw Circle
%Description:
%   Draw 1 circle.
%
%Parameters:
%   - center: (xc, yc)
%   - Radis: r
%   - starting point (angle in radian): a1
%   - final point (angle in radian): a2
%   - number of point: nb_points
%Source:
%   - Video at: http://www.matrixlab-examples.com/smith-chart.html (25 mars 2017)
%---------
function plot_circle(xc, yc, r, a1, a2, nb_points)
    t = linspace(a1, a2, nb_points);
    x = xc + r*cos(t);
    y = yc + r*sin(t);
    plot(x,y,'linewidth',1,'color','k');
end

%% Draw_Smith_chart original of the source (not customed)
%
% function draw_smith_chart_original()
%     % Draw outer circle
%     t = linspace(0,2*pi,100);
%     x = cos(t);
%     y = sin(t);
%     figure
%     plot(x,y,'linewidth',3); axis equal;
%     
%     %Place title and remove ticks from axes
%     title(' Smith Chart ')
%     %set(gca,'xticklabel',{[]}) %clear number on xticklabel
%     %set(gca,'yticklabel',{[]}) %clear number on yticklabel
%     set(gca,'xticklabel')
%     set(gca,'yticklabel')
%     hold on %To have all "plot" execution in the same graph.
%     
%     %Draw circles along horizontal axis:
%     k = [.25 .5 .75]; 
%     for i = 1 : length(k)
%         x(i,:) = k(i) + (1 - k(i)) * cos(t);
%         y(i,:) = (1 - k(i)) * sin(t);
%         plot(x(i,:), y(i,:), 'k')
%     end
%     
%     %Draw partial circles along verical axis
%     kt = [2.5 pi 3.79 4.22];
%     k = [.5 1 2 4];
%     for i = 1 : length(kt)
%         t = linspace(kt(i), 1.5*pi, 50);
%         a(i,:) = 1 + k(i) * cos(t);
%         b(i,:) = k(i) + k(i) * sin(t);
%         plot(a(i,:), b(i,:),'k:', a(i,:), -b(i,:),'k:' )
%     end
%     hold off %Replacer comme avant - surement inutile.
% end
