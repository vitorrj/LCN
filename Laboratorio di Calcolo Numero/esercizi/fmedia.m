function [media] = fmedia(A)
    
    sum = 0;
    
    for i=1:length(A)
        sum = sum + A(i)
    end
    
    media = sum/length(A);
end
