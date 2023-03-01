function S = simple_stats(N)

%%SIMPLE_STATS
% Write a function called simple_stats that takes a matrix N as an input 
% and returns the matrix S as the output. S has the same number of rows as 
% N. Each element of the first column of S contains the mean of the 
% corresponding row of N. Similarly, the second column contains the median 
% values; while the third column has the minimums. Finally, each element 
% of the fourth column of S is equal to the maximum value of given row of 
% N. (Hint: note that the grader will not test this with column vectors, 
% but you should try to solve it for that case too. Remember, help is your 
% friend.)

S = [mean(N,2) median(N,2) min(N,[],2) max(N,[],2)];