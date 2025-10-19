% Suggested solution for Exercise 18.6:
% the M-file "mat18_1.m" is needed in the working directory!


% time axis
x = (0:12)';
% BBAG
y1 = [100
91
89
85
89
89
95
93
102
115
110
107
100
];
% Heineken
y2 = [100
90
97
104
104
115
123
114
123
127
116
125
126
];
% Carlsberg
y3 = [100
107
103
88
88
83
89
95
85
102
105
123
142
];
% Holsten
y4 = [100
90
90
95
97
93
101
100
134
146
145
145
150
];

[X, beta1, yhat, ybar, Syy, SSE, SSR, R21] =  mat18_1(x,y1);
[X, beta2, yhat, ybar, Syy, SSE, SSR, R22] =  mat18_1(x,y2);
[X, beta3, yhat, ybar, Syy, SSE, SSR, R23] =  mat18_1(x,y3);
[X, beta4, yhat, ybar, Syy, SSE, SSR, R24] =  mat18_1(x,y4);

t = 0:0.01:14;
plot(x,y1,'*',t,beta1(1) + beta1(2)*t)
title('BBAG')
axis([0 14 80 160])
figure
plot(x,y2,'*',t,beta2(1) + beta2(2)*t)
title('Heineken')
axis([0 14 80 160])
figure
plot(x,y3,'*',t,beta3(1) + beta3(2)*t)
title('Carlsberg')
axis([0 14 80 160])
figure
plot(x,y4,'*',t,beta4(1) + beta4(2)*t)
title('Holsten')
axis([0 14 80 160])

fprintf('\n')
fprintf('R^2(BBAG) = %3.4f\n', R21)
fprintf('R^2(Heineken) = %3.4f\n', R22)
fprintf('R^2(Carlsberg) = %3.4f\n', R23)
fprintf('R^2(Holsten) = %3.4f\n', R24)
fprintf('\n    There is no evidence that Carlsberg has a more significant trend than BBAG.\n\n')

