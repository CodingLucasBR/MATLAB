function w = flip_it(v)

%%FLIP_IT
% Write a function called FLIP_IT that has one input argument, a row 
% vector v, and one output argument, a row vector w that is of the same 
% length as v. The vector w contains all the elements of v, but in the 
% exact opposite order. For example, is v is equal to [1 2 3] then w must 
% be equal to [3 2 1]. You are not allowed to use the built-in 
% function flip.

w = v(end:-1:1);