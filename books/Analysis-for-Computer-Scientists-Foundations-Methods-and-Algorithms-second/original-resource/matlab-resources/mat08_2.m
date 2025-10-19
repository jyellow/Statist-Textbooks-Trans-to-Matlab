% Newton's method for arbitrary differentiable functions.
% Output: root xi and sequence of approximations X, error err.
% Input: function 'name', its derivative 'name';
% starting value x0;
% maxk = maximal number of iterations.
%
% Call of program: [xi,X,err] = mat08_2(fun, dfun, x0, maxk)
%
% Examples:
%    [xi,X,err] = mat08_2('sin', 'cos', 1, 10)
%    [xi,X,err] = mat08_2('mat08_f1','mat08_df1', 2, 200)

function [xi,X,err] = fct(fun, dfun, x0, maxk)

% default for maxk

if nargin < 4 
   maxk = 100;
end

% default for x0

if nargin < 3
   x0 = 0;
end

% start of Newton's method

x = x0;
err = abs(feval(fun,x0));
k = 0;
X = [x]; 

% iteration of Newton's method

while k < maxk
   fx = feval(fun,x);
   dfx = feval(dfun,x);
   x = x - fx/dfx;
   err = abs(fx);
   k = k+1;
   X = [X;x];
end  
xi = x;