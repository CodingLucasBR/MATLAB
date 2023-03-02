function f = day_diff(month1, day1, month2, day2)

%%DAY_DIFF
% Write a function called DAY_DIFF that takes four scalar positive integer 
% inputs, month1, day1, month2, day2. These represents the birthdays of 
% two children who were born in 2015. The function returns a positive 
% integer scalar that is equal to the difference between the ages of the 
% two children in days. Make sure to check that the input values are of 
% the correct types and they represent valid dates. If they are erroneous, 
% return -1. An example call to the function would be
% >> dd = day_diff(1,30,2,1);
% which would make dd equal 2. You are not allowed to use the built-in 
% function datenum or datetime.

m_28 = 2; % 2015 was not a leap year
m_30 = [4 6 9 11];
m_31 = [1 3 5 7 8 10 12];
  
% Checking input arguments
f = -1;
if sum([month1, day1, month2, day2] > 0) ~= 4 || ... % Inputs must be positive
   sum(mod([month1, day1, month2, day2],1)) ~= 0 || ... % Inputs must be integers
   sum(size([month1, day1, month2, day2])) ~= 5 % Inputs must be scalars 
   return
end
if (ismember(month1,m_30) && day1 > 30) || (ismember(month2,m_30) && day2 > 30)
   return    
elseif (ismember(month1,m_31) && day1 > 31) || (ismember(month2,m_31) && day2 > 31)
    return
elseif (ismember(month1,m_28) && day1 > 28) || (ismember(month2,m_28) && day2 > 28)
    return
end
% End of cheking

total_days_1 = sum((month1 >= m_30) * 30) + sum((month1 >= m_31) * 31)...
    + sum((month1 >= m_28)*28);
if ismember(month1,m_28)
    residual_1 = abs(28 - day1);
elseif ismember(month1,m_30)
    residual_1 = abs(30 - day1);
else
    residual_1 = abs(31 - day1);
end

total_days_2 = sum((month2 >= m_30) * 30) + sum((month2 >= m_31) * 31)...
    + sum((month2 >= m_28)*28);
if ismember(month2,m_28)
    residual_2 = abs(28 - day2);
elseif ismember(month2,m_30)
    residual_2 = abs(30 - day2);
else
    residual_2 = abs(31 - day2);
end

f = abs((total_days_1 - residual_1) - (total_days_2 - residual_2));




