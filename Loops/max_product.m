function [p, i] = max_product(v, n)

%%MAX_PRODUCT
% Write a function max_product that takes v a vector and n, a positive
% integer, as inputs and computes the largest product of n consecutive
% elements of v. It returns the product and the index of the element of v
% that is the first term of the product. If there are multiple such
% products in v, the function must return the one with the smallest
% starting index. As an example, the following call
% >> [product, ind] = max_product([1 2 2 1 3 1],3);
% will assign 6 to product and 3 to ind since the max 3-term product in
% the input vector is 2*1*3. If v has fewer than n elements, the function
% returns 0 and -1, respectively.

% Checking if v has fewer than n elements
if length(v) < n
    p = 0; i = -1;
    return
end

% Number of products to calculate
num = length(v) - n + 1;

ii = 1; % Initializing vector index
w = [];
while num >= 1
    w = [w prod(v(ii:n))]; % Row vector of the products calculated
    num = num - 1; % Variable 'num' must decrease until 0 to end the loop
    ii = ii + 1; n = n + 1; % Increments
end

p = max(w);
i = find(w == max(w)); i = i(1);