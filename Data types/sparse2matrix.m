function matrix = sparse2matrix(cell_vec)

%%SPARSE2MATRIX
% A sparse matrix is a large matrix with almost all elements of 
% the same value (typically zero). The normal representation of a sparse 
% matrix takes up lots of memory when the useful information can be 
% captured vector whose first element is a 2-element vector representing the 
% size of the sparse matrix. The second element is a scalar specifying the
% default value of the sparse matrix. Each successive element of the cell 
% vector is a 3-element vector representing one element of the sparse matrix 
% that has a value other than the default. The three elements are the row 
% index, the column index and the actual value. Write a function called 
% SPARSE2MATRIX that takes a single input of a cell vector as defined above 
% and returns the output argument called matrix, the matrix in its 
% traditional form. 

matrix = zeros(cell_vec{1}) + cell_vec{2}; % Matrix w/ default values.

for ii = 3:length(cell_vec)
    if cell_vec{ii}(1,3) ~= cell_vec{2} % If-clause can be ommited
        matrix(cell_vec{ii}(1), cell_vec{ii}(2)) = cell_vec{ii}(3);
    end
end

        

