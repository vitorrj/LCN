function [y] = fcumula(x)

    acc = 0
    
    for i=1:length(x)
        acc = acc + x(i);
        y(i) = acc;
    end
end