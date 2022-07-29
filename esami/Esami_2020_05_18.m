
clear all 
clc

% Si scriva un programma MATLAB (di tipo function) s=somma_tria(A)che, 
% data la matrice numerica A, memorizzi in due vettori di appoggio vet_s e 
% vet_i gli elementi della parte triangolare superiore ed inferiore della matrice A e 
A = [3 2 5 7; 1 8 0 2; 9 4 1 8; 4 3 6 2]
% restituisca in s il vettore somma. Ad esempio: 
% vet_s = [2 5 7 0 2 8];
% vet_i = [1 9 4 4 3 6];
% s = vet_i+vet_s = [3 14 11 4 5 14];

somma_tria(A)

function [B] = somma_tria(A)
    
    n = length(A);
    vet_s = [];
    vet_i = [];

    for i=1:n
       for j=1:n
           if (i<j)
               vet_s = [vet_s, A(i,j)];       
           end
           if i>j
              vet_i = [vet_i, A(i,j)];
           end
       end
    end

    s = vet_s + vet_i
end