clc
clear all

f = inline('cos(x)');
xup = 8.5;

c = 0;
r = []
while xup >= -9
    xlow = xup - 1;
    if f(xup)*f(xlow) >0
    disp("root is not in intervel");
    else
        yup = f(xup);
        ylow = f(xlow);
    while (xup-xlow)> .01
        c = c+1;
        xm = (xup+xlow)/2;
        ym = f(xm);
        if ym == 0
            break
        else
             yup = f(xup);
             ylow = f(xlow);
             if ym*ylow >0
                 xlow = xm;
             else
                 xup = xm;
             end
             plot(xm,f(xm), 'o');
             pause(3);
        end
    end
end
r = [r xm];
xup = xm
end
