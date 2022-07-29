function [b] = fpotenza(a,m)

    b = a;

    for i=1:m-1
        b = b*a;
    end

end