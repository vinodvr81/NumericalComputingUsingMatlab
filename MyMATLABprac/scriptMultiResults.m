% To understand error in multi-step methods
% using e^(0.1) computation
% We will use this script to understand how
% Scripts and functions are written in MATLAB projects

%______________________________________________________

%% Problem Step
a=0.1;
N=a/h;
%% Computing using the Multi-step exp method
trueVal = exp(a);
for i = 1:3
    h = 10^(-i);    
    expVal = multistepExpFun(a,h);
    err = abs(trueVal-expVal);
    hAll(i) = h;
    errAll(i) = err;
end

%% plot error vs step-size
loglog(hAll, errAll,'-bo');
hold on
