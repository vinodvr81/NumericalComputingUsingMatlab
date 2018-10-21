v0 = 20;
g = 9.8;
y = 0;
t = 0;
while (y>=0)
    t = t +0.1;
    y = v0*t - g*t^2/2;
    disp(['At t =', num2str(t), ', location = ' , num2str(y)]);
end