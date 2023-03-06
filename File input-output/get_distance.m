function distance = get_distance(city_1, city_2)

%%GET_DISTANCE
% The attached Distances.xlsx file contains a spreadsheet with the pairwise
% distances in miles of the top 100 US cities by population. A preview of
% the spreadsheet is shown below. The first row and first column contain 
% the city names using the following format: city name comma space 
% capitalized state abbreviation, e.g., Nashville, TN. Note that the very
% first cell of the spresheet, A1, is blank.
% Write a function called GET_DISTANCE that accepts two character vector 
% inputs representing the names of two cities. The function returns the
% distance between them as an output argument called distance. For example,
% the call get_distance('Seattle, WA','Miami, FL') should return 3723. 
% If one or both of the specified cities are not in the file, the function
% returns -1.
% Your function should load the data only once. File I/O is a time 
% consuming operation. Loading the data multiple times is will likely 
% cause a time-out error when submitting your function.

[~, ~, raw] = xlsread('Distances.xlsx'); % Two first output not necessary

for ii = 2:size(raw,1) % Comparing 1st input w/ all cities in 1st collumn
    
    if strcmp(raw{ii, 1},city_1) % If TRUE, it returns ii w/ the row index
        break;    
    end
end

for jj = 2:size(raw,2) % Comparing 2nd input w/ all cities in first row
    
    if strcmp(raw{1, jj},city_2) % If TRUE, it returns jj w/ the col. index
        break;
    end
end

if strcmp(raw{ii, 1},city_1) == 0 || strcmp(raw{1, jj},city_2) == 0
    distance = -1; % Result if one of the inputs doesn't match
else
    distance = raw{ii,jj}; % Correct cell value from raw sheet
end
