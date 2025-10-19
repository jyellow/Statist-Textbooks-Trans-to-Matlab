% Suggestion for solution of Exercise 9, Chapter 8:
% Newton's method for arbitrary differentiable functions.
% Output: root xi and number of iterations k, error err.
% Input: function 'name', its derivative 'name';
% maxk = maximal number of iterations;
% tol = desired accuracy of f(xi): computation stops if |f(xi)| <= tol;
% maxk = maximal number of iterations; program terminates after maxk iterations;
% starting value x0;
%
% Call of program: [xi,k,err] = mat08_ex9('name_of_function', 'name_of_derivative_of_function', x0, tol, maxk);

function [xi,k,err] = fct(fun, dfun, x0, tol,maxk)

% start of Newton's method

x = x0;
err = abs(feval(fun,x0));
k = 0;

% iteration of Newton's method

while (err > tol && k < maxk)
   fx = feval(fun,x);
   dfx = feval(dfun,x);
   x = x - fx/dfx;
   err = abs(fx);
   k = k+1;
end  
xi = x;