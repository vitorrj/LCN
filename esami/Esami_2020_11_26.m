% Senza utilizzare le funzioni predefinite di MATLAB, si scriva una funzione (tipo function) B=funz_mat(A) 
% che, data una matrice numerica A di dimensioni [m x n]
A = [-1.3077 2.7694 -0.0631; -0.4336 -1.3499 0.7147; 0.3426 3.0349 -0.2050; 3.5784 0.7254 -0.1241]
% restituisca in uscita una nuova matrice B, di dimensioni [n x m], tale che le righe di B siano pari alle colonne di A.

B = funz_mat(A)

function [B] = funz_mat(A)
    m = size(A,1);
    n = size(A,2);

    B = zeros(n,m);

    for i=1:n
       B(i,:) = A(:,i)'; 
    end
end