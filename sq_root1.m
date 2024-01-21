% Simple algorithm for square roots
a = input('Number to find square root of: ');
max_iter = input('Maximum iterations: ');
x = a/2;
for k = 1:max_iter
x = 0.5*(x + a/x);
disp(x);
end