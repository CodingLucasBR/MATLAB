function summa = halfsum(A)

%HALFSUM
%   A function that takes as input a matrix and computes the sum of its
%   elements that are in the diagonal and are to the right of it. The
%   diagonal is defined as the set of those elements whose collumn and rows
%   indexes are the same. In other words, the function adds up the elements
%   in the uppertriangular part of the matrix. 

summa = 0; % Set the output variable to zero - Initialization.

for ii = 1:size(A,1) % Visiting all lines...
    for jj = 1:size(A,2) % ... and all collumns
        if ii<=jj % Condition for diagonal and upper elements only
            summa = summa + A(ii,jj); % Sum of these elements
        end
    end
end

    