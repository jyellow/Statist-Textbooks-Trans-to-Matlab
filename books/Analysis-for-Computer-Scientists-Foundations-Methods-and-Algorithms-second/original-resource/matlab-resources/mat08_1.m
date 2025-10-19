% Newton's method for cubic equations of the form
% f(x) = x^3 + c(1)*x^2 + c(2)*x + c(3) = 0.
% Output: root xi and sequence of approximations X.
% Input: vector of coefficients c = [c(1), c(2), c(3)];
% tol = desired accuracy of f(xi): computation stops if |f(xi)| <= tol;
% maxk = maximal number of iterations: program terminates after maxk iterations;
% starting value x0.
% 
% Call of program: [xi,X] = mat08_1(c, x0, tol, maxk)

function [xi,X] = fct(c, x0, tol, maxk)

% default for maxk

if nargin < 4 
   maxk = 100;
end

% default for tol

if nargin < 3
   tol = 10^(-6);
end

% default für x0

if nargin < 2
   x0 = 0;
end

% start of Newton's method

x = x0;
err = abs(x^3 + c(1)*x^2 + c(2)*x + c(3));
k = 0;
X = [x]; 

% iteration of Newton's method

while (err > tol && k < maxk)
   fx = x^3 + c(1)*x^2 + c(2)*x + c(3);
   dfx = 3*x^2 + 2*c(1)*x + c(2);
   x = x - fx/dfx;
   err = abs(fx);
   k = k+1;
   X = [X;x];
end  
xi = x;