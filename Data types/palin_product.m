function r = palin_product(dig,lim)

%%PALIN_PRODUCT
% *** A palindromic number reads the same both ways. The largest palindrome
% made from the product of two 2-digit numbers is 9009 = 91 × 99. Write a 
% function that is called this way:
% >> n = palin_product(dig,lim);
% The function returns the largest palindrome smaller than lim that is the 
% product of two dig digit numbers. If no such number exists, the function
% returns 0. (Inspired by Project Euler.)

switch dig
    case 1
        values = (1:9).*(1:9)'; % Mult. tables for 1, 2 and 3 digits
    case 2
        values = (10:99).*(10:99)';
    case 3  
        values = (100:999).*(100:999)';
end

r = 0;

for ii = 1:numel(values) % Loop through the whole table
    w = num2str(values(ii)); % Converting number to string
    w = w(end:-1:1); % Reversing the string
    if values(ii) >= lim
        continue
    elseif isequal(str2double(w),values(ii)) % Condition to check if it is palindrome
        s = str2double(w);
        if s > r
            r = s;
        end
    end
end


