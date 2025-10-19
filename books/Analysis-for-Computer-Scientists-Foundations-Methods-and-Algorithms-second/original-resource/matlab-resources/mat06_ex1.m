% Instructions for Exercise 1, Chapter 6: 
% plots and determination of limits,
% example (sin x)^2/(3x^2)

x1 = -2:0.01:-0.01;  % x-values to the left of x = 0
x2 = 0.01:0.01:2;  % x-values to the rigt of x = 0
y1 = (sin(x1).^2)./(3*x1.^2);  % y-values to the left of x = 0
y2 = (sin(x2).^2)./(3*x2.^2);  % y-values to the right of x = 0
plot(x1,y1,x2,y2)