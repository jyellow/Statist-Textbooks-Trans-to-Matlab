% Gaussian quadrature formula of order 6
%    value = gauss3(x,n,h,fcn)
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

function value = gauss3(x,n,h,fcn)
value = 0;
c1 = 1/2-sqrt(15)/10;
c3 = 1/2+sqrt(15)/10;
for j=1:n
   node(1) = x(j)+h*c1;
   node(2) = x(j)+h/2;
   node(3) = x(j)+h*c3;
   f = feval(fcn,node);
   value = value+h*(5*f(1)+8*f(2)+5*f(3))/18;
end
   