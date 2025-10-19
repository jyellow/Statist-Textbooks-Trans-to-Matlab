% Better solution to Exercise 2.12:
% Read "help isequal" and "help eq" in order to appreciate the difference to mat02_ex12a.m.
% Input: a row vector y = [y1, ..., yN].
% Call of programme: mat02_ex12b(y)


function answer = fct(y)
z = 1:length(y);
s = sort(y); 
if isequal(z,s)
answer = 'Bingo - bijective!';
else
answer = 'Njet - not bijective';
end