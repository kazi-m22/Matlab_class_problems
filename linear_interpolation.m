clear all
clc

x = [0:6];
y = [0 .8415 .9093 .1411 -.7568 -.9589 -.2794];
plot(x,y,'o')
n = length(x);
x_i = input('x = ');

for i = 1:n-1
    if x_i>=x(i) && x_i<=x(i+1)
        m = i;
    end
end

xa = x(m)
xb = x(m+1)
ya = y(m)
yb = y(m+1)

y_k = (((x_i-xb)/(xa-xb))*ya) - (((x_i - xa)/(xa-xb))*yb);

for i = 1:length(x)
    points = linspace(i-1,i,100);
    xa = x(i);
    xb = x(i+1);
    ya = y(i);
    yb = y(i+1);
    y_k = (((points-xb)/(xa-xb))*ya) - (((points - xa)/(xa-xb))*yb);
    plot(points,y_k, x, y, 'o');
    hold on;
end
