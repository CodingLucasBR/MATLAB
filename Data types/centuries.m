function century = centuries(year)

%%CENTURIES
% Write a function called CENTURIES that takes a positive integer smaller 
% than or equal to 3000 representing a year as its input and returns a 
% string with the century the given year falls into. If the input is 
% invalid, the function returns the empty string. Centuries are specified
% using roman numerals. Note that we require the shortest legal roman 
% number. For a complete list, refer to: 
% http://www.romannumerals.co/roman-numerals-1-to-30. Note that a century 
% goes from year 1 to 100, so for example, the XXth century ended on 
% December 31st, 2000. As an example, the call
% >> cent = centuries(1864);
% will make cent equal to ‘XIX’.

f = fix(year/1000); % First digit isolated (prefixe)
t = fix(year/100); % It isolates the first and second digit of 'year'
s = t - f*10; % Second digit
l = mod(year,100); % It checks if the year ends in zero-zero

prefixes = ["", "X", "XX"];
numerals = ["I", "II", "III", "IV", "V", "VI", "VII", "VIII" , "IX", "X"];




century = char(strcat(prefixes(f+1)));    
  

    
    
    






        
    



