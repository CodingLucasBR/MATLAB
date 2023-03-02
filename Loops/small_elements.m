function w = small_elements(X)

%SMALL_ELEMENTS
% Write a function called small_elements that takes as input an array 
% named X that is a matrix or a vector. The function identifies those 
% elements of X that are smaller than the product of their two indexes. 
% For example, if the element X(2,3) is 5, then that element would be 
% identified because 5 is smaller than 2 * 3. The output of the function 
% gives the indexes of such elements found in column-major order. 
% It is a matrix with exactly two columns. The first column contains the 
% row indexes, while the second column contains the corresponding column 
% indexes. For example, the statement 
% indexes = small_elements([1 1; 0 4; 6 5], will make indexes equal to 
% [2 1; 1 2; 3 2]. If no such element exists, the function returns 
% an empty array.

if size(X,3)>1 % Input checking - Robust Function
    error('Please type a 2D-matrix or a row/collumn vector');
end

w = []; % Initialization
for jj = 1:size(X,2) % Visiting all collumns...
    for ii = 1:size(X,1) % ... and all rows
        if X(ii,jj) < ii*jj % Checking condition
            w = [w; ii jj];
        end
    end
end
