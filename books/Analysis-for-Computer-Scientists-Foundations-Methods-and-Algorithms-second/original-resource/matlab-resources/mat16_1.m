% Newton's method in two (or more) variables.
%
% The evaluation of the function and its Jacobian
% are performed in mat16_2.m
%
% The parameter tol determines the desired accuracy,
% the vector x contains the starting values.
% Both have to be chosen suitably.

% initialisation of tol
clear; clc;
tol = 1e-10;
% starting values
x = [3 4];
fprintf('Newton method:\n')
fprintf('%24.16e %24.16e\n',x)
ndx = 10*tol;
% Newton iteration:
% The iteration is repated until the increment dx
% is less or equal to tol.
while ndx > tol
  [f,jac] = mat16_2(x);
  dx = -jac\f;
  ndx = norm(dx);
  x = x+dx';
  fprintf('%24.16e %24.16e\n',x)
end
