% Instructions for Exercise 2.3, plotting the absolute value function y = |x|.
% Plotting the function n --> n^2 - n + 3.

% absolute value function

figure(1)
x = -2:0.01:2;
y = abs(x);
plot(x,y)

% translated absolute value function

figure(2)
x = -2:0.01:2;
y = abs(x - 1) - 2;
plot(x,y)

% plot of a sequence

figure(3)
n = 1:10;
a = n.^2 - n + 3;
plot(n,a,'*')
