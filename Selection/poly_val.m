function p = poly_val(c0,c,x)

%%POLY_VAL
% Write a function called POLY_VAL that is called like this 
% p = poly_val(c0,c,x), where c0 and x are scalars, c is a vector, and p
% is a scalar. If c is an empty matrix, then p = c0. If c is a scalar, 
% then p = c0 + c*x . Otherwise, p equals the polynomial,
% c0+c(1)x^1+c(2)x^2+...+c(N)x^N , where N is the length of the vector c.

if size(c,2) == 1 % The input 'c' needs to be a row vector.
    c = c';
end

p = c0+sum(c(1:end).*x.^(1:length(c)));
 
