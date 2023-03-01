function total_fare = taxi_fare(d,t)

%%TAXI_FARE
% Write a function called TAXI_FARE that computes the fare of a taxi ride.
% It takes two inputs: the distance in kilometers (d) and the amount of
% wait time in minutes(t). The fare is calculated like this:
% the first km is $5; every additional km is $2, and every minute of
% waiting is %0.25
% Once a km is started, it counts as a whole. The same rule applies to wait
% times. You can assume that d>0 and t>=0 but they are not necessarily
% integers. The function return the fare in dollars. 

x=ceil(d); y=ceil(t);
km = 5+(x-1)*2;
wait_minutes = 0.25*y;
total_fare = km+wait_minutes;
