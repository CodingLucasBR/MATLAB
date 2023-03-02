function f = triangle_wave(n)

%%TRIANGLE_WAVE
% Write a function called TRIANGLE_WAVE that computes the sum
% ? ?=0/? (?1)^? sin((2?+1)?)/(2?+1)^2
% for each of 1001 values of t uniformly spaced from 0 to 4? inclusive. 
% The input argument is a scalar non-negative integer n, and the output 
% argument is a row vector of 1001 such sums—one sum for each value of t. 
% You can test your function by calling it with n == 20 or greater and 
% plotting the result and you will see why the function is called 
% “triangle_wave”.

f = 0;
for k = 0:n
    t = linspace(0,4*pi,1001); % Variation of variable 't'. See: help linspace
    f = f + ((-1)^k * sin((2*k+1)*t))/((2*k+1)^2);
end

figure
plot(t,f);