% Bisection method for cubic equations of the form 
% f(x) = x^3 + c(1)*x^2 + c(2)*x + c(3) = 0.
% Output: root "xi" und list "interval" of the interval boundaries of the iteration.
% Input: vector of coefficients c = [c(1), c(2), c(3)];
% tol = ultimate accuracy for f(xi), computation stops if |f(xi)| <= tol; 
% maxk = maximal number of iterations, program terminates if maxk iterations are reached;
%
% call of program: [xi,interval] = mat06_ex7a(c, tol, maxk);

function [xi,interval] = fct(c, tol, maxk)

% default for maxk

if nargin < 3 
   maxk = 100;
end

% default for tol

if nargin < 2
   tol = 10^(-6);
end

% search for a, b with f(a)*f(b) < 0:

n = 0;
p = c(3);
q = c(3);
while p*q >= 0
   n = n+1;
   p = n^3 + c(1)*n^2 + c(2)*n + c(3);
   q = -n^3 + c(1)*n^2 - c(2)*n + c(3);
end
a = -n;
b = n;

% start of the bisection

fa = a^3 + c(1)*a^2 + c(2)*a + c(3);
fb = b^3 + c(1)*b^2 + c(2)*b + c(3);
err = max([abs(fa),abs(fb)]);
k = 1;

% preparation of output of the iterations

A = zeros(maxk,1);
B = zeros(maxk,1);
A(1) = a;
B(1) = b;

% iteration of the bisection

while (err > tol && k < maxk)
   y = (a + b)/2;
   fy = y^3 + c(1)*y^2 + c(2)*y + c(3);
   if abs(fy) <= tol
     xi = y;
     a = y;
     b = y;
   elseif fy > tol
     b = y;
     fb = fy;
     err = abs(fb);
   else
     a = y;
     fa = fy;
     err = abs(fa);
   end
   k = k+1;
   A(k) = a;
   B(k) = b;
end  
xi = y
interval = [A,B]
