% =========================
% ===== Esercizi vari =====      x-devonthink-item://BD89973D-D4E8-484B-9E53-790621ACC3AD?page=0
% =========================

% 11. Si scriva un programma MATLAB (di tipo function) b=potenza(a,m)
% che data la base a e l’esponente m calcola	la potenza b=am.


fpotenza(10,4)

% 12. Si scriva una funzione MATLAB che crei una matrice quadrata di 
% dimensione data avente ogni elemento pari al prodotto del numero di riga 
% e colonna corrispondenti alla posizione dell'elemento stesso.


n = 3;
A = zeros(n)

for i=1:n
   for j=1:n
    A(i,j) = i*j;
   end 
end

% 13. Si scriva una funzione Matlab che calcoli il numero di Fibonacci.
% E.g 1 , 1 , 2 , 3 , 5 , 8 , 13 , 21 , 34 , 55


ffibonacci(10)

% 14. Si realizzi uno script in Matlab che richieda l’inserimento dei tre 
% coefficienti di un’equazione di secondo grado e stampi il valore delle radici reali.

feqsecondogrado(1,2,-5)


% 15. Si realizzi uno script in Matlab che, data una matrice quadrata
% 1) ne estragga la diagonale principale;
% 2) elimini la diagonale principale.

A = [1 2 4; 5 -10 4; -2 4 -6] 

n = length(A); 

diagonale = zeros(1,n);

for i=1:n  
    diagonale(i) = A(i,i);
end

B = zeros(n,n-1);

for i=1:n
    for j=1:n-1
       if i ~= j
           B(i-1,j) = A(i,j);
       end
    end
end

B 

