% Experimental plots of sequences;
% piecewise linear graphs for easier visualisation

%% Fig 1
a = zeros(1,30);
for n = 1:30
  a(n) = 1 + (-1)^n/n;
end
figure
plot(1:30,a,'*',1:30,a)
grid on  
%% Fig 2
a = zeros(1,30);
for n = 1:30
  a(n) = atan(n);
end
figure
plot(1:30,a,'*',1:30,a)
grid on  
%% Fig 3
a = zeros(1,30);
for n = 1:30
  a(n) = atan(n) + 3*(-1)^n/n;
end
figure
plot(1:30,a,'*',1:30,a)
grid on  
%% Fig 4
a = zeros(1,30);
for n = 1:30
  a(n) = atan(n) + (-1)^n;
end
figure
plot(1:30,a,'*',1:30,a)
grid on  
%% Fig 5
a = zeros(1,30);
for n = 1:30
  a(n) = atan(n) + 2/n^2;
end
figure
plot(1:30,a,'*',1:30,a)
grid on  
%% Fig 6
a = zeros(1,30);
for n = 1:30
  a(n) = cos(n*pi);
end
figure
plot(1:30,a,'*',1:30,a)
axis([0 31 -1.2 1.2])
grid on  

%% Fig 7
a = zeros(1,30);
for n = 1:30
  a(n) = n^2;
end
figure
plot(1:30,a,'*',1:30,a)
grid on  

%% Fig 8
a = zeros(1,30);
for n = 1:30
  a(n) = (-1)^n*n;
end
figure
plot(1:30,a,'*',1:30,a)
grid on  

%% Fig 9
% (-2)^n*n
a = zeros(1, 10);
for n = 1:10
  a(n) = (-2)^n*n;
end
figure
plot(1:10, a, '*', 1:10, a)
grid on