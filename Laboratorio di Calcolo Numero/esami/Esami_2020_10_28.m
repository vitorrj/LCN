% Senza utilizzare le funzioni predefinite di MATLAB, si scriva una funzione (tipo function) B=sort_mat(A) che, 
% data una matrice numerica A di dimensioni[m x n]
A = [-1.3077 2.7694 -0.0631; -0.4336 -1.3499 0.7147; 0.3426 3.0349 -0.2050; 3.5784 0.7254 -0.1241]
% restituisca in uscita una nuova matrice B, di dimensioni [m x n], tale che 
% a) le righe dispari di B siano ordinate in senso crescente
% b) mentre le righe pari siano ordinate in senso decrescente.

B = sort_mat(A)

function [C] = sort_mat(A)

    m = size(A,1);
    n = size(A,2);
    C = zeros(m,n)

    for i=1:m
       B = A(i,:);

       if mod(i,2) == 0
           C(i,:) = sortingAscend(B,2);
       else
           C(i,:) = sortingAscend(B,1);
       end
     end
end

% Using selection sort
function [B] = sortingAscend(A, mode)
    
    n = length(A);
    
    for i=1:n
        indexSmallest = i;

        for j=i+1:n
            switch mode
                case 1
                    if A(j) < A(indexSmallest)
                        indexSmallest = j;
                    end
                case 2
                    if A(j) > A(indexSmallest)
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

