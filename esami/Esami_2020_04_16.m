% Esercizio 1
% Si scriva un programma MATLAB (di tipo function) B=trova_zeri(A)che, data la matrice numerica A
A =[3 2 0; 1 0 0; 9 -5 0]
% restituisca in uscita una matrice B contenente le posizioni (indice di riga e indice di colonna) di A in cui è 
% contenuto uno zero. Ad esempio:
% B = 1 3
%     2 2 
%     2 3 
%     3 3

trova_zeri(A)


% Esercizio 2
% Si scriva un programma MATLAB (di tipo function), vet=vertical(A), che memorizzi nel vettore vet tutti gli elementi di A 
A = [0.5377 -2.2588 0.3188; 1.8339 0.8622 -1.3077]
% presi per colonna. Ad esempio:

vertical(A)

function [vet_vertical] = vertical()
    vet = []

    for i=1:size(A,2)
        vet = [vet; A(:,i)]
    end
end



% Alternatively we can produce the same output using a few more lines of
% code and two `for` loops
% 
% ---------------------------------------------------------------------
% vet = zeros(size(A,1)*size(A,2),1);
% k=1;
% 
% for j=1:size(A,2)
%     for i=1:size(A,1)
%        vet(k) = A(i,j)
%        k = k + 1;
%    end
% end
% ---------------------------------------------------------------------



function [B] = trova_zeri(A) 
    B = [];

    for i=1:size(A,1)
        for j=1:size(A,2)
            if A(i,j) == 0
                B = [B ; i, j];
            end
        end
    end

    disp(B)
end