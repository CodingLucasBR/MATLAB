function r = name_value_pairs(varargin)

%%NAME_VALUE_PAIRS
% Name-value pairs are frequently used in programming. For our purposes 
% here, a name-value pair consists of a name (a char vector) and a value 
% that can be of any data type. Write a function called NAME_VALUE_PAIRS 
% that has a variable number of input arguments representing name-value
% pairs. Naturally, they come in pairs: the first is the name, the next is 
% the value. This means that the function must be called with an even 
% number of actual input arguments. The function returns a single cell 
% array which has exactly two columns: the first column contains the names, 
% while the second column contains the values. If the function is called 
% with no input arguments, or it is called with an odd number of inputs or
% if a name is not of char type, the function returns an empty cell array.


% Checking if the actual input arguments are all valid
if nargin == 0 || rem(nargin,2)~=0
    r = cell(0);
    return
end
for ii = 1:2:nargin % True if odd number inputs are not char type
    if ~ischar(varargin{ii})
        r = cell(0); % Or r = {}
        return
    end
end  % End of input arguments checking

r = cell(nargin/2,2); % Initializing the cell array w/ preallocation
jj = 1; % Index for varargin

for ii = 1:nargin/2 % Loop to cover all cells
    r{ii,1} = varargin{jj}; % Allocating name values in 1st collum
    r{ii,2} = varargin{jj+1}; % Allocating other values in 2nd collum
    jj = jj + 2; % Increment
end




    