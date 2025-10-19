% Multiple linear regression
% Input Xin = [x1, x2, ..., xk] as matrix; y as column vector
% Output: matrix X, estimated regression coefficients beta,
% predicted values yhat, mean value ybar, total variability Syy,
% SSE, SSR and coefficient of determination R2.
%
% Program call: 
%    [X, beta, yhat, ybar, Syy, SSE, SSR, R2] = mat18_2(Xin,y)

function [X, beta, yhat, ybar, Syy, SSE, SSR, R2] = fct(Xin,y)
if size(y,2)~=1
'Error: y has to be a column vector!'
return
end

X = [ones(length(Xin),1), Xin];
beta = inv(X'*X)*X'*y;
yhat = X*beta;
SSE = sum((y -yhat).^2);
ybar = mean(y);
Syy = sum((y - ybar).^2);
SSR = Syy - SSE;
R2 = SSR/Syy;