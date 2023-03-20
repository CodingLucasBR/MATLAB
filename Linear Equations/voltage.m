function vlt = voltage(volt, R)

% Writing the equations that describe the electrical circuit with symbolic variables
syms A B C V R1 R2 R3 R4 R5 R6 R7 R8
eq1 = ((V-A)/max(R1,eps)) - ((A-B)/max(R7,eps)) - (A/max(R2,eps)) == 0;
eq2 = ((V-B)/max(R3,eps)) + ((A-B)/max(R7,eps)) - ((B-C)/max(R8,eps)) - (B/max(R4,eps)) == 0;
eq3 = ((V-C)/max(R5,eps)) + ((B-C)/max(R8,eps)) - (C/max(R6,eps)) == 0;

% Handing out values of input vector R and numeric V
R1 = R(1); R2 = R(2); R3 = R(3); R4 = R(4); R5 = R(5); R6 = R(6);
R7 = R(7); R8 = R(8); V = volt;

% Replacing values
eq1 = subs(eq1, {'R1', 'R2', 'R7', 'V'}, {R1, R2, R7, V});
eq2 = subs(eq2, {'R3', 'R4', 'R7', 'R8', 'V'}, {R3, R4, R7, R8, V});
eq3 = subs(eq3, {'R5', 'R6', 'R8', 'V'}, {R5, R6, R8, V});

% Writing A(M output) and B(N output) matrix to get the forme Ax = B
[M, N] = equationsToMatrix([eq1, eq2, eq3], [A, B, C]);

% Using backslash operator to solve the linear equation
vlt = double(M\N);
