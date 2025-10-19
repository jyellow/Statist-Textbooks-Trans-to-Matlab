% Univariate linear regression
% Input x, y as column vectors
% Output: matrix X, estimated regression coefficients beta,
% predicted values yhat, mean value ybar, total variability Syy,
% SSE, SSR and coefficient of determination R2.
%
% Program call: 
%    [X, beta, yhat, ybar, Syy, SSE, SSR, R2] = mat18_1(x,y)

function [X, beta, yhat, ybar, Syy, SSE, SSR, R2] = fct(x,y)
if size(x,2)~=1
'Error: x has to be a column vector!';
return
end
if size(y,2)~=1
'Error: y has to be a column vector!';
return
end

X = [ones(size(x)), x];
beta = inv(X'*X)*X'*y;
yhat = X*beta;
SSE = sum((y -yhat).^2);
ybar = mean(y);
Syy = sum((y - ybar).^2);
SSR = Syy - SSE;
R2 = SSR/Syy;