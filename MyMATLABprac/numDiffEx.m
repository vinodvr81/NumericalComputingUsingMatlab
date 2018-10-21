% comparing numerical differentiation formula
% f(x)  = tan^{-1}{x}
% Calculate f'{x} at x = 1

a = 1;
trueVal = 1/(1+a^2);
%h = 1.0e-4;
h = 10.^[-1:-1:-5];

%%Forward Difference formula
fwdDiff = (atan(a+h)-atan(a))./h;
errFwd = abs(trueVal-fwdDiff);
disp(['Error in forward Difference :',num2str(errFwd)]);


%%Central Difference formula

ctrDiff = (atan(a+h)-atan(a-h))./(2*h);
errCtr = abs(trueVal-ctrDiff);
disp(['Error in Central Difference :',num2str(errCtr)]);

%%Backward Difference formula

bkdDiff = (atan(a)-atan(a-h))./h;
errBkd = abs(trueVal-bkdDiff);
disp(['Error in backward Difference :',num2str(errBkd)]);

%plot
loglog(h,errFwd,'--b',h,errCtr,'--r',h,errBkd,'--m')