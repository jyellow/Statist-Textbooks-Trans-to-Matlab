% Data for Exercise 18.6 (share index of 4 breweries):
% share index for the groups Holsten, Carlsberg, Heineken und BBAG,
% November 1999 (= 100%) - November 2000, from the magazine "profil" 46/2000.
% The data have been read off the corresponding figure in "profil" 46/2000.

% time axis: 0 = 11/1999, ..., 12 = 11/2000
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

% writing caption to command window

fprintf('\n    Caption in profil 46/2000 (translated from German):\n');
fprintf('    LOUSY PERFORMANCE AT THE STOCK EXCHANGE: The competition overtakes BBAG\n\n');

