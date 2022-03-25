function [b] = finverti(a)

    j=1;

    for i=length(a):-1:1
        b(j) = a(i);
        j = j + 1;
    end
end