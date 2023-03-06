function encrypted_text = caesar(text,amount)

%%CAESAR
% Caesar's cypher is the simplest encryption algorithm.
% It adds a fixed value to the ASCII (unicode) value of each character of
% a text. In other words, it shifts the characters. Decrypting a text is
% simply shifting it back by the same amount, that is, it substracts the
% same value from the characters. Write a function called CAESAR that
% accepts two arguments: the first is the character vector to be encrypted,
% while the second is the shift amount. The function returns the output
% argument coded, the encrypted text. The function needs to work with all
% the visible ASCII characters from space to The ASCII codes of these are
% 32 through 126. If the shifted code goes outside of this range, it should
% wrap around. For example, if we shift ~ by 1, the result should be space.
% If we shift space by -1, the result should be ~.

text_to_double = text + amount; % It converts char to double

for ii = 1:length(text_to_double) % Loop through the double type vector
    
    if text_to_double(ii) < 32 % Condition if double type is less than 32
        while   text_to_double(ii) < 32
            a = text_to_double(ii)-32;
            text_to_double(ii) = 127 + a;
        end
    elseif text_to_double(ii) > 126 % Cond. if double type is more than 126
        while text_to_double(ii) > 126
            a = text_to_double(ii)-126;
            text_to_double(ii) = 31 + a ;
        end
    end
end

encrypted_text = char(text_to_double); % Output variable converted to char
    
    