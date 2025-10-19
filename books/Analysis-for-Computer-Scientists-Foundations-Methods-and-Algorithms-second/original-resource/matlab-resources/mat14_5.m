% Fifth experiment with curves, Chapter 14: 
% length of a polygonal chain inscribed in the circle
%
% call of program: mat14_5(n), n to be chosen!

function  fct(n);

if (n <= 2) | (round(n) ~= n)
   disp('n should be an integer >= 3');
   return
end

figure

axis([-1.5 1.5 -1.5 1.5])
axis equal
axis off
hold on

plot([-1.3 1.3],[0 0],'k',[0 0], [-1.3 1.3],'k')
plot(1.3, 0, 'k>', 0, 1.3,'k^')
text(1.5,0,'x')
text(0,1.5,'y')

t = 0:pi/500:2*pi;
x = cos(t);
y = sin(t);
plot(x,y,'b')

s = 0:1/n:1;
xx = cos(2*pi*s); 
yy = sin(2*pi*s);
plot(xx,yy,'r')

hold off

A = zeros(1,n);
for i = 1:n
    A(i) = norm([xx(i+1) - xx(i); yy(i+1) - yy(i)]);
end
L = sum(A);
LK = 2*pi;

fprintf('\n');
fprintf('number of grid points: %i\n',n);
fprintf('length of inscribed polygonal chain: %8.5e\n',L);
fprintf('error of approximation: %8.5e\n',LK-L);
fprintf('\n');