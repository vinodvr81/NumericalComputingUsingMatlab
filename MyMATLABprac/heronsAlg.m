clc
clear

x = 0.1;
%Claculate sqrt(2) using Heron Algorithm
atol =1.0e-5;
err = 1;


while (err > atol)
    
    xNew = 1/2*(x+2/x);
    err = abs(x-xNew)
    x = xNew;
    
end