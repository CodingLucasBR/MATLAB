function w = move_me(v,a)

%MOVE_ME
% The function MOVE_ME is defined like this: w = move_me(v,a). The first
% input argument v is a row vector, while a is a scalar. The function moves
% every element of v that is equal to a to the end of the vector. For
% example, the command:
% >> x = move_me([1 2 3 4],2);
% makes x equal to [1 3 4 2]. If a is ommited, the function moves
% occurences of zeros.

if nargin == 2    
    if ~isvector(v) || ~isscalar(a) || size(v,1)>1 % Robust function
        error('Wrong input arguments');
    end
    
    w = [v(v~=a) v(v==a)]; % First, it takes only the vector's values that
                           % differ from 'a', and then it finally takes
                           % the values that are equal to 'a', using
                           % logical indexing.    
else    
    if ~isvector(v) || size(v,1)>1 %Robust function
        error('Wrong input arguments');
    end
    
    w = [v(v~=0) v(v==0)];
    
end


