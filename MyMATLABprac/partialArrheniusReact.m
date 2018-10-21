clc
clear all

% To calculate f'(x) for an Arrhenius reaction expression

% r = k*e^(-E/RT) + C ^1.25
% constants


C    = 1.0;
T    = 600;


%trueVal 

%% Partial derivative w.r.t first variable

h = [1e-6*T; 1e-6];
x1 = [T+h(1);C];
x2 = [T-h(1);C];
numDiff(1) = (myRate(x1)-myRate(x2))/(2*h(1));

x1 = [T; C+h(2)];
x2 = [T; C-h(2)];
numDiff(2) = (myRate(x1)-myRate(x2))/(h(2));

%% Display results
disp(['Partial derivative of r :', num2str(numDiff)]);
