clc
clear all

x = sym('x');
fs = x^2 - 3;
f =matlabFunction(fs);
fd = matlabFunction(diff(fs));
fd = fd
x1 = 4;
while(abs(f(x1))) > .01
    x2 = x1-f(x1)/fd(x1);
    x1 = x2;
end

x1
