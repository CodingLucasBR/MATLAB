function r = holiday(month, day)

%%HOLIDAY
% Write a function called HOLIDAY that takes two input arguments called 
% month and day; both are scalar integers representing a month (1-12) and 
% a day (1-31). You do not need to check that the input is valid. The 
% function returns a logical true if the specified date is a holiday; if 
% not, it returns false. For the purposes of this exercise, the following 
% dates are considered holidays: January 1st, July 4th, December 25th, and 
% December 31st.

switch month
    case 1
        if day == 1
            r = true;
            return
        end
    case 7
        if day == 4
            r = true;
            return
        end
    case 12
        if day == 25 || day == 31
            r = true;
            return
        end
end

r = false;
    

