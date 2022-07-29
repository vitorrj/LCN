% =========================
% ===== Esercizi vari =====      x-devonthink-item://BD89973D-D4E8-484B-9E53-790621ACC3AD?page=0
% =========================

% 1. Si scriva un programma MATLAB (di tipo function) b=inverti(a)che, 
% dato il vettore colonna numerico a, costruisca il vettore colonna 
% b contenente gli elementi di a invertiti di posto. Ad esempio:

A = [0.5377; 1.8339; -2.2588; 0.8622];
B = finverti(A)

% (!!!)
% 2. Si scriva un programma MATLAB (di tipo function) che cambi la dimensione di un array
% conservando il numero di elementi; in particolare, tale funzione B=change(A,m,n) restituisce 
% l’array B di dimensioni [m x n] i cui elementi sono presi per colonna dall’array A.
A = [16 2 3 13; 5 11 10 8; 9 7 6 12; 4 14 15 1]

index = 1;

for j=1:2
    for i=1:8
        B(i,j) = A(index);
        index = index +1;
    end
end
B

% 3. Si scriva un programma MATLAB (di tipo function), B=replica(A,m,n), che crei una 
% matrice B costituita da (m X n) copie di A.

A = [0.5377 -2.2588 0.3188; 1.8339 0.8622 -1.3077];

freplica(A,2,2);

% 4. Si scriva un programma MATLAB (di tipo function, B=trova(A,x)) che, assegnata una matrice 
% quadrata numerica A ed un numero x, crei una seconda matrice B, avente le stesse dimensioni di A, che contenga
% a) una copia degli elementi di A se questi sono maggiori del valore dato x;
% b) zero se gli elementi di A sono minori o uguali a x.
    
A = [-0.4336 -1.3499 0.7147 1.4090; 0.3426 3.0349 -0.2050 1.4172; 3.5784 0.7254 -0.1241 0.6715; 2.7694 -0.0631 1.4897 -1.2075];

ftrova(A, 2.7);

% 5. Si scriva un programma MATLAB (di tipo function), y=cumula(x),che effettui la somma 
% cumulativa, cioè generi in uscita un vettore y che ha per i-esima componente la somma 
% degli elementi di x da x(1) a x(i). Ad esempio:
% x= [1 2 3 4 5 6 7]
% y= [1 3 6 10 15 21 28]

x = [1 2 3 4 90 6 7];

fcumula(x);
