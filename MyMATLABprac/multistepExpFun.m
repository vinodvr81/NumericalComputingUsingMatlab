function expVal = multistepExpFun(a,h)
%%
% e^(X+h) = e^(X)+h*e^(X) 
%Problem step

%%
N=a/h;
expVal = 1;
%% Multi-Step Computation



for i=1:N
    %expVal = expVal*(1+h);
    expVal = expVal*(1+h+0.5*h^2);
end

