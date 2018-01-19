
clc
clear all;
x = [-4:5];
y=[.4 -3.4 .4 .4 -.8 .4 2.56 .4 -6.8 .4];

n = 6;


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
l = length(c);
ym = [];
xm = -4:.001:5
for i = 1:length(xm)
    temp = xm(i)
    for j = 1:l
        X(j) = temp^(j-1);
    end
    ym(i) = c'*X';
end

plot(x,y,'o', xm,ym)

