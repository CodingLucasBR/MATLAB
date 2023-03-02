function too_young = under_age(age,limit)

if nargin == 2
    if age<limit
        too_young = true;
    else
        too_young = false;
    end
    
else
    limit = 21;
    if age<limit
        too_young = true;
    else
        too_young = false;
    end
end

