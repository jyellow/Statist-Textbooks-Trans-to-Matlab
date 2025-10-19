% Gaussian quadrature formula of order 4
%    value = gauss2(x,n,h,fcn)
% This function is called by the script mat13_1.m.
%
% Input:
% x ... grid points of equidistant partition of interval
% n ... number of subintervals of partition
% h ... length of subintervals
% fcn ... the function to be integrated
%
% Output: 
% value ... approximation to the integral by means of quadrature formula

function value = gauss2(x,n,h,fcn)
value = 0;
hh = h/2;
c1 = 1/2-sqrt(3)/6;
c2 = 1/2+sqrt(3)/6;
for j=1:n
   node(1) = x(j)+h*c1;
   node(2) = x(j)+h*c2;
   f = feval(fcn,node);
   value = value+hh*(f(1)+f(2));
end
   