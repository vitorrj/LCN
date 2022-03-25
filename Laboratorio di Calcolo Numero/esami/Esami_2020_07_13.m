% Esercizio 1
% Si scriva un programma MATLAB che, data la matrice numerica quadrata A (con numero di righe e colonne pari), costruisca una nuova matrice B tale che:
% 1) laprimacolonnadiBsiapariallasecondacolonnadiA,mentrelasecondacolonnadi
% B sia pari alla prima colonna di A;
% 2) questa regola di alternanza sia soddisfatta per tutte le altre colonne. Ad esempio:

A = [1 2 4 5; 5 6 4 3; -4 10 23 4; 2 4 56 12]
swapcolonna(A)


% Esercizio 2
% Si scriva un programma MATLAB che, data la matrice numerica quadrata A (con numero di righe e colonne pari), costruisca una nuova matrice B tale che:
% 1) la prima riga di B sia pari alla seconda riga di A, mentre la seconda riga di B sia pari
% alla prima riga di A;
% 2) questa regola di alternanza sia soddisfatta per tutte le altre righe. Ad esempio:

A = [1 2 4 5; 5 6 4 3; -4 10 23 4; 2 4 56 12]

function [B] = swaprighe(A)
    n = length(A) ;
    B = zeros(n);

    for i=2:2:n
        B(i-1,:) = A(i,:);
        B(i,:)   = A(i-1,:);

    end
end


function [B] = swapcolonna(A)

    n = size(A);
    B = zeros(n);

    for i=2:2:n
        B(:,i)    = A(:,i-1);
        B(:,i-1)  = A(:,i);
    end
end





