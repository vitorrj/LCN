% Esercizio 1
% Si scriva una funzione MATLAB (di tipo function) B=sum_row(A) che, data una matrice numerica A di dimensioni [m x n
A = [1 2.2 3 5.7; -1 0 -2 7]
% restituisca in uscita una nuova matrice B, di dimensioni [m x n], tale che ciascun elemento di B sia pari alla somma 
% dell’elemento stesso e di tutti quelli che lo precedono nella riga. Ad esempio:
sum_row(A)


% Esercizio 2
% Si scriva una funzione MATLAB (di tipo function) B=sum_col(A) che, data una matrice numerica A di dimensioni [m x n], 
A = [1 2.2; -1 0; -2 7; 3 5.7]
% restituisca in uscita una nuova matrice B, di dimensioni [m x n], 
% tale che ciascun elemento di B sia pari alla somma dell’elemento stesso e di tutti quelli che lo precedono nella colonna
sum_col(A)




% Exercise 1
function [B] = sum_row(A)

    m = size(A,1);
    n = size(A,2);
    B = zeros(m,n);


    for i=1:m
        acc = 0;
        for j=1:n
            acc = acc + A(i,j);
            B(i,j) = acc ;
        end
    end
end


% Exercise 2
function [B] = sum_col(A)  
    m = size(A,1);
    n = size(A,2);
    B = zeros(m,n)

    for j=1:n
        acc = 0;
        for i=1:m
            acc = acc + A(i,j);
            B(i,j) = acc;
        end
    end
end