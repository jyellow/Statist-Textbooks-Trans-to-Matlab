% The program produces accuracy-cost diagrams
% for the Gaussian quadrature formulas of order 2, 4 and 6.
% 
% It uses the following Matlab-functions:
% mat13_2.m    Gaussian quadrature formulas of order 2
% mat13_3.m    Gaussian quadrature formulas of order 4
% mat13_4.m    Gaussian quadrature formulas of order 6
% mat13_5.m    the function x -> x^2.5
% 
% Meaning of local variables:
% b ... length of interval of integration
% exact ... exact value of integral
% n ... number of subintervals
% h ... length of subintervals

set(gcf, 'Units', 'centimeters', 'Position', [1 6 20 8])
%
% left image
%
b = 3;
exact = sin(b);
n = 1;
for k=1:10
   x = linspace(0,b,n+1);
   h = b/n;
   g1(k) = abs(mat13_2(x,n,h,'cos')-exact);
   a1(k) = n;
   g2(k) = abs(mat13_3(x,n,h,'cos')-exact);
   a2(k) = 2*n;
   g3(k) = abs(mat13_4(x,n,h,'cos')-exact);
   a3(k) = 3*n;
   n = n*2;
end
subplot(1,2,1)
loglog(g1,a1,'r',g1,a1,'rx')
hold on
loglog(g2,a2,'b',g2,a2,'bs')
loglog(g3,a3,'m',g3,a3,'mo')
%
% right image
%
b = 1;
exact = 2/7*b^(7/2);
n = 1;
for k = 1:10
   x = linspace(0,b,n+1);
   h = b/n;
   g1(k) = abs(mat13_2(x,n,h,'mat13_5')-exact);
   a1(k) = n;
   g2(k) = abs(mat13_3(x,n,h,'mat13_5')-exact);
   a2(k) = 2*n;
   g3(k) = abs(mat13_4(x,n,h,'mat13_5')-exact);
   a3(k) = 3*n;
   n = n*2;
end
subplot(1,2,2)
loglog(g1,a1,'r',g1,a1,'rx')
hold on
loglog(g2,a2,'b',g2,a2,'bs')
loglog(g3,a3,'m',g3,a3,'mo')
axis([1e-20 1 1 1e4])