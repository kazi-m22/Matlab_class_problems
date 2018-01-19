clc
clear all;

f = inline('x^2-3');
xup = 4;
xlow = 1;
yup = f(xup);
ylow = f(xlow);

if yup * ylow > 0
    disp('root is not in interval');
else
    xm = xup-f(xup)*(xlow-xup)/(f(xlow)-f(xup));
    ym = f(xm);
    while abs(ym)>=.001
        if ym == 0
            break
        else
            ylow = f(xlow);
            yup = f(xup);
            if ym*ylow>0
                xlow = xm;
            else
                xup = xm;
            end
        end
    xm = xup-f(xup)*(xlow-xup)/(f(xlow)-f(xup));
    ym = f(xm);
    end
end

xm
            
            