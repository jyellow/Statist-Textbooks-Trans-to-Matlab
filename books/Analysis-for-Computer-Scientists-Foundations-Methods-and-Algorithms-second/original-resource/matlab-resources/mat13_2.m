% Gaussian quadrature formula of order 2
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

function value = gauss1(x,n,h,fcn)
hh = h/2;
value = 0;
for j=1:n
   value = value+h*feval(fcn,x(j)+hh);
end