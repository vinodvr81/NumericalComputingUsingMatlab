clc
clf

%%
% e^(X+h) = e^(X)+h*e^(X) 
%Problem step

%%

a=0.1;
h=0.001;
N=a/h;

trueVal = exp(a);
expVal = 1;
%% Multi-Step Computation

for i=1:5
    h = 10^(-i);
    expVal = expVal*(1+h);
    


end

expVal1 = exp(a)+h*exp(a)

err1 = abs(trueVal-expVal)

err2 = abs(trueVal-expVal1)