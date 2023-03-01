function summa = peri_sum(A)

%%PERI_SUM
% Write a function called PERI_SUM that computes the sum of the elements 
% of an input matrix A that are on the “perimeter” of A. In other words, 
% it adds together the elements that are in the first and last rows and 
% columns. Note that the smallest dimension of A is at least 2, but you do
% not need to check this.

rows = sum(A(1:size(A,1)-1:end, 2:size(A,2)-1));
collumns = sum(A(1:end,1:size(A,2)-1:end));
summa = sum([rows collumns]);