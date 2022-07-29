function [voti] = fvoti(A)

    voti = 0;

    for i=1:length(A)
        if A(i) > 18
            voti = voti + 1;
        end
    end

    disp("Ci sono "), disp(voti), disp("voti")

end