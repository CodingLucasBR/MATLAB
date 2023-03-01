function  Q = intquad(n,m)

%%INTQUAD
% Write a function called intquad that takes as its input arguments two 
% scalar positive integers named n and m in that order. The function 
% returns Q, a 2n-by-2m matrix. Q consists of four n-by-m submatrices. 
% The elements of the submatrix in the top left corner are all 0s, the 
% elements of the submatrix at the top right are 1s, the elements in the 
% bottom left are 2s, and the elements in the bottom right are 3s. 

Q = zeros(2*n,2*m);
Q(1:n, end:-1:m+1)=1;
Q(n+1:end, 1:m)=2;
Q(n+1:end, end:-1:m+1)=3;
