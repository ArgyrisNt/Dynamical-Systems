%  Graphical iteration of the cubic map.

clear all;
clc;

fsize=15;
nmax=100;halfm=nmax/2;
t=zeros(1,nmax);
t(1)=-0.02;
% t(1)=0.02; % Try also this as initial value
mu=2.9;
bound = sqrt(mu+1);
axis([-bound bound -bound bound]);
for n=1:nmax
    t(n+1)=mu*t(n)-(t(n))^3;
end

for n=1:halfm
    t1(2*n-1)=t(n);
    t1(2*n)=t(n);
end

t2(1)=0;t2(2)=t(2);
for n=2:halfm
    t2(2*n-1)=t(n);
    t2(2*n)=t(n+1);
end
hold on
plot(t1,t2,'r');
fplot('2.9*x-x^3',[-bound bound]);
x=[-bound bound];y=[-bound bound];
plot(x,y,'g');
hold off
set(gca,'xtick',[-bound bound],'Fontsize',fsize)
set(gca,'ytick',[-bound bound],'Fontsize',fsize)
xlabel('x','Fontsize',fsize)
ylabel('f_{\mu}','Fontsize',fsize)

% End of Program