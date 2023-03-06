function w = reversal(v)

%%REVERSAL
% Write a recursive function called REVERSAL that returns the input vector 
% with its elements reversed.

if length(v) == 1  % Base Case
    w = v;         % It takes the first vector element
else               % Recursive Case
    w = [v(end) reversal(v(1:end-1))]; % Last to first vector
end