% Finding the roots of a quadratic equation
% axˆ2 + bx + c = 0
a = input('Enter coeff of xˆ2 ');
b = input('Enter coeff of x ');
c = input('Enter constant coeff ');
d = b*b - 4*a*c;

if d > 0
    root1 = (-b + sqrt(d)) / (2*a);
    root2 = (-b - sqrt(d)) / (2*a);
    disp('Real unequal roots');
    disp(root1);
    disp(root2);
elseif d < 0
    root_real = -b / (2*a);
    root_imag = sqrt(abs(d));
    disp('Complex roots');
    disp(complex(root_real, root_imag));
    disp(complex(root_real, -root_imag));
else
    root = -b / (2*a);
    disp('Real equal roots');
    disp(root);
end