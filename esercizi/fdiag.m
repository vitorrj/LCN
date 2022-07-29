function [vet] = fdiag(A)
    
    vetDiagonale = [];
    
    for i=1:size(A,1)
        for j=1:size(A,2)
            if (i==j)
                vetDiagonale(i) = A(i,j)
            end
        end
    end
    vet = vetDiagonale'
end

