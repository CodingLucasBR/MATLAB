function w = reversal(v)

%%REVERSAL
% Reversing a vector through recursive function
% This version allows using larger input values whilst it is less 
% time/resources consuming

if length(v) == 1 % Base case
    w = v;
else % Recursive case
    mid = ceil(length(v)/2);
    w = [reversal(v(mid+1:end)) reversal(v(1:mid))];
end
