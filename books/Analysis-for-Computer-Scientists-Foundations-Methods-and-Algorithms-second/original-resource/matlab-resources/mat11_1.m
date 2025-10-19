% Experiment 11.4: randomly chosen Riemann sums.
%
% The program computes Riemann sums for the function f(x) = 3*x^2 
% on the interval [0,1];
%
% number of summands: n, partition Z = {0, deltax, 2*deltax, ..., 1} with deltax = 1/n;
%
% the choice of the intermediate points is done by means of n random numbers, 
% which are uniformly distributed on each subinterval of the partition (MATLAB command "rand").
%
% Call of program after choosing n by 
%
%       mat11_1(n);

function fct(n);
deltax = 1/n;
XL = 0:deltax:1-deltax;
xi = XL + deltax*rand(size(XL));   % random choice of intermediate points

fxi = 3*xi.^2;

I = deltax*sum(fxi)

figure
x = 0:0.001:1;
fx = 3*x.^2;
plot(x,fx,'b','linewidth',1.5)
hold on
XLL = [XL 1];
for j = 1:n
    plot([XLL(j) XLL(j) XLL(j+1) XLL(j+1)],[0 fxi(j) fxi(j) 0],'k')
end
hold off