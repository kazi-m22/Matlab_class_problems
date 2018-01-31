clc;
clear all;
x = -10:1:10;

for i = 1:length(x)-1
    r(i) = false_pos(x(i+1), x(i));
end

r(isnan(r)) = [];

