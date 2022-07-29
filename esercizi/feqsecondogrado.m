function [] = feqsecondogrado(a,b,c)
    
    Delta = sqrt(b^2 - (4*a*c));

    if Delta > 0 
        y_1 = (-b + Delta)/(2*a);
        y_2 = (-b - Delta)/(2*a);

        disp("Abbiamo due radici reali "), disp(y_1), disp(y_2)

    elseif Delta == 0
        y = (-b - Delta)/(2*a);

        disp("Abbiamo una radici reali "), disp(y)

    else
        y_1 = (-b - Delta)/(2*a);
        y_2 = (-b - Delta)/(2*a);

        disp("Abbiamo due radici complesse "), disp(y_1), disp(y_2)
    end

end