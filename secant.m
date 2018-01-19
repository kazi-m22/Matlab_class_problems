clc
clear all

x = sym('x');
fs = x^2 - 3;
f =matlabFunction(fs);
fd = matlabFunction(diff(fs));

x1 = 4;
x2 = 5

while(abs(f(x2))) > .01
    
    x2 = x1 - (f(x1)*(x2-x1))/(f(x2)-f(x1));
    
end

x2