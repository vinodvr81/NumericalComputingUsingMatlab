% Maclaurin Series for exp(0.1)

n            =         3;
a            =         [0.1,0.05,0.02,0.01];
vec          =         [1:n];
err = [];
for i = 1:length(a)
    
    terms = (a(i).^vec)./ cumprod(vec);
    expVal=1+cumsum(terms);
    trueVal = exp(a(i));
    err     = [err; abs(trueVal - expVal)];
    
end
figure(1)
loglog(a,err);
xlabel('Step size');
ylabel('Error');
legend('n=1','n=2','n=3');
shg

figure(2)
plot(log10(a),log10(err));
shg



