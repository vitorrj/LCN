% Esercizio 1
% Si scriva un programma MATLAB che, data la matrice numerica A ed il vettore [1,2,3], 

% conti il numero di volte in cui il vettore [1,2,3] è contenuto nelle righe della matrice A e 
% restituisca in uscita una matrice P contenente le posizioni del primo elemento del vettore nella matrice A 
% (cioè l’indice di riga e di colonna)

A = [ 0  1  2  3 -1 0.7 -1.2 -4.2
     -1  1  2  3 -1 0.7 -1.2 -4.2
      0  1  2 -2 -1 0.7 -1.2 -4.2
      0  1  2  4 -1 0.7 -1.2 -4.2
      0  0  0  1  2  3  -1.2 -4.2
      3  1  2  3 0.7 1    2    3
      0  1  2  2  -1 0.7 -1.2 -4.2];

m = size(A,1);
n = size(A,2);

count = 0;
index = [];

for j=1:m
    
    B = A(j,:);
    
    for i=1:n
        if B(i) == 1 
           if B(i+1)== 2
               if B(i+2) == 3
                  index = [index; j i];
                  count = count + 1;
               end
           end
        end
    end
end
  
% Esercizio 2
% Si scriva un programma MATLAB che, data la matrice numerica A ed il vettore [1;2;3], 
% conti il numero di volte in cui il vettore [1;2;3] è contenuto nelle colonne della 
% matrice A e restituisca in uscita una matrice P contenente le posizioni del primo 
% elemento del vettore nella matrice A (cioè l’indice di riga e di colonna )

A = [0 -1 0 0 0 0 3 0; 1 1 -1 1 0 1 1 1; 2 2 2 2 0 2 2 2;
     3 3 -2 4 1 2 3 2; -1 -1 -1 -1 2 -1 0.7 -1; 7 7 0.7 0.7 3 0.7 1 0.7;
     -1 -1 -1.2 -1.2 -1.2 -1.2 2 -1.2; -4 -4 -4.2 -4.2 -4.2 -4.2 3 -4.2];

m = size(A,1);
n = size(A,2);
index = [];
count = 0;

for j=1:m
    B = A(:,j)'

    for i=1:n
        if B(i) == 1
            if B(i+1) == 2
                if B(i+2) == 3
                  index = [index; i j]
                  count = count + 1;
                  disp("Trovato")  
                end
            end
        end
    end
end

disp(index), disp(count)