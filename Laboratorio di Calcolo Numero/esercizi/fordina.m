% This is using the selection sort algorithm 

function [B] = fordina(A, mode)

    for i=1:length(A)
        indexSmallest = i;
        for j=i+1:length(A)
           switch mode
               case 1
                   if A(indexSmallest) > A(j)
                       indexSmallest = j;
                   end
               case 2
                  if A(indexSmallest) < A(j)
                     indexSmallest = j;
                  end
           end
        end
        temp = A(i);
        A(i) = A(indexSmallest);
        A(indexSmallest) = temp;
    end
    B = A;
end
