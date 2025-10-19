
% check whether admissible range is exceeded

% if beta > 3 || beta < 0 || A > 1 + 1/beta || A < 0
%    'Input parameters: range exceeded';
% else

%%
% beta = 3;
% A = (1 + 1/beta ) * 0.9;
% N = 15;
% mat05_2(A,beta,N);

%%
beta = 0.5;
A = 0.1;
N = 50;
mat05_2(A,beta,N);


%%
beta = 1;
A = 0.1;
N = 50;
mat05_2(A,beta,N);

%%
beta = 2;
A = 0.1;
N = 50;
mat05_2(A,beta,N);

%%
beta = 2.5;
A = 0.1;
N = 50;
mat05_2(A,beta,N);

%%
beta = 3;
A = 0.1;
N = 50;
mat05_2(A,beta,N);