function [vet] = fdiag_mat(A)
    
    vet = zeros(length(A))

    for i=1:length(A)
        for j=1:length(A)
            if (i==j)
                vet(i,j) = A(i)
            end
        end
    end
end