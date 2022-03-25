
% Senza utilizzare i comandi predefiniti di MATLAB, si scriva una funzione (tipo function) 
% B=funz_mat(A) che, data una matrice numerica A di dimensioni [m x n]con m e n generici 
A = [1.4897 -1.2075 1.0347; 1.4090 0.7172 0.7269; 1.4172 1.6302 -0.3034; 0.6715 0.4889 0.2939]
% e m numero pari, restituisca in uscita una nuova matrice B, di dimensioni [m x n], 
% tale che le righe di posto pari di B siano uguali alle righe di posto dispari di A, 
% mentre le righe di posto dispari di B siano uguali alle righe di posto pari di A 
% (ad esempio, le righe di posto 1 3 5 ... di A diventano le righe di posto 2 4 6 ... di B, 
% mentre le righe di posto 2 4 6 ... di A diventano le righe di posto 1 3 5 ... di B).

m = size(A,1)
n = size(A,2)

B = zeros(m,n)

for i=1:2:m
    B(i,:) = A(i+1,:)
    B(i+1,:) = A(i,:)
end
