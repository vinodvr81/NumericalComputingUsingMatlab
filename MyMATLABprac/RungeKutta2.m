% delta t small time interval
% Runge-Kutta (RK-2) Methods

% y' = -2ty
% initial y(0) = 1
% Analytical Solution y(t) = exp(-t^2)

clc
clear all

%%

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
    k1 = -2*T(i)*Y(i);
    tNem = T(i)+h;
    yNew = Y(i)+h*k1;
    k2 = -2*tNem*yNew;
    Y(i+1) = Y(i)+ h/2*(k1+k2);
end

%% Plot Results and errors
plot(T,Y)
Ytrue = exp(-T.^2);
err = abs(Ytrue-Y);
max(err)