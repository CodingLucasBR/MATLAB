function [e, k] = approximate_e(delta)

%%APPROXIMATE_E

e = 1; n = 1;
while abs(e-exp(1)) > delta    
    k = prod(1:1:n); % Calculating k factorial
    n = n+1;
    e = e + 1/k;
end
k = n-1; % Updating the output value of k after computation

