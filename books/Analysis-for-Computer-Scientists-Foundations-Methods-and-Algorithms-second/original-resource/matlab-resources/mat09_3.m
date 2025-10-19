% This program visualises a Julia set
% (cf. Chapter 9.3).
%
% The axis window is defined by means of the following parameters:
% ux = smallest x-coordinate
% ox = largest x-coordinate
% nx = number of grid points on the x-axis
% uy = smallest x-coordinate
% oy = largest x-coordinate
% ny = number of grid points on the y-axis
%
% the parameter kmax determines the number of iterations;
% the parameter c has the same meaning as in the textbook.

ux = -1.8;
ox = 1.8;
nx = 400;
x = linspace(ux,ox,nx);
uy = -1.15;
oy = 1.15;
ny = 255;
y = linspace(uy,oy,ny);
[xx,yy] = meshgrid(x,y);
kmax = 80;
w = xx+sqrt(-1)*yy;
c = -1.25
% c = -0.75
% c = 0.35+0.35*sqrt(-1)
% c = -0.03+0.655*sqrt(-1)
% c = -0.12+0.74*sqrt(-1)
% c = 0.365-0.3*sqrt(-1)
for k = 1:kmax
  k
  w = w.^2+c;
end
w = min(100,abs(w));
colormap(gray)
image([ux ox], [uy oy], w)
axis equal
