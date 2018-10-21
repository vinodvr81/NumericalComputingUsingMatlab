% y(i+1) = y(i) +hS(i) (s --> slope F(t(i),y(i)))

% y' = -2ty

% initial y(0) = 1

% Analytical Solution y(t) = exp(-t^2)

t0 = 0;
y0 = 1;
tEnd = 5;
h = 0.1;
N = (tEnd-t0)/h
%% Initializing Solution

T = [t0:h:tEnd]';
Y = zeros(N+1,1);
Y(1) = y0;

%% Solving Euler's Explicit Method

for i=1:N
    fi = -2*T(i)*Y(i);
    Y(i+1) = Y(i)+ h*fi;
end

%% Plot Results and errors
plot(T,Y)
Ytrue = exp(-T.^2);
err = abs(Ytrue-Y);
max(err)