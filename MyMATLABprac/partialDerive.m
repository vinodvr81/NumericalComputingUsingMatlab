clc
clear all

% To find partial derivatives in two variables
% f(x) = sin(x1)+exp(-x2)

a = [0.5; 1];
h = [1e-6; 1e-6];
trueVal = [cos(a(1))*exp(-a(2)), -sin(a(1))*exp(-a(2))];

%% Partial derivative w.r.t first variable

x = a;
x(1) = a(1)+h(1);
f1 = sin(x(1))*exp(-x(2));
x(1)= a(1)-h(1);
f2 =  sin(x(1))*exp(-x(2));
numDiff(1) = (f1-f2)/(2*h(1)) ;


%% Partial derivative w.r.t second variable
temp_h = [0;h(2)];
f1 = myFunc3(a+temp_h);
f2 = myFunc3(a-temp_h);
numDiff(2) = (f1-f2)/(2*h(2));

%% Display results
err = abs(trueVal - numDiff);
disp(['Error is :', num2str(err)]);
disp(['Numerical Derivative is :', num2str(numDiff)]);