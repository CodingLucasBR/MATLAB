function charnum = char_counter(fname,character)

%%CHAR COUNTER
% Write a function called CHAR_COUNTER that counts the number of a certain 
% character in a text file. The function takes two input arguments, fname,
% a char vector of the filename and character, the char it counts in the 
% file. The function returns charnum, the number of characters found. If 
% the file is not found or character is not a valid char, the function 
% return -1. As an example, consider the following run. 
% The file "simple.txt" contains a single line: "This file should have 
% exactly three a-s..."

fid = fopen(fname,'rt'); % Opening the file

if fid<0 % Checking if the file was really opened
    charnum = -1;
    return
elseif ~ischar(character) % Checking if input character is valid
    charnum = -1;
    return
end

[z,count] = fscanf(fid,'%c'); % It creates a row vector of char type
                              % Variable 'count' is the number of collumns
summa = 0;

for ii = 1:count % Loop through all the collumns
    summa = summa + (isequal(z(1,ii),character));
end

charnum = summa;

fclose(fid); % Closing the file
