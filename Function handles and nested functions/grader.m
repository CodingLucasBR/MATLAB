function result = grader(f1, f2, varargin)

%%GRADER
% Write a function
% called GRADER that tests two functions (one is supposed to be the 
% student's solution and the other the reference solution provided by the 
% instructor) by calling them repeatedly with various input arguments and 
% comparing the results. For simplicity, we assume that both functions take
% exactly one input argument. The inputs to the grader function are two 
% function handles followed by a variable number of additional input 
% arguments. The function must call the two functions with each of the 
% supplied input agruments one by one. If the results match for all test 
% cases, that is, for each input argument, the grader function returns 
% logical true. Otherwise, it returns false. Note that in order to ensure 
% that the comparison works for arrays and not just scalars, you should 
% use the isequal function as opposed to the == operator.

for ii = 1:nargin-2 % Testing both functions for the same arguments
    y = f1(varargin{ii}); 
    z = f2(varargin{ii});
    if isequal(y,z) % Condition to check if the functions are equal using 
                    % the same input 
        result = true;
    else
        result = false; % If else is true, there is no need to keep looping
        return;
    end
end
