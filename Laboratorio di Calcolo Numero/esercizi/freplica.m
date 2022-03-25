function [B] = freplica(A,m,n)

    B = []
    
    for i=1:n
        B = [B, A];
    end
    
    if i ~= 1
        for i=1:m-1
            B = [B; B];
        end
    end

end