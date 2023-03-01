function summa = sum3and5muls(n)

%%SUM3AND5MULS
% If we list all the natural numbers up to 10 that are multiples of 3 or 5,
% we get 3, 5, 6, 9 and 10. The sum of these multiples is 33. Write a 
% function called sum3and5muls that returns the sum of all the unique 
% multiples of 3 or 5 up to n where n is a positive integer and the only 
% input argument of the function.

summa = sum(3:3:n)+ sum(5:5:n) - sum(15:15:n);
