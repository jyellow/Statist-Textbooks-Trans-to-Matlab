% Hint for Exercise 3, Chapter 6:
% input of value n using the command mat06_ex3(n);
% output - plots of atan(n*x) and (1+x^2)^(-n) 
% on the interval [-5 5].

function fct(n)
x = -5:0.001:5;
figure
plot(x,atan(n*x))
figure
plot(x,1./(1+x.^2).^n)
axis([-5 5 -0.5 1.5])
