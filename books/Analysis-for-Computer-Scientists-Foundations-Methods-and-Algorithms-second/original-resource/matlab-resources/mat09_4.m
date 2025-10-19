% This program visualises the regions of attraction when
% computing the zeros of z^3-1 = 0 by means of Newton's method 
% (cf. Chapter 9.4).
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
ox = 2;
nx = 401;
uy = -1.5;
oy = 1.5;
ny = 301;
xx = linspace(ux, ox, nx);
yy = linspace(uy, oy, ny);
[x,y] = meshgrid(xx,yy);
c = zeros(ny,nx);
for i = 1:ny
  for j = 1:nx
    z = x(i,j)+sqrt(-1)*y(i,j);
    for k = 1:50
      z = z-(z^3-1)/(3*z^2);
    end
    if (abs(z-1)<1e-4)
      c(i,j,:) = 1;
    elseif (abs(z-(-1+sqrt(-3))/2)<1e-4)
      c(i,j,:) = 2;
    elseif (abs(z-(-1-sqrt(-3))/2)<1e-4)
      c(i,j,:) = 3;
    end
  end
end
colormap([1 0 0; 0 1 0; 0 0 1])
image([ux ox], [uy oy], c)
axis equal
