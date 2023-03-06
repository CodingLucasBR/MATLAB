function r = dial(q)

%%DIAL
% Each number on telephone keypads, except 0 and 1, corresponds to a set of 
% uppercase letters as shown in this list:
% 2 ABC, 3 DEF, 4 GHI, 5 JKL, 6 MNO, 7 PQRS, 8 TUV, 9 WXYZ
% Hence, a phone-number specification can include uppercase letters and 
% digits. Write a function called DIAL that takes as its input argument a 
% string of length 16 or less that includes only these characters and 
% returns as its output argument the telephone number as a uint64. Here is 
% the input and output for one example of a call of the function:
% Input: '1FUNDOG4YOU'
% Output: 13863644968
% You can assume that a phone number never starts with 0. If the input 
% contains any illegal characters, the function returns 0. You are not 
% allowed to use the built-in function strrep.

% Cheking input argument
if length(q) > 16 || q(1) == 0
    r = uint64(0); return
end
for ii = 1:length(q)
    if sum(q(ii) == char(0:47)) == 1 || ...
            sum(q(ii) == char(58:64)) == 1 || ...
            sum(q(ii) == char(91:128)) == 1
        r = uint64(0); return
    end
end
% ... end 

g2 = ['2' 'A' 'B' 'C']; g3 = ['3' 'D' 'E' 'F']; g4 = ['4' 'G' 'H' 'I']; 
g5 = ['5' 'J' 'K' 'L']; g6 = ['6' 'M' 'N' 'O']; g7 = ['7' 'P' 'Q' 'R' 'S']; 
g8 = ['8' 'T' 'U' 'V']; g9 = ['9' 'W' 'X' 'Y' 'Z'];

r = zeros(1,length(q)); % Preallocation

for ii = 1:length(q)
    if q(ii) == '1'
        r(ii) = '1';
    elseif ismember(q(ii),g2)
        r(ii) = '2';
    elseif ismember(q(ii),g3)
        r(ii) = '3';
    elseif ismember(q(ii),g4)
        r(ii) = '4';
    elseif ismember(q(ii),g5)
        r(ii) = '5';
    elseif ismember(q(ii),g6)
        r(ii) = '6';
    elseif ismember(q(ii),g7)
        r(ii) = '7';
    elseif ismember(q(ii),g8)
        r(ii) = '8';
    elseif ismember(q(ii),g9)
        r(ii) = '9';
    else
        r(ii) = '0';
    end
end

r = uint64(str2double(char(r)));

