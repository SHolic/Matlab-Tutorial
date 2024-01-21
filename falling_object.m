function [x,v] = falling_object(g,m,k,t)
    % A function to calculate the position and velocity of
    % a falling object with air resistance proportional to velocity.
    % It is assumed that the initial position is 0 with positive
    % direction downward and that the initial velocity is also 0
    %
    % Input:
    % g: the acceleration due to gravity (for example 9.81 m/sˆ2)
    % m: the mass of the object (for example, 10 kg)
    % k: the drag coefficient (for example, 2 kg/s
    % t: the time in seconds since object was dropped
    % Output:
    % x: the position at time t
    % v: the velocity at time t
    
    c1 = m*g/k;
    c2 = m/k;
    % Initial conditions at time 0
    x0 = 0;
    v0 = 0;
    % Formulas for velocity and position
    v = c1 + (v0 - c1)*exp(-t/c2);
    x = x0 + c1*t + c2*(v0 - c1)*(1 - exp(-t/c2));
end