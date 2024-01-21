function [product] = fact(n)
product = 1;
for k = 2:n
    product = product * k;
end