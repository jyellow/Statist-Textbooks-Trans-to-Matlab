% Suggested solution for Exercise 18.8:
% the M-files "mat18_2.m" and "mat18_ex8.m" are needed in the working directory!

% dat input
mat18_ex8;

% solution of multiple regression, complete model:
Xin = [x1,x2,x3,x4];
[X, beta, yhat, ybar, Syy, SSE, SSR, R2] = mat18_2(Xin,y);

fprintf('\n')
fprintf('Result of multiple regression (all variables included in the model):\n')
fprintf('beta0 = %3.4f\n', beta(1))
fprintf('beta1 = %3.4f\n', beta(2))
fprintf('beta2 = %3.4f\n', beta(3))
fprintf('beta3 = %3.4f\n', beta(4))
fprintf('beta4 = %3.4f\n', beta(5))
fprintf('R^2(beta1,beta2,beta3,beta4) = %3.4f\n', R2)

% sequentiel partition beta1 -> beta1, beta2 -> beta1, beta2, beta3
% -> beta1, beta2, beta3, beta4:
Xin1 = [x1];
Xin12 = [x1, x2];
Xin123 = [x1, x2, x3];
Xin1234 = [x1, x2, x3, x4];

[X, beta, yhat, ybar, Syy, SSE, SSR, R21] = mat18_2(Xin1,y);
[X, beta, yhat, ybar, Syy, SSE, SSR, R212] = mat18_2(Xin12,y);
[X, beta, yhat, ybar, Syy, SSE, SSR, R2123] = mat18_2(Xin123,y);
[X, beta, yhat, ybar, Syy, SSE, SSR, R21234] = mat18_2(Xin1234,y);

fprintf('\n')
fprintf('Coefficients of determination of the 4 models:\n')
fprintf('R^2(beta1) = %3.4f\n', R21)
fprintf('R^2(beta1, beta2) = %3.4f\n', R212)
fprintf('R^2(beta1, beta2, beta3) = %3.4f\n', R2123)
fprintf('R^2(beta1, beta2, beta3, beta4) = %3.4f\n', R21234)
fprintf('\n')

fprintf('Sequential partial coefficients of determination:\n')
fprintf('R^2(beta1) = %3.4f\n', R21)
fprintf('R^2(beta2|beta1) = %3.4f\n', R212 - R21)
fprintf('R^2(beta3|beta1, beta2) = %3.4f\n', R2123 - R212)
fprintf('R^2(beta4|beta1, beta2, beta3) = %3.4f\n', R21234 - R2123)
fprintf('Unexplained by regression = %3.4f\n', 1 - R2)


% pie chart for proportions
pp = [R21, R212-R21, R21234-R2123, 1 - R2]; 
% The proportion of beta3 = R2123 - R212 has been removed; it equals = 0.0001. 
% This would disturb the caption of the plot otherwise.
pie(pp)
colormap flag
legend('proportion beta1','proportion beta2', 'proportion beta4', 'unexplained')

