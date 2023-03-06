function f = recursive_max(v)

%%RECURSIVE_MAX
% Write a recursive function called RECURSIVE_MAX that finds the maximum 
% element in a vector. You are not allowed to use loops or any built-in 
% functions other than length. The sole output argument is the maximum 
% value in the input vector. Hint: the maximum value of a vector is the 
% larger of its first element and the maximum of the rest of the elements.

if length(v) == 1 % Base Case
    f = v(1);    
    
else % Recursive Case
    w = v(end); % Last vector element of call
    z = recursive_max(v(1:end-1)); % Recursive call w/o last element
    
    if w > z % Condition to check the pair of elements
        f = w;
    else
        f = z;
    end
end


