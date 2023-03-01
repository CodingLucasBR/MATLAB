function [min, dist] = light_speed(dkm)

%%LIGHT_SPEED
% Write a function called LIGHT_SPEED that takes as input a row vector of 
% distances in kilometers and returns two row vectors of the same length. 
% Each element of the first output argument is the time in minutes that 
% light would take to travel the distance specified by the corresponding 
% element of the input vector. To check your math, it takes a little more 
% than 8 minutes for sunlight to reach Earth which is 150 million 
% kilometers away. The second output contains the input distances converted
% to miles. Assume that the speed of light is 300,000 km/s and that one 
% mile equals 1.609 km.

min = (dkm/300000)/60;
dist = dkm/1.609;