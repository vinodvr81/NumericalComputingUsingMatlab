% Maclaurin Series for exp(0.1)

n            =         5;
a            =         0.01;
vec          =         [1:n];
terms = a.^vec./ cumprod(vec);
expVal=1+cumsum(terms);
trueVal = exp(a);
err     = abs(trueVal - expVal);

plot(err);
hold on

