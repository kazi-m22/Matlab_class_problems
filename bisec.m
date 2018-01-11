function [ n ] = bisec( xup, xlow )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
n = [];
f = inline('x^3-3*x');
yup = f(xup);
ylow = f(xlow);
count  = 0;

    while (xup-xlow >.001)
        xm = (xup + xlow)/2;
        ym = f(xm);
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

n = xm;

