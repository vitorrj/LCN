% ==========================================
% ===== Introduzione all'uso di Matlab =====
% ==========================================
% pg 49, 50

% ---- Lezione 1 ----
    % x = 10;
    % y = 3;
    % 
    % u = x + y;
    % v = x*y;
    % w = x/y;
    % z = sin(x);
    % r = 8*sin(x);
    % s = 5*sin(2*y);
    % p = x^y;
    % f = sqrt(sin(x+y));
    % g = x/(5*sqrt(y));
    % k = exp(y/x);
    % x = [10,20,30,40,50];
    % y = median(x);
    % y = log(24);
    % y = log2(73);


% 1.Creare il vettore i cui elementi sono linearmente intervallati con incrementi 
% di 0.4 tra 2 e 14. Utilizzare due metodi diversi.

    x = (2:0.4:14)
    x = linspace(2,14,(14-2)/0.4)+1

% 2. Creare il vettore che ha 100 elementi linearmente intervallati tra 5 e 28. 
% Utilizzare due metodi diversi
    x = linspace(5,28,100)
    x = (5:0.23:28)


% 6. Definito il vettore 
x=[-3, 4, 2, 1, 0, 2, 3, 5, 10] 
% Calcolare la lunghezza, le dimensioni e la media di x; inoltre, assegnare agli elementi con 
% indici pari il valore 7, digitando un unico comando.[suggerimento: usare l’operatore :]. 

    length(x)
    ndims(x)
    mean(x)
    x(2:2:length(x)) = 7
    
% 7. Check tracia
    x = [6,7,5,1,0,2,13,5,12]
    x_1 = x;
    x_1(1:2:end) = 15
    
    x_2 = x;
    x_2(1:2:end) = 15;
    x_2(2:2:end) = x_2(2:2:end) + 1;
   
    
    x_3 = x;
    x_3(1:2:end) = 16
 
    
    x_total = [x_1 x_1 x_1 ; x_2 x_3 x_2];
    % x_total2 = [repmat(x_1,1,3) ; x_2 x_3 x_2] alternative using the
    % command `repmat`



% 8. Dato il vettore 
x=[2, 3, 4, 5, 6, 7, 12]
% si costruisca il vettore  y=[2, 3, 4, 5, 6, 7, 12, 12, 7, 6, 5, 4, 3,2].

    xRev = sort(x, 'descend')
    xTotal = [x, xRev]
    
% 9. A partire dai vettori:
a = [0,3,6,9];
b = [45,40,35,30];
% costruire i vettori:

% a) c=[0, 45, 3, 40, 6, 35, 9, 30]  

    n = length(a) + length(b); 
    c = zeros(1,n);
    c(1:2:n) = a;
    c(2:2:n) = b

% b) d=[0, 90, 6, 80, 12, 70, 18, 60]     
    d = c*2

% c) e=[0, 90, 3, 80, 6, 70, 9, 60]
    e = d
    e(1:2:n) = e(1:2:n)/2
    
% 10. Data la seguente matrice
    A = [1,0,6,-3; -1,2,0,2; 0,3,-1,-2; -6,0,4,1]
    
% a) si valuti A(:, 2);

% b) si valuti le media della seconda colonna e della terza riga;
    media = [mean(A(:,2)),mean(A(3,:))]
    mean(media)

% c) si generi la matrice composta dagli elementi appartenenti alla seconda e quarta riga ed alla terza e
% quarta colonna;

    B = [A(2,:) ; A(3,:); A(:,3)'; A(:,4)']

% d) si generi la matrice composta dagli elementi appartenenti alla prima e terza riga ed alla seconda e
% quarta colonna [utilizzare i vettori negli indici di riga e colonna: X=A([1 3],[2 4])]
    
% ----- Lezione 5 ----
% 11. Data la seguente matrice A:
A = [1,2,3;4,5,6;7,8,9];
% si estragga la sottomatrice di A composta dagli elementi Aij, tali che i=2, 3 e j=2,3.

    B = A(2:3,2:3)  
    
% 12.Tabellare la funzione log x nell’intervallo [1,5] con passo 0.1.
    x = (1:0.1:5);
    y = log(x);

    c = [x', y']
    %     plot(x,y), grid

    
% 13. abellare la funzione: y=e3x sin 5πx
    x = [3:0.1:5]
    y = exp(3*x) .* sin(5*pi.*x)
    %     plot(x,y), grid;
    
    d = [x', y']
    
% Exercise 14)
    x = linspace(2,16,8)
    
    A = [3*x ; sqrt(3*x); x-8]
    a = A;
    
    A(1,:) = a(3,:);
    A(3,:) = a(1,:)
    

% Exercise 15
    C = [A(:,2)' ; A(:,3)' ; A(:,1)']
    
% Exercise 16
    A = [-7, 16; 4,9]
    B = [6,-5; 12,-2]
    C =[-3,-9; 6,2]
    
    A+B+C
    A-B+C
    
    (A+B)+C
    A+(B+C)
    
    A.*B
    B.^3
    
    (C(1,:)).^3
    
clc
clear all
% 17. La seguente tabella riporta il consumo medio, i km percorsi e l’indice di 
% affidabilità di 5 diverse automobili.
    macchine     = [1, 2, 3, 4, 5]
    consumo      = [11.2, 8.8, 9.1, 12, 16.4]
    kmpercorsi   = [240, 550, 302, 667, 980]  
    affidabilita = [0.921, 0.454, 0.980, 0.777, 0.602]
   
    tabella = [macchine', consumo', kmpercorsi']
    
    % a) calcolare i litri di benzina consumati da ogni automobile;
        litri = consumo .* kmpercorsi
    
    % b) calcolare il consumo medio delle 5 automobili prese in esame;
    
        mean(consumo)
    
    % c) calcolare la percorrenza media delle 5 automobili prese in esame;
        mean(kmpercorsi) 

    
    % b) usare le funzioni corrette per determinare l’auto più affidabile e quella che consuma di meno.
    min(consumo)
        [carTrustworth, index] = max(affidabilita)
        [carSaving, index] =  min(consumo)
    
    
% 18. Dimostrare che IA=AI=A, dove I indica la matrice identità.
    A = [12, 34, 4; 77, 21, 1; 3]
    
clc
clear all


% 20. Data la matrice A. Trovare
    A = [3, 7, -4, 12; -5, 9, 10, 2; 6, 13, 8, 11; 15, 5, 4, 1]
    
    % a) i valori minimi e massimi di ogni colonna;
    max(A)
    min(A)
    
    % b) i minimi e massimi di ogni riga.
    max(A')
    min(A')
    
    clear all
   
% (!!!!)
% 21. Data la matrice: 
    A = [3, 58, -4, 3; -5, 42, 80, 2; 6, -19, 9, 55; 17, -35, 44, 1]
    
    % a) ordinare gli elementi di ogni colonna e assegnare il risultato all’array B; 
         B = sort(A)
    % b) ordinare gli elementi di ogni riga e assegnare il risultato all’array C;
         C = sort(A,2)
    % c) sommare gli elementi di ogni colonna e assegnare il risultato all’array E; 
         E = sum(A)
    % d) sommare gli elementi di ogni riga e assegnare il risultato all’array D.
         D = sum(A, 2)

   

    clear all
% (!!!)   
% Exercise 22
    A = [1, 4, 2; 2, 4, 100; 7, 9, 7;3, pi, 42]
    B = log(A)
    
    sum(A(2,:))
    
    % Il prodotto non è commutativo, quindi quando dobbiamo fare prime 
    % il prodotto scalare, il vettore riga viene prima del vettore colonna     
    A(:,1)' * B(:,2)
    
    max(A(1:3,2) .* B(1,:))
    
    C= A(3,:)./B(:,3)
    sum(C(:))
    
% Exercise 23 (!!!)
  A = [3, -2, 1; 6, 8, 5; 7, 9, 10]
  B = [6, 9, -4; 7, 5, 3; -8, 2, 1]
  C = [-7, -5, 2; 10, 6, 1; 3, -9, 8]
  
  D(:,:,1) = A
  D(:,:,2) = B
  D(:,:,3) = C
  
  % l’elemento massimo in ogni strato di D
  max(max(D(:,:,1)))
  max(max(D(:,:,2)))
  max(max(D(:,:,3)))
  
  % l’elemento massimo di D.
  max(D(:))
  


clc
clear all


% Exercise 20
    A = [3, 7, -4, 12; -5, 9, 10, 2; 6, 13, 8, 11; 15, 5, 4, 1]
    
    % max e minimo di ogni colonna
    max(A)
    min(A)
    
    % max e minimo di ogni riga 
    max(A')
    min(A')
    
    clear all

    
% Exercise 21 (!!!!)
    A = [3, 58, -4, 3; -5, 42, 80, 2; 6, -19, 9, 55; 17, -35, 44, 1]
    
    B = sort(A)
    C = sort(A,2)

    
    E = sum(A)
    D = sum(A, 2)

    clear all
    
%  22. Dati i seguenti array e B= ln (A). Calcolare (!!!)
    A = [1, 4, 2; 2, 4, 100; 7, 9, 7;3, pi, 42]
    B = log(A)
    
    % a) la somma degli elementi della seconda riga di B;
    sum(A(2,:))
    
    % b) il prodotto scalare tra la seconda colonna di B e la prima colonna di A;
    
    A(:,1)' * B(:,2)    %    Il prodotto non è commutativo, quindi quando dobbiamo fare prime il prodotto scalare, il vettore riga viene prima del vettore colonna  
    
    % c) il valore massimo del vettore risultante dalla moltiplicazione elemento-per-elemento dei primi tre elementi della seconda colonna di A e la prima riga di B;
    max(A(1:3,2) .* B(1,:))
    
    % d) la somma degli elementi della terza riga di A dopo averli divisi elemento-per-elemento per i primitre elementi della terza colonna di B.
    C= A(3,:)./B(:,3)
    sum(C(:))
    
% 23. Creare un array tridimensionale D le cui tre pagine siano le seguenti matrici: (!!!)
  A = [3, -2, 1; 6, 8, 5; 7, 9, 10]
  B = [6, 9, -4; 7, 5, 3; -8, 2, 1]
  C = [-7, -5, 2; 10, 6, 1; 3, -9, 8]
% Trovare l’elemento massimo in ogni strato di D e l’elemento massimo

      D(:,:,1) = A
      D(:,:,2) = B
      D(:,:,3) = C
  
  % l’elemento massimo in ogni strato di D
      max(max(D(:,:,1)))
      max(max(D(:,:,2)))
      max(max(D(:,:,3)))
  
  % l’elemento massimo di D.
      max(D(:))
  



