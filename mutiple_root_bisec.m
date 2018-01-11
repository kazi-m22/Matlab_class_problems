clc
clear all

f = inline('x^3-3*x');

x_up = 3;
x_low = -1;

y_up = f(x_up);
y_low = f(x_low);
count  = 0;
r = []

    while (x_up-x_low >.001)
        x_m = (x_up + x_low)/2;
        ym = f(x_m);
        
        if ym == 0
            break;
        else
            y_up = f(x_up);
            y_low = f(x_low);
            
         if (ym*y_low <0) && (ym*y_up < 0)
                x_m2 = x_m;
                bisec(x_m2, x_low)
                bisec(x_up, x_m)
                 
        elseif ym*y_low >0
                x_low = x_m;  
            else 
                x_up = x_m;
            end
        end
    end


