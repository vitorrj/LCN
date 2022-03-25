% November 27, 2020
% Topics Trasformata di Radon
clear all 
close allth

n = 256;

% --- Function declaration ---
% 1) Square matrix of zeros
    % x = zeros(n);     % creating a matrix 101x101 full of 0
    % x(10, 10) = 1;    % creating a point equals to 1 
    % x(51, 51) = 1;    % creating a point the origin

% 2) Shepp Logan phantom 
    x = phantom(n);

figure, imagesc(x), axis image, colormap(gray)     % we should have a white small square (1)

% --- Trasformata di Radon ---

% Defining angle/projections for Radon
    % 1) using passo di campionamento 
    % th = 0:0.5:179;                     % projection angle from 0 < θ < 170, I don't need 180 = 0 

    % 2) using linspace
    k = 128;                             % number of projections
    th = linspace(0,180,k);

% Applying trasformata di Radon
    R = radon(x,th);

% Visualizing Trasformata di Radon   
    % we can visualize with plot
    % figure, plot(R), grid              % careful that R is a vector -> plot and not imagesc 

    % or with `imagesc` when we have a sinogramma which is a 2D vector      
    %figure, imagesc(th, 1:size(R,1), R), colormap(gray)
   
    
% --- Antitrasformata di Radon ---
% We have to use manually filter in antitrasformata of Radon and not use
% straight `iradon`, that's why we use `linear` and `none`

% Filtraggio
f = linspace(-0.5,0.5, size(R,1)).';    % Alternatively I can check the number of row of R, TRANSPOST!!! 
H = abs(f);                             % Declaring Ram-Lak filter
H  = H .* double(abs(f)<0.25); 

for k =1:length(th)
    p = R(:, k);
    P = fftshift(fft(p));                 % Applying fourrier trasform

    Pf = P .* H;                          % Applying Ram-Lak filter to projection in the Fourrier domain
    pf = real(ifft(ifftshift(Pf)));       % Antitrasform of Fourrier
    Rf(:,k) = pf;        
end

% Retroproiezione
xr = iradon(Rf, th, 'linear', 'none'); 

figure, colormap(gray)
subplot(1,2,1), imagesc(th, 1:size(R,1), R)
subplot(1,2,2), imagesc(xr), axis image



