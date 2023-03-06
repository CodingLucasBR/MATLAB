function f = digit_sum(b)

%%DIGIT_SUM
% Write a recursive function called DIGIT_SUM that computes the sum of the
% digits of a positive integer provided as an input argument. You do not 
% have to check the input. You are not allowed to use loops or string 
% conversion functions like str2num. As an illustration, the sum of the 
% digits of the number 12345 is 15. Hint: consider what mathematical 
% operation you need to do to get the last digit of a base 10 number.

n = max(ceil(log10(abs(b))),1); % It calculates the number of digits of 'b'

if  n == 1 % Base Case
    f = rem(b,10);
      
else % Recursive Case
    f =  rem(b,10) + digit_sum((b - rem(b,10))/10); % It sums from last to
                                                    % first digit.
end

