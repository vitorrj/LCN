% Oct 29, 2020
clear all
close all

% ------------------------- FOURRIER 1D ------------------------- %
dx = 0.02;
x = -5:dx:5;
y = exp(-abs(x)).*cos(2*pi*2*x);

figure, plot(x,y), grid


% Fourrier transform of y
Y = fftshift(fft(y));           % (!) fft is used for vectors and not matrix
                                % fftshift shifts the function to zero

figure
%V = linspace(0,1,length(Y));     % V to makes my frequency between [0,1]
V = linspace(-0.5,0.5,length(Y));

% Spectro di Ampiezza |Y| = √x₂+y²
subplot(2,1,1), plot(V, abs(Y)), grid          
title('Amplitude Spectrum'), xlabel('Numerical frequency'), ylabel('Amplitude')

% Phase Spectrum     arctan(y/x)
subplot(2,1,2), plot(V, angle(Y), 'r'), grid     
title('Phase Spectrum'), xlabel('Numerical frequency'), ylabel('Phase')


% ------------------------- CREATING A FILTER ------------------------- %
% Filtro passa-basso
H = double(abs(V)<0.05)
figure, plot(V,H), grid, axis([-0.5,0.5,-0.5,1.5])
hold on, plot(V, abs(Y)/max(abs(Y)), 'r'), hold off  % Normalization of freq

Yf = Y.* H;




% ----------------------- FOURRIER ANTITRANSFORM ----------------------- %
% Going from Y -> y
yreversed = real(ifft( ifftshift(Yf)));      % Only the REAL part of the function

figure, plot(x,yreversed, 'r'), grid, title('Antitrasformata di Fourrier')

% The antitransform returns a approximate function but no the same, can be
% seen bellow. The error is e^-16, which is really small -> it's almost 0
% figure, plot(x,y-yreversed), grid, title('Antitrasformata di Fourrier')





