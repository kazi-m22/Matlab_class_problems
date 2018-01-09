clc
clear all;
x = [0:5];
y=[2.1 7.7 13.6 27.2 40.9 61.1];

n = 2;


for i = 1:n+1
    t = i-1;
    for j = 1:n+1
        A(i,j) = sum(x.^(t+j-1));
    end
end

i = 1;

for i = 1:n+1
    B(i) = sum((x.^(i-1)).*y);
    i-1
end
b = B'

c = inv(A)*b
