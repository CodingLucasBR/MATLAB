function valid = valid_date(year,month,day)

%%VALID_DATE
% Write a function called VALID_DATE that takes three positive integer 
% scalar inputs year, month, day. If these three represent a valid date, 
% return a logical true, otherwise false. The name of the output argument 
% is valid. If any of the inputs is not a positive integer scalar, 
% return false as well. Note that every year that is exactly divisible by 
% 4 is a leap year, except for years that are exactly divisible by 100. 
% However, years that are exactly divisible by 400 are also leap years. 
% For example, the year 1900 was not leap year, but the year 2000 was. 
% Note that your solution must not contain any of the date related 
% built-in MATLAB functions.

% Leap year - Feb has 29 days

m_31 = [1,3,5,7,8,10,12]; % Months with 31 days
m_30 = [4,6,9,11];        % Months with 30 days
m_28 = 2;                 % Month with 28 days

if ~isscalar(year) || ~isscalar(month) || ~isscalar(day)
    valid = false;
    return
elseif year<=0 || month<=0 || day<=0
    valid = false; % Positive integer condition
    return
end

if((year/100) ~= fix(year/100)) && ((year/4) == fix(year/4)) || ((year/400) == fix(year/400)) %Condition for leap year
    
    if ismember(month,m_31) && day<=31
        valid = true;
    elseif ismember(month,m_30) && day<=30
        valid=true;
    elseif month == m_28 && day<=29 
        valid=true;
    else
        valid=false;
    end
    
else % If the year is not a leap year
    
    if ismember(month,m_31) && day<=31
        valid = true; 
    elseif ismember(month,m_30) && day<=30
        valid=true;
    elseif month == m_28 && day<=28
        valid=true;
    else
        valid=false;
    end
    
end
