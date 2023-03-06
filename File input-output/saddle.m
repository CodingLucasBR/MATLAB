function indices = saddle(M)

%%SADDLE
% Write a function called SADDLE that finds saddle points in the input 
% matrix M. For the purposes of this problem, a saddle point is defined 
% as an element whose value is greater than or equal to every element in 
% its row, and less than or equal to every element in its column. Note 
% that there may be more than one saddle point in M. Return a matrix 
% called indices that has exactly two columns. Each row of indices 
% corresponds to one saddle point with the first element of the row 
% containing the row index of the saddle point and the second element 
% containing the column index. If there is no saddle point in M, then 
% indices is the empty array.

indices = []; % Empty array if there are no saddle points

for ii = 1:size(M,1) % Visit each row...
    for jj = 1:size(M,2) % ...and each collumn of matrix M
        x = sum(M(ii,jj) >= M(ii,1:end));
        y = sum(M(ii,jj) <= M(1:end,jj));
        
        if x == size(M,2) && y == size(M,1) % Condition for a saddle point
            indices = [indices; [ii,jj] ];
        end
    end
end

