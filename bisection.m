clc
clear all

f = inline('x^2-3');

xup = 2;
xlow = 1;

yup = f(xup);
ylow = f(xlow);
count  = 0;
if (yup*ylow > 0)
    disp('root is not in interval');
else
    while (xup-xlow >.001)
        xm = (xup + xlow)/2;
        ym = f(xm);
        count = count + 1
        if ym == 0
            break;
        else
            yup = f(xup);
            ylow = f(xlow);
            if ym*ylow >0
                xlow = xm;
            else 
                xup = xm;
            end
        end
    end
end

xm
