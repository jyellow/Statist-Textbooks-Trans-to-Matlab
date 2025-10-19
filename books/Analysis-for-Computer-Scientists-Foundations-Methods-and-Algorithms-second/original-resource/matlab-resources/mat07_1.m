% This program computes the derivatives of noisy functions
% numerically in three different ways.

set(gcf, 'Units', 'centimeters', 'Position', [1 6 22 6])
% data
clear
n = 801;
x = linspace(-2,2,n);
y = -2*x.^3+4.*x;

% random numbers

randn('state',0)
dy = randn(1,n)/200;

% noise added to data

yy = y+dy;
%
% left figure
%
subplot(1,3,1)
plot(x,yy,'b-')
hold on

% numerical derivative of noisy function

for i=1:n-1
    u(i) = (yy(i+1)-yy(i))/(x(i+1)-x(i));
end
plot(x(1:n-1),u(1:n-1),'r-')
axis([-2.1,2.1,-10,10])
%
% central figure
%
subplot(1,3,2)
plot(x,yy,'b')
hold on

% definition of the filter

ngg = 7;
ng = 2*ngg+1;
bx = linspace(-1,1,ng);
b = exp(-bx.^2);
a = zeros(ng,1);
a(1) = sum(b);

% filtering the data

zz = filter(b,a,yy);

% numerical derivative after filtering the data

for i=1:n-ng
    v(i) = (zz(i+1)-zz(i))/(x(i+1)-x(i));
end
axis([-2.1,2.1,-10,10])
plot(x(ng-ngg:n-ng-ngg),v(ng:n-ng),'r-')
%
% right figure
%
subplot(1,3,3)
plot(x,yy,'b-')
hold on

% smoothing of data by means of splines

uu = csaps(x,yy,0.94,x);

% numerical derivative of splines

for i=1:n-1
    vv(i) = (uu(i+1)-uu(i))/(x(i+1)-x(i));
end
plot(x(1:n-1),vv(1:n-1),'r-')
axis([-2.1,2.1,-10,10])