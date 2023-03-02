function result = teste(v)

if length(v) == 1
    result = v;
else
    result = [v(end) teste(v(1:end-1))];
end

%{
cyear = num2str(year);

% Determining the correct century given the year(input data)
if length(cyear) == 2 || length(cyear) == 1 || isequal(cyear,'100')
    cent = "I";
elseif length(cyear) == 3
    if isequal(cyear(2:end),'00')
        cent = str2double(cyear(1));
    else
        cent = str2double(cyear(1)) + 1;
    end
elseif length(cyear) == 4
    if isequal(cyear(3:end),'00')
        cent = str2double(cyear(1:2));
    else
        cent = str2double(cyear(1:2)) + 1;
    end
end
% ...end

% Writing in roman numerals

prefixes = {'X', 'XX', 'XXX','','','','','',''};
numerals = {'I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII' , 'IX'};


m = prefixes{floor(cent/10)};
s = numerals{mod(cent,10)};

cent = strcat(m,s);

%}