function w = palindrome(v)

%%PALINDROME
% Write a function called PALINDROME that takes one input argument, a char 
% vector and recursively determines whether that argument is a palindrome. 
% You are not allowed to use loops, not built-in function like strcmp, etc. 
% The function returns true or false. Note that to keep things simple, 
% capitalization, spaces and punctuation all matter.

w = ispalindrome(v);

    function z = ispalindrome(k) % Nested recursive function to calculate
        if size(k,2) == 1        % the palindrome
            z = k;
        else % Recursive case
            z = [k(end) ispalindrome(k(1:end-1))];
        end
    end


if isequal(w,v) % Comparison btw input and output argument taken fom 
                % recursive function 'ispalindrome'
    w = true;
else
    w = false;
end

end


