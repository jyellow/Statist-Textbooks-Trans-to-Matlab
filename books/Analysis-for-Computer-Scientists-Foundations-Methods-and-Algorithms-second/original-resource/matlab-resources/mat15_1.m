% Visualisation of a surface in space (Experiment 15.2)

set(gcf, 'Units', 'centimeters', 'Position', [1 6 20 8])
%
x = -5:0.5:5;
y = -5:0.5:5;
[X,Y] = meshgrid(x,y);
Z = X.^2/6-Y.^2/7+X/3;
%
% the first image
%
subplot(1,2,1)
% mesh(X,Y,Z)
surf(X,Y,Z)
axis([-5 5 -5 5 -5 5])
%
% the second image
%
subplot(1,2,2)
contour(X,Y,Z,14)
axis([-5 5 -5 5])
axis equal