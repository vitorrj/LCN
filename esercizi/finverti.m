function [arrayInvertito] = finverti(array)

    j = 1
    
    for i=length(array):-1:1 
        B(j) = array(i); 
        j = j + 1;
    end
    
    arrayInvertito = B';
    
end