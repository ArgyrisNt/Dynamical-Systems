% 
% Bifurcation diagram of the logistic map.
% Plot a bifurcation diagram 
% Plot 30 points for each r value.

clear
itermax=100;
finalits=30;finits=itermax-(finalits-1);
for r=0:0.005:5
    x=0.38;
    xo=x;
    for n=2:itermax
        xn=r*xo*(1-xo);
        x=[x xn];
        xo=xn;
    end
    plot(r*ones(finalits),x(finits:itermax),'.','MarkerSize',1)
    hold on
end
fsize=15;
set(gca,'xtick',[0:1:4],'FontSize',fsize)
set(gca,'ytick',[0,0.5,1],'FontSize',fsize)
xlabel('{\mu}','FontSize',fsize)
ylabel('\itx','FontSize',fsize)
hold off

% End of Program