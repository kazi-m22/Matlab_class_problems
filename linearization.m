clc;
clear all;
x = [1:5];
y = [.5 1.7 3.4 5.7 8.4];

x = log(x);
y = log(y);


sumxy = sum(x.*y);
sumx = sum(x);
sumy = sum(y);
sumx2 = sum(x.^2);

n = length(x);

b2 = ((n*sumxy)-(sumx.*sumy))/((n*sumx2)-(sumx*sumx))
a2 = mean(y) - b2*mean(x);
a2 = exp(a2)                                            %antilog