% Senza utilizzare i comandi predefiniti di MATLAB, si scriva una funzione (tipo function) 
% B=funz_mat(A) che, data una matrice numerica A di dimensioni [m x n], con m e n generici
A = [-1.3077 3.5784 3.0349 0.7147; -0.4336 2.7694 0.7254 -0.2050; 0.3426 -1.3499 -0.0631 -0.1241]
% e n numero pari, restituisca in uscita una nuova matrice B, di dimensioni [m x n], 
% tale che le colonne di posto pari di B siano uguali alle colonne di posto dispari di A, 
% mentre le colonne di posto dispari di B siano uguali alle colonne di posto pari di A 
% (ad esempio, le colonne di posto 1 3 5 ... di A diventano le colonne di posto 2 4 6 ... di B, 
% mentre le colonne di posto 2 4 6 ... di A diventano le colonne di posto 1 3 5 ... di B).

funz_mat(B)

function [B] = funz_mat(A)
    m = size(A,1);
    n = size(A,2);

    B = zeros(m,n)

    for i=1:2:n
       B(:,i+1) = A(:,i)            % even numbers (2k+1)  k \in \mathcal{Z}
       B(:,i)   = A(:,i+1)          % odd numbers  (2k)    k \in \mathcal{Z}
    end
end
