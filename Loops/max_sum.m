function [summa, index] = max_sum(v,n)

%%MAX_SUM

if n>length(v)
    summa=0;
    index =-1;
    return
end

vector = zeros(1, length(v)); % Preallocation
for ii = 1:length(v)-n+1 % Loop index
    vector(ii) = sum(v(ii:ii+n-1)); % vector of sum of all subsequent elements
end

[summa, index] = max(vector); % polymorfic function MAX for two outputs