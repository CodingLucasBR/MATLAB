function amag = accelerate(F1,F2,m)

%%ACCELERATE
% Write a function that is called like this: amag = accelerate(F1,F2,m). 
% F1 and F2 are three-element column vectors that represent two forces 
% applied to a single object. The argument m equals the mass of the object
% in units of kilograms. The three elements of each force equal the x, y, 
% and z components of the force in Newtons. The output variable amag is a 
% scalar that is equal to the magnitude of the object’s acceleration. The 
% function calculates the object’s acceleration vector a by using Newton’s 
% law: F = ma, where F is the sum of F1 and F2. Then it returns the 
% magnitude of a.

FRx = F1(1) + F2(1); % Resultant of forces F1 and F2 in X-direction.
FRy = F1(2) + F2(2); % Resultant of forces F1 and F2 in Y-direction.
FRz = F1(3) + F2(3); % Resultant of forces F1 and F2 in Z-direction.
FR = sqrt(FRx^2 + FRy^2 + FRz^2); % Magnitude of forces F1 and F2.
amag = FR/m; % Magnitude of the object’s acceleration.

