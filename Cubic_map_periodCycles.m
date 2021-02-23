% Period 2 and 4 cycles for cubic map

clear all;
clc;

% Choose these values to see what is happening, before period-2 cycle's 
% construction
% r=1.5;
% iter=2;

% Choose these values for period-2 cycle
r=2.1;
iter=2;

% Choose these values for period-4 cycle
% r=2.3;
% iter=4;

bound = sqrt(r+1);
x=-bound:0.001:bound;
for n=1:iter
    f=r*x-x.^3;
    x=f;
end
area=-bound:0.001:bound;
plot(area,f,'b')
hold on
plot(area,area)