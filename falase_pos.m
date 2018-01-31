function [ n ] = false_pos( xup,xlow )
f = inline('exp(2*cos(x))+sin(x)');

yup = f(xup);
ylow = f(xlow);
n = nan;
if yup*ylow <0
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
    n = xm;
end




end

