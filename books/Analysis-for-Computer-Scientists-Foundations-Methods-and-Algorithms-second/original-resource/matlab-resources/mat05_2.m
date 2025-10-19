% Discrete model of limited growth (Verhulst):
% beta = growth factor; program works for 0 <= beta <= 3;
% A = initial value; 0 <= A <= 1+1/beta is required;
% N = number of terms of the sequence to be computed;
% the axis window is adjusted to the case 0 <= A <=1.
%
% Call of program: mat05_2(A,beta,N);

function x = mat05_2(A,beta,N)

% check whether admissible range is exceeded

if beta > 3 || beta < 0 || A > 1 + 1/beta || A < 0
  'Input parameters: range exceeded';
else

  % recursion

  x = A*ones(1,N);  % earlier values of x are overwritten and x(1) has the starting value A

  for n = 2:N
    x(n) = x(n-1) + beta*x(n-1)*(1-x(n-1));
  end

  % plots
  % hold on
  t = 1:n;
  s = [-1 N+1];
  plot(t,x,t,x,'*',s,[0 0],s,[1 1])
  axis([-1 N+1 -0.2 1.6])
  % hold off
end
