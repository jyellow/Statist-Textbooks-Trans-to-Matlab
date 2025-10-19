% This program visualises a Mandelbrot set
% (cf. Chapter 9.2).
%
% The axis window is defined by means of the following parameters:
% ux = smallest x-coordinate
% ox = largest x-coordinate
% nx = number of grid points on the x-axis
% uy = smallest x-coordinate
% oy = largest x-coordinate
% ny = number of grid points on the y-axis
%
% the parameter kmax determines the number of iterations

ux = -2;
ox = 1;
nx = 600;
x = linspace(ux,ox,nx);
uy = -1.15;
oy = -uy;
ny = 461;
y = linspace(uy,oy,ny);
[xx,yy] = meshgrid(x,y);
kmax = 80;
c = xx+sqrt(-1)*yy;
z = zeros(size(c));
for k = 1:kmax
    k
    z = z.^2+c;
end
z = min(100,abs(z));
colormap(gray)
image([ux ox], [uy oy], z);
axis equal
