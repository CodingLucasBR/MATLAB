function summa = spiral_diag_sum(n)

%%SPIRAL_DIAG_SUM
% Write a function called spiral_diag_sum that takes an odd positive
% integer n as an input and computes the sum of all the elements in the 
% two diagonals of the n-by-n spiral matrix.

% Input argument checking...
mustBeNonnegative(n)
mustBeNumeric(n)
if rem(n,2) == 0
    error("Input must be odd");
end
% ... end

summa = 1;
x = 2; y = 3;

for ii = 1:(n-1)/2 % Number of frames to interact
    
    w = [y y+x y+2*x y+3*x];  % Sum of the edges
    x = x + 2; y = w(4) + x;  % Index increments
    summa = summa + sum(w);
    
end
