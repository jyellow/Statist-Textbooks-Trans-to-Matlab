% Experimental plots of sequences

%%
a = zeros(1,30);
for n = 1:30
  a(n) = 1 + (-1)^n/n;
end
figure
plot(a,'*')
grid on
%%
a = zeros(1,30);
for n = 1:30
  a(n) = atan(n);
end
figure
plot(a,'*')
grid on  

a = zeros(1,30);
for n = 1:30
  a(n) = atan(n) + 3*(-1)^n/n;
end
figure
plot(a,'*')
grid on  

a = zeros(1,30);
for n = 1:30
  a(n) = atan(n) + (-1)^n;
end
figure
plot(a,'*')
grid on  

a = zeros(1,30);
for n = 1:30
  a(n) = atan(n) + 2/n^2;
end
figure
plot(a,'*')
grid on  

a = zeros(1,30);
for n = 1:30
  a(n) = cos(n*pi);
end
figure
plot(a,'*')
axis([0 31 -1.2 1.2])
grid on  

a = zeros(1,30);
for n = 1:30
  a(n) = n^2;
end
figure
plot(a,'*')
grid on  

a = zeros(1,30);
for n = 1:30
  a(n) = (-1)^n*n;
end
figure
plot(a,'*')
grid on  

