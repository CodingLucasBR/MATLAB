function r = voters(database, varargin)

%%VOTERS
% In a voting center, the voters are required to give their names and 
% ID numbers to the voting staff before going into the voting room. 
% Write a function called voters to record the incoming 
% voters' information. The function should take an unspecified number of 
% inputs, but the first input will be the current database. The rest of 
% the arguments must come in the order of name, a string or char array, 
% and ID, an integer or integer-valued double. If there is at least one 
% occurrence of no ID number after a name, or the data types are not what's 
% required, return the original database. The function should return a 
% struct array containing Name (a string) and ID (a double) fields as 
% shown below.


if rem(nargin,2) == 0 % The function requires an odd number of input arg.
    r = database; return
end
for ii = 1:2:nargin-1
    if ~ischar(varargin{ii}) && ~isstring(varargin{ii}) % Odd inputs must
        r = database; return                            % be string or char
    end
end
for ii = 2:2:nargin
    if ~isnumeric(varargin{ii})
        r = database; return
    end
end

a = 1; b = 2; 
for ii = length(database)+1:length(database)+((nargin-1)/2) 
    r(ii) = struct('Name', string(varargin{a}), 'ID', double(varargin{b})); 
    a = a + 2; b = b + 2; % Increment
end

if ~isempty(database)
    r(1:length(database)) = database;
end

    
