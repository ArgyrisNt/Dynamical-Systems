% Period 2 and 4 cycles for logistic map

clear all;
clc;

% Choose these values for period-2 cycle
r=3.3;
iter=2;

% Choose these values for period-4 cycle
% r=3.5;
% iter=4;

x=0:0.001:1;
for n=1:iter
    f=r*x.*(1-x);
    x=f;
end
area=0:0.001:1;
plot(area,f,'b')
hold on
plot(area,area)
