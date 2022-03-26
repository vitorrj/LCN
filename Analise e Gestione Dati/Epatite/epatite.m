clear all 
close all

load('dati_malati.mat')  % carico la tabella di matrice create a partire da uiopen 

D = hcvdat1(:,:);

n = size(D,1);      % quanti soggeti? 645
f = size(D,2);      % quante features? 12

% Facciamo un istograma per ogni colonna di D così da vedere se possiamo capire qualcosa

for k=1:f
	figure
	histogram(D(:,k))
end

% Poichè l'istograma non ha detto molto, esiste almeno un parametro che riusciamo a capire malati e i dati fisiologici? Compariamo ogni malato e le sue analisi

for k=2:f
	figure
	plot(D(:,1), D(:,k), 'o'), grid
	
end

% Se un capo chiedese a noi un numero tra tutti i valori che abbiamo analizzati con il secondo grafico, quale possiamo dare? COEFFICIENTE DI CORRELAZIONE: esiste un legame fra queste quantità?
