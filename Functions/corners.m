function [top_left, top_right, bottom_left, bottom_right] = corners(A)

%%CORNERS
% Write a function called CORNERS that takes a matrix as an input and
% returns four outputs: the elements of its four corners in this order:
% top_left, top_right, bottom_left and bottom_right.

top_left = A(1,1);
top_right = A(1,end);
bottom_left = A(end,1);
bottom_right = A(end,end);
