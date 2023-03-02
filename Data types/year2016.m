function f = year2016(m)

%%YEAR2016
% Write a function called year2016 that returns a row-vector of struct-s 
% whose elements correspond to the days of a month in 2016 as specified by 
% the input argument. If the input is not an integer between 1 and 12, the 
% function returns the empty array. Each struct should contain three fields 
% with these (exact) field names: “month”, “date”, and “day” (all lower case).
% • The month field must contain a string with the name of the month (first letter capitalized).
% • The date field must contain a scalar specifying the day of the month.
% • The day field must contain the three-letter abbreviation of the day 
% chosen from this list: 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'.

% Ckecking input argument ...
if sum(size(m)) == 2
    if m > 12 || m < 1 || m ~= fix(m)
        f = []; return
    end
else
    f = []; return
end
% ... end

for ii = 1:eomday(2016,m)
    f(ii).month = string(month(datetime(2016,m,01),'name'));
    f(ii).date = ii;
    f(ii).day = string(day(datetime(2016,m,ii),'shortname'));
end


    
    


