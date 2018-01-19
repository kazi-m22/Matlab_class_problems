r = []
for i = -10:.5:10
    if i ==10
        break
    else
        r = [r bisec(i+.5,i)];
    end
end

r(isnan(r)) = []
