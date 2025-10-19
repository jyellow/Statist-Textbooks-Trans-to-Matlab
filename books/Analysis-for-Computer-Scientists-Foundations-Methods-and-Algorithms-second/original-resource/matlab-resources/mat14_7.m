% This script plots a logarithmic spiral (Fig. 14.11)
% and can be used for zooming in.

t = -4*pi:1/10000:2.1*pi;
plot(exp(t).*cos(t),exp(t).*sin(t))
axis([-100 800 -200 300])
hold on
plot([-90 750],[0 0],'k',751,0,'k>',[0 0],[-150 250],'k',0,252,'k^')
axis equal
hold off