%%
% dp/dt = 0.7P(t)(1-P(t)/750)-20
% P(0) = 30
%%
Dt = 0.01;                              % time step delta t
p_init = 30;                           % initial population
t_init = 0;                           % initial time
t_end  = 25;                           % stopping time
n_steps = round((t_end-t_init)/Dt);    %Total number of steps

%%
p_arr = zeros(n_steps+1,1);  % create an array of zeros for p
p_arr(1) = p_init;          % add the initial p to array
for i = 1:n_steps
   p =  p_arr(i);   
   dp = Dt*(0.7*p*(1-(p/750))-20);  % Calculating the derivative
   p_arr(i+1) = p +dp;    % Calculating p on the next time step  
    
end

plot(p_arr)
