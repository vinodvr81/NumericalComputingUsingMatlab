% Maclaurin Series for exp(0.1)

n            =         5;
a            =         0.1;
expVal       =         1.0;

currentTerm  =         1.0;

for i = 1:n
    currentTerm  = currentTerm * a/i;
    expVal(i+1)  = expVal(i) + currentTerm;
    
end

trueVal = exp(0.1);
err     = abs(trueVal - expVal);

