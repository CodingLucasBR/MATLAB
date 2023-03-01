function T = trio(n,m)

%%TRIO

T=ones(3*n,m);
T(2*n:-1:n+1, :) = 2;
T(end:-1:(2*n)+1, :) = 3;
