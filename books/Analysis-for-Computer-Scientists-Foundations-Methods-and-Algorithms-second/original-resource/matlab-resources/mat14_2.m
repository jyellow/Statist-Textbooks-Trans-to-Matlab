% Second experiment with curves, Chapter 14: circle

figure

axis([-1.5 1.5 -1.5 1.5])
axis equal
axis off
hold on

plot([-1.3 1.3],[0 0],'k',[0 0], [-1.3 1.3],'k')
plot(1.3, 0, 'k>', 0, 1.3,'k^')
text(1.5,0,'x')
text(0,1.5,'y')

x = zeros(1,50);
y = zeros(1,50);

for i = 0:49
   t = 2*pi*i/50; 
   x(i+1) = cos(-t);
   y(i+1) = sin(-t);
   plot(x(i+1),y(i+1),'b*')
   pause(0.1)
end

s = 0:pi/500:2*pi;
xx = cos(s);
yy = sin(s);
plot(xx,yy,'m',x,y,'b*')

hold off