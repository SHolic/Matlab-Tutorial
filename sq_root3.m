% Simple algorithm for square roots
% This version uses a for loop with a break
a = input('Number to find square root of: ');
max_iter = input('Maximum iterations: ');
tol = input('Enter tolerance: ');
x_old = a/2;
for k = 1:max_iter
x_new = 0.5*(x_old + a/x_old);
disp(x_new);
if abs(x_new - x_old) < x_new*tol
break;
end
x_old = x_new;
end
if k == max_iter
fprintf('Failure to converge in %d iterations\n', max_iter)
end