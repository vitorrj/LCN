% Nov 13, 2020

clear all 
close all

dxy = 0.05;
x = -5:dxy:5;
y = -5:dxy:5;

[xg,yg] = meshgrid(x,y);

l=0.2;            %side of triangle
% z1 = double(abs(xg)<l & abs(yg)<l);
z1 = double((xg.^2 + yg.^2) <= (l^2));
figure
subplot(1,2,1), surf(xg,yg,z1), shading interp
subplot(1,2,2), imagesc(x,y,z1), axis image, colormap(gray)

% ------ Fourrier trasform 2D ------
%  To create a FFT in two dimensions I use fft2. So it's always good to ask
%  myself, the function I am transforming is 2D-Dimensional? Yes, then'fft2'

% Declaring a fourrier transform of our square function
    Z = fftshift(fft2(z1));
    U = linspace(-0.5,0.5, size(Z,1));
    V = linspace(-0.5,0.5, size(Z,2));
    [Ug, Vg] = meshgrid(U,V);

    figure
    subplot(1,2,1), surf(Ug, Vg, 20*log10(abs(Z)./max(abs(Z(:))))), shading interp;
    subplot(1,2,2), imagesc(U, V, 20*log10(abs(Z)./max(abs(Z(:))))), axis image;
% PS: I used 20*log10 to conver to decibels (DB)

% ----- APPLYING FILTER TO THE FUNCTION -----

% 1) LPF ideal con frequenza taglio a pari a 0.1
     Ft = 0.1;                 % frequenza di taglio
     H = double((Ug.^2 + Vg.^2) <= (Ft^2));
     figure, imagesc(U,V,H), axis image, colormap(gray)
    
% 2) LPF ideal of Gaussian type 
    s2 = 0.02;                 % frequenza di taglio
    H = exp(-(Ug.^2)/s2 - (Vg.^2)/s2);
    figure, imagesc(U,V,H), axis image, colormap(gray)

% Applying filter
    Zf = H.*Z;              
    figure, imagesc(U, V, abs(Zf)), axis image

    zf = real(ifft2(ifftshift(Zf)));
    figure
    subplot(1,2,1), imagesc(x,y,z1), axis image
    subplot(1,2,2), imagesc(x,y,zf), axis image, colormap(gray) % it can be seen the gibbs effect on the right image 


    % We use the decibels(log10) to see the areas that couldn't be seen well
    % before

% Application filtro LPF gaussiano al tantoccio di Shepp Logan
    n = 512;
    z = phantom(n);
    z = z + 0.1*randn(n);           % Summing to our signal that simulates a thermical rumor through 'randn'
    figure, imagesc(z), axis image, colormap(gray)
    
    Z = fftshift(fft2(z));
    U = linspace(-0.5,0.5, n);
    V = linspace(-0.5,0.5, n);
    [Ug, Vg] = meshgrid(U, V);
    
    s2 = 0.01;
    H = exp(-(Ug.^2)./s2 - (Vg.^2)./s2);
    
    Zf = H.*Z; 
    zf = real(ifft2(ifftshift(Zf)));
    figure, imagesc(zf), axis image, colormap(gray)
    
