% Simple algorithm for square roots
% This version uses a while loop
a = input('Number to find square root of: ');
max_iter = input('Maximum iterations: ');
x = a/2;
k = 1;
while k <= max_iter
x = 0.5*(x + a/x);
disp(x);
k = k + 1; % don’t forget this
end
