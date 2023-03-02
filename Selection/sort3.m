function [x, y, z] = sort3(v)

%%SORT3
% Write a function called SORT3 that takes a 3-element vector as its sole 
% arguments. It uses if-statements, possibly nested, to return the three 
% elements of the vector as three scalar output arguments in non-decreasing 
% order, i.e., the first output argument equals the smallest element of the
% input vector and the last output argument equals the largest element. 
% NOTE: Your function may not use any built-in functions, e.g., sort, min, 
% max, median, etc.

%{
if v(1) >= v(2) && v(1) >= v(3) && v(2) >= v(3) % v(1)>v(2)>v(3)
    x = v(3); y = v(2); z = v(1);
elseif v(1) >= v(3) && v(1) >= v(2) && v(3) >= v(2) % v(1)>v(3)>v(2)
    x = v(2); y = v(3); z = v(1);
elseif v(2) >= v(1) && v(2) >= v(3) && v(1) >= v(3) % v(2)>v(1)>v(3)
     x = v(3); y = v(1); z = v(2);
elseif v(2) >= v(3) && v(2) >= v(1) && v(3) >= v(1) % v(2)>v(3)>v(1)
     x = v(1); y = v(3); z = v(2);
elseif v(3) >= v(1) && v(3) >= v(2) && v(1) >= v(2) % v(3)>v(1)>v(2)
     x = v(2); y = v(1); z = v(3);
else                                             % v(3)>v(2)>v(1)
     x = v(1); y = v(2); z = v(3);
end
%}

% Solution using nested-if statements

if v(1) >= v(2) && v(1) >= v(3)     % First term is the higher
    z = v(1);
    if v(2) >= v(3)            
        y = v(2); x = v(3);
    else
        y = v(3); x = v(2);
    end
elseif v(2) >= v(1) && v(2) >= v(3) % Second term is the higher
    z = v(2);
    if v(1) >= v(3)            
        y = v(1); x = v(3);
    else
        y = v(3); x = v(1);
    end
else                                % Third term is the higher      
    z = v(3);
    if v(1) >= v(2)            
        y = v(1); x = v(2);
    else
        y = v(2); x = v(1);
    end
end

