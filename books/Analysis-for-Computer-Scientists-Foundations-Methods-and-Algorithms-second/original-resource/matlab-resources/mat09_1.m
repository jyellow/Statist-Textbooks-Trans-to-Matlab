% This program serves for estimating the fractal dimension 
% of the point set F of Example 9.6.

for j = 1:10
    n = 4^j;
    x = [1./[1:n],0];
    y = linspace(0,1,n+1);
    w = histc(x,y);
    mass = sum(w==0);
    nval(j) = n;
    value(j) = log(n-mass);
end
fprintf('%8i %12.8f\n',nval(1),value(1)/log(nval(1)))
for j = 2:10
    fac = (value(j)-value(j-1))/(log(nval(j))-log(nval(j-1)));
    fprintf('%8i %12.8f %12.8f\n',nval(j),value(j)/log(nval(j)),fac)
end