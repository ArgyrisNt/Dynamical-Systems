% Bifurcation diagram of the cubic map.
% Plot a bifurcation diagram 
% Plot 30 points for each r value.

clear all
clc;

itermax=100;
finalits=30;finits=itermax-(finalits-1);
for r=0:0.005:3
    x=-0.5;
    xo=x;
    for n=2:itermax
        xn=r*xo-xo^3;
        x=[x xn];
        xo=xn;
    end
    plot(r*ones(finalits),x(finits:itermax),'.','MarkerSize',1)
    hold on
    
    x=0.5;
    xo=x;
    for n=2:itermax
        xn=r*xo-xo^3;
        x=[x xn];
        xo=xn;
    end
    plot(r*ones(finalits),x(finits:itermax),'.','MarkerSize',1)
end
fsize=15;
set(gca,'xtick',[0:1:3],'FontSize',fsize)
set(gca,'ytick',[-3:0.5:3],'FontSize',fsize)
xlabel('{\mu}','FontSize',fsize)
ylabel('\itx','FontSize',fsize)
hold off

% End of Program