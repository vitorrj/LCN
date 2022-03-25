% December 16
% Esercitazione per l'esame

clear all 
close all

% Esercitazione 1 --------------------------
% 1) Generare una immagine dalla metà superiore del fantoccio di Shepp Logan

n = 201;
x = phantom(n);
x = x(1:101,:); 
figure, imagesc(x), axis image, colormap(gray)


% 2) Applicare un filtro gaussiano con deviazione gaussiana pari a 0.1 e valutare di quanto è
X = fftshift(fft2(x));
u = linspace(-0.5,0.5,size(X,2));
v = linspace(-0.5,0.5, size(X,1)); 
[U, V] = meshgrid(u,v);

% figure,
% subplot(1,2,1), imagesc(u, v, 20*log(abs(X)./max(abs(X(:)))), colormap(gray)
% subplot(1,2,1), imagesc(u, v, 20*log(angle(X)), colormap(gray)


s2 = 0.1^2; 
H = exp(-U.^2/s2 - V.^2/s2); 
figure, imagesc(u, v, abs(H)), colormap(jet), colorbar, axis image

Xf = X .* H;                % Prima di calcolare, è buon vedere le dimensioni delle matrici
xf = real(ifft2(ifftshift(Xf)));
figure, imagesc(xf), axis image, colormap(gray)


% 3) Valutare di quanto è stata la riduzione del segnale
En1 = sum(sum(abs(x).^2)); 
En2 = sum(sum(abs(xf).^2)); 

disp(100*(En2-En1)/En1)

% Esercitazione 2 --------------------------
% 1) Considerare uno spazio bidimensionale con passo di 0.01 tra -5 e 5, disegnare un
% cerchio in fondo nero con valore 2


d = 0.01;
x = -5:d:5;
y = -5:d:5;
[xm,ym] = meshgrid(x,y);

r = 1;
z = 2*double((xm.^2 + ym.^2) <= r.^2); 
figure, imagesc(x,y,z), axis image, colormap(gray), colorbar

% 2) Filtrare il dato usando una rect
f = linspace(-0.5,0.5, size(z,1)).';
H = double(abs(f) < 0.1);

for k=1:size(z,2)
    c = z(:, k);
    C = fftshift(fft(c)); 
    Cf = C.* H;
    cf = real(ifft(ifftshift(Cf))); 
    zf(:,k) = cf; 
end

figure, imagesc(x,y, zf), axis image, colormap(gray)

th = 0:179;  
R = radon(zf, th);
figure, imagesc(R), colormap(gray)

zfi = iradon(R, th, 'linear', 'none');
figure
subplot(1,2,1), imagesc(x,y,z), axis image, colormap(gray)
subplot(1,2,2), imagesc(x,y,zfi), axis image, colormap(gray)

