a =1;

trueVal = 1/(1+a^2);


for i = 2:2:14
    h = 10^(-i);
    approxVal = (atan(a+h)-atan(a))/h;
    err = abs(trueVal - approxVal);   
    
    hall(i-1) = h;
    errall(i-1) = err;
end

figure(1)
loglog(hall,errall);
