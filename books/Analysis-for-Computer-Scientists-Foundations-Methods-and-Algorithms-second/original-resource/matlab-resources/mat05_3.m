% Expermints with convergence of series
% N = number of summands; 
% Z = duration of pause (seconds)
%
% Call of program: mat05_3(N,Z)

function fct(N,Z)

R1 = 0; R2 = 0; R3 = 0; R4 = 0; R5 = 0;
for i = 1:N
  j = 1/i;
  R1 = R1 + j^0.99;
  R2 = R2 + j;
  R3 = R3 + j^1.01;
  R4 = R4 + j^2;
  R5 = R5 + 1/(prod(1:i));
  i
  R1
  R2
  R3
  R4
  R5
  pause(Z)
  clc
end
i
R1
R2
R3
R4
R5