function [yn] = linear_interp(x,y,xn)
n = length(x);
yn = [];
for i = 1:length(xn)
    
    x_i = xn(i);

    for i = 1:n-1
        if x_i>=x(i) && x_i<=x(i+1)
            m = i;
        end
    end

    xa = x(m);
    xb = x(m+1);
    ya = y(m);
    yb = y(m+1);

    y_k = (((x_i-xb)/(xa-xb))*ya) - (((x_i - xa)/(xa-xb))*yb);
    yn = [yn y_k];
end
end
