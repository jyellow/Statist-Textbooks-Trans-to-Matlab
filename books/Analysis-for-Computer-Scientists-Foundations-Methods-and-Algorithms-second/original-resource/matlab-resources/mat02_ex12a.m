% Acceptable solution to Exercise 2.12:
% The correct answer is produced even if the range of y is not contained in {1, ..., length(y)}.
% Input: a row vector y = [y1, ..., yN].
% Call of programme: mat02_ex12a(y)

function answer = fct(y)
z = 1:length(y);
s = sort(y); 
if z == s
answer = 'Bingo - bijective!';
else
answer = 'Njet - not bijective!';
end