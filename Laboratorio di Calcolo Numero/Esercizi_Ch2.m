% ==========================================
% ===== Introduzione all'uso di Matlab =====
% ==========================================
% pg 49, 50
 
% 1. (!) Dati i seguenti array:
x=[-3 0 0 2 6 8]
y=[-5 -2 0 3 4 10]
% Utilizzare MATLAB per trovare gli elementi di x maggiori dei corrispondenti elementi di y.


index = x>y
x(index)


% 2. Il seguente array contiene le quotazioni di un noto titolo azionario 
x =[220 330 221 198 208 206 188 196 200 204 219 205 177]
% Usare MATLAB per calcolare il numero di giorni in cui il titolo è stato superiore a 200. 
% Calcolare la media.

length(find(x>200))
mean(x)

% 3. I seguenti array contengono le quotazioni di due titoli azionari in un periodo di due settimane:
a =[220 330 221 198 208 206 188 196 209 200 198 204 219 205 177]
b =[167 189 200 199 202 208 200 193 199 210 216 222 210 202 201]
% Usare MATLAB per trovare il numero dei giorni in cui il titolo a è stato superiore a b. Calcolare la media di a e b.

length(find(a>b))
mean(a)
mean(b)

% 5. (!) Dato il seguente array
x =[1.92 0.05 -2.43 -0.02 0.09 0.85 -0.06]
% Creare un programma per eliminare tutti gli elementi di x tali che -0.1 ≤ xi ≤ 0.1 e sostituirli con altrettanti 0 
% alla fine dell’array. Il nuovo array deve essere x2=[1.92 -2.43 0.85 0 0 0 0].

i = find(-0.1<=x & x<=0.1)
x(i) = []

nZeros = zeros(1,length(i))

y2 = [x , nZeros]


clear all 
clc

% 6.  Il seguente array contiene le quotazioni di un titolo azionario:
x=[167 189 200 199 202 208 200 193 199 210 216 222 210 202 201]
% Un investitore ha 1000 azioni il primo giorno e intende comprare 100 azioni ogni giorno che il prezzo 
% scende sotto le 200 lire e venderne 100 quando il prezzo sale sopra le 210 lire. Usare MATLAB per calcolare:
% a) la spesa totale per acquistare le azioni;
    azioni = 1000;
    spesa_totale = 0;

    for i=1:length(x)
        if x(i) < 200
            spesa_totale = spesa_totale + x(i)*100;
        end
    end
    disp("La spessa totale è: "), disp(spesa_totale)

% b) il guadagno totale dovuto alla vendita delle azioni; 

    guadagno = 0;
    for i=1:length(x)
        if x(i) > 210
            guadagno = guadagno + x(i)*100;
        end
    end
    disp("Il guadagno totale è: "), disp(guadagno)

% c) il numero totale di azioni dopo 10 e 15 giorni.

for i=1:length(x)
    if x(i) < 200
        azioni = azioni + 100;
    elseif x(i) > 200
        azioni = azioni - 100;
    end
    
    if i==10
        azioni10 = azioni; 
    end
end

azioni10, azioni

clear all
clc

% Utilizzare MATLAB per calcolare quanto tempo occorre per accumulare un miliardo di lire in un conto 
% corrente con 10 milioni iniziali e tenendo conto che vengono depositati 10 milioni alla fine di ogni 
% anno e che la banca offre un tasso di interesse annuo del 5%.

iniziale = 10^7
i = 0
    
while iniziale < 10^9
    iniziale = (iniziale*1.05) + 10^7
    i = i + 1
end

% 10. Date le seguenti matrici:
A = [3 -2 1; 6 8 5; 7 9 10]
B = [6 9 -4; 7 5 3; -8 2 1]
% Calcolare A*B usando i cicli e verificare il risultato.
C = A*B
D = zeros(3);

for i=1:size(A,1)
    for j=1:size(A,2)
        for k=1: size(A,2)
            D(i,j) = D(i,j) + A(i,k)* B(k,j);
        end
    end
end
disp(D)


clc 
clear all

% 11. Data la matrice:
A = [3 7 -4 12; -5 9 10 2; 6 13 8 11; 15 5 4 1]
% Calcolare la media di ogni colonna usando i cicli e verificare il risultato.

for i=1:size(A,1)
    media = 0;
    
    for j=1: size(A,2)
        media = media + A(j,i);
    end
    
    media = media/size(A,2);
    disp("Media della colonna: "), disp(media)
end



% 12. Scrivere una funzione sin_gradi che accetta un angolo x espresso in grado e 
% restituisce sin x sempre in gradi. [Suggerimento: chiamare la funzione sin.]
fsin_gradi(50)


% 14. Scrivere una funzione che riceve come argomento una temperatura espressa 
% in gradi Fahrenheit e restituisce il valore corrispondente in gradi Celsius. 
% [Suggerimento: C=5/9(F-32).]
temp = fconverttemp(50)

