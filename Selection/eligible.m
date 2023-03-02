function admit = eligible(v,q)

%%ELIGIBLE
% Write a function called ELIGIBLE that helps the admission officer of 
% the Graduate School of Vanderbilt University decide whether the applicant
% is eligible for admission based on GRE scores. The function takes two 
% positive scalars called v and q as input and returns the logical admit 
% as output. They represent the percentiles of the verbal and quantitative
% portions of the GRE respectively. You do not need to check the inputs. 
% The applicant is eligible if the average percentile is at least 92% and 
% both of the individual percentiles are over 88%. The function returns 
% logical true or false value.

if v > 88 && q > 88 && (v+q)/2 >= 92
    admit = true;
else
    admit = false;
end
