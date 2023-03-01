function [area, cf] = circle(r)

%%CIRCLE
% Write a function called CIRCLE that takes a scalar input r. It needs to 
% return an output called area that is the area of a circle with radius r 
% and a second output, cf that is the circumference of the same circle. 
% You are allowed to use the built-in function pi. In fact, you need to 
% use it to get the value of (pi) as accurately as possible.

area = pi*(r^2);
cf = 2*pi*r;