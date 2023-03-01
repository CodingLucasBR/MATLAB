function A = top_right(N,n)

%%TOP_RIGHT
% Write a function called TOP_RIGHT that takes two inputs: a matrix N 
% and a scalar non-negative integer n, in that order, where each dimension 
% of N is greater than or equal to n. The function returns the n-by-n 
% square array at the top right corner of N.

A = N(1:1:n, end-n+1:1:end);
