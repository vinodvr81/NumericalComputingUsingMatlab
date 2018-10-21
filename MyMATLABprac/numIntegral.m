% program

clc
clf

% Numerical differentiation practice problem

%% problem setup
a = 1;
h = 0.1;
b = (a+h);
trueVal = (b-b^2/2+b*log(b)) - (a-a^2/2+a*log(a));

%% Trapezoidal Rule (Single application)
I_trap = h/2*(myFuncInt(a)+myFuncInt(b));
err_trap = abs(trueVal - I_trap);

%% simpsons one third rule 


