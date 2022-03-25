function [B] = ftrova(A, n)

    B = zeros(size(A));

    for i=1:length(A)
        for j=1:length(A)
            if A(i,j) > n
             B(i,j) = A(i,j);
            end
        end
    end
    
end