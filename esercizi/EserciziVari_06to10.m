% =========================
% ===== Esercizi vari =====      x-devonthink-item://BD89973D-D4E8-484B-9E53-790621ACC3AD?page=0
% =========================

% 6. Si scriva un programma MATLAB (di tipo function) b=inverti_riga(a)che, dato il vettore 
% riga numerico a, costruisca il vettore riga b contenente gli elementi di a invertiti di posto. 
a = [0.3188, -1.3077, -0.4336, 0.3426, 0.215];

finverti_riga(a);

% (!!!)
% 7. Si scriva un programma MATLAB (di tipo function) che effettui l’ordinamento degli elementi 
% di un vettore numerico sia in senso crescente sia decrescente.
% Parametri di input:
%  a) vettore da ordinare
% Parametri di output:
%  b) vettore ordinato in senso crescente;
%  c) vettore ordinato in senso decrescente.

A = [2 -1 5 -5 10 4];


fordina(A, 2);

% 8. Si scriva un programma MATLAB (di tipo function) che, 
% dato un vettore contenente una serie di voti, conti quante sono 
% le sufficienze, cioè i voti maggiori o uguali a 18.

A = [13, 30, 24, 10, 28, 0, 16];

fvoto(A);

% 9. Si scrivano due programmi MATLAB (di tipo function). 
% a) Il primo vet=diag_vet(A) estragga la diagonale principale da una matrice numerica
A = [1 2 3; 4 5 6; 7 8 9]
fdiag(A)



% b) Il secondo D=diag_mat(v)costruisca la matrice diagonale D con diagonale principale pari a v
A = [3, 6, 9, 12]


fdiag_mat(A) 


% 10. Si scriva un programma MATLAB (di tipo function) m=media(a) che restituisca in 
% m la media aritmetica dei valori numerici contenuti nel vettore a.

A = [2, 10, 4, 2]

fmedia(A)

