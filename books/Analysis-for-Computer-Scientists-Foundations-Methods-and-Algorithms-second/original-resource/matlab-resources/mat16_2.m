% Example of two functions in two variables and the 
% corresponding Jacobian. This subroutine is called by 
% Newton's method in mat16_1.m.
%
% Input:
% x ... vector with two components (current approximation
%       to the zero of the function)
%
% Output:
% f ... column with two components (the two functions,
%       evaluated at x)
% jac ... the corresponding 2x2 Jacobian, evaluated at x

function [f,jac] = mat16_2(x)
f = [x(1)*x(1)+x(2)*x(2)-4; x(1)*x(2)-1];
jac = [2*x(1) 2*x(2); x(2) x(1)];