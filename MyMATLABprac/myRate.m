function r = myRate(x)
% Constants
    k    = 1000;
    EbyR = 2500;
% Current value of T and C
    T = x(1);
    C = x(2);
    
% Rate calcualtion
    r = k*exp(-EbyR/T)*C^1.25;
    
end