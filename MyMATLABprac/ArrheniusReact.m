% To calculate f'(x) for an Arrhenius reaction expression

% r = k*e^(-E/RT) + C ^1.25
% constants

k    = 1000;
EbyR = 2500;
C    = 1.0;
T    = 600;

%% Differentiation

r = k*exp(-EbyR/T)*C^1.25;
trueVal = r * (EbyR/T^2);

h = [1.0e-3 1.0e-4  1.0e-5  1.0e-6  1.0e-7  1.0e-8]*T;
r1 = k * exp(-EbyR./(T+h)) * C^1.25;
r2 = k * exp(-EbyR./(T-h)) * C^1.25;
numVal = (r1-r2)./(2*h);

err = abs(trueVal-numVal);
