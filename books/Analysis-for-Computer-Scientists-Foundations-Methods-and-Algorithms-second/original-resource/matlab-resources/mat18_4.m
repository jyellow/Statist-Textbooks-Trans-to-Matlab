% This program produces Figure 18.6 

% data (from mat18_3.m)

y = [16.68 11.50 12.03 14.88 13.75 18.11 8.00 17.83 79.24 21.50, ...
      40.33 21.00 13.50 19.75 24.00 29.00 15.35 19.00 9.50 35.10, ...
      17.90 52.32 18.75 19.83 10.75]';

x1 = [7 3 3 4 6 7 2 7 30 5 16 10 4 6 9 10 6 7 3 17 10 26 9 8 4]';

x2 = [560 220 340 80 150 330 110 210 1460 605, ...
      688 215 255 462 448 776 200 132 36 770 140 810 450 635 150]';

% computation

Xin = [x1,x2];
[X, beta, yhat, ybar, Syy, SSE, SSR, R2] = mat18_2(Xin,y);
z = beta(1) + beta(2)*x1 + beta(3)*x2;

for i = 1:25
plot3([x1(i) x1(i)],[x2(i) x2(i)],[y(i) z(i)],'k')
hold on
if y(i) >= z(i)
plot3(x1(i), x2(i),y(i),'*r')
end
hold on
if y(i) < z(i)
    plot3(x1(i), x2(i),y(i),'*b')
end
end
hold on
a = [0 30 30 0 0];b = [0 0 1500 1500 0];
c = [beta(1), beta(1)+beta(2)*30, beta(1)+beta(2)*30+beta(3)*1500,...
      beta(1)+beta(3)*1500, beta(1)];
plot3(a,b,c,'k')
xlabel('x1')
ylabel('x2')
zlabel('y')