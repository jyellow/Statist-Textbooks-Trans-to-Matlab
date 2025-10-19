% This script produces Figure 14.10, the clothoid.
% It requires mat14_6Fcos.m and mat14_6Fsin.m in the working directory
% for evaluating the integrands.

t = 0:0.01:3/2*pi;
t0 = zeros(size(t));
X = zeros(length(t));
for i = 1:length(t)
   X(i) = quadgk(@mat14_6Fcos,t0(i),t(i));
end
Y = zeros(length(t));
for i = 1:length(t)
   Y(i) = quadgk(@mat14_6Fsin,t0(i),t(i));
end
plot(X,Y,'b',-X,-Y,'b')
axis([-1.2 1.2 -1 1])
axis equal
hold on
plot([-1.1 1.1],[0 0],'k',[0 0],[-0.9 0.9],'k',1.11,0,'k>',0,0.91,'k^')
hold off