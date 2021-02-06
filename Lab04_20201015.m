% Funzioni 2D parte 2
clear all 
close all

d=0.05;
x=-2:d:2;
y=-2:d:2;

[xm,ym] = meshgrid(x,y)

% -- SINUSOID FUNCTION ---%
% z1=sin(2*pi*xm);
% z1=sin(2*pi*ym);              %90 degrees rotation
% z1=sin(2*pi*(xm+ym));
z1 = cos(pi*(xm+2*ym));         %2D sinusoide 30 degree, important!

figure
subplot(1,2,1), surf(xm, ym, z1), colorbar, shading interp
subplot(1,2,2), imagesc(x,y,z1), axis image

% -- EXPONENTIAL  FUNCTION ---%
% z2 = exp(-2*abs(xm));
% z2 = exp(-2*abs(ym));
z2 = exp(-(abs(xm)+abs(ym)))

figure
subplot(1,2,1), surf(xm, ym, z2), colorbar, shading interp
subplot(1,2,2), imagesc(x,y,z2), axis image

% -- SINUSOID x EXPONENTIAL ---%
z3 = z1 .* z2;

figure
subplot(1,3,1), surf(xm,ym,z3), colorbar, shading interp
subplot(1,3,2), imagesc(x,y,z3), axis image

% Getting the function in the origin
subplot(1,3,3)
plot(x,z3(41, :))

% Returning the maximum
M = max(z3(:));             
m = min(z3(:));


% -- CIRCLE ---
r=1;
z4 = double(xm.^2 + ym.^2 <=r^2);

figure
subplot(1,3,1), surf(xm,ym,z4), colorbar, shading interp
subplot(1,3,2), imagesc(x,y,z4), axis image, colormap(gray)

% -- SQUARE ---

r=1;
z5 = double(abs(xm)<=r & abs(ym)<=r);

figure
subplot(1,3,1), surf(xm,ym,z5), colorbar, shading interp
subplot(1,3,2), imagesc(x,y,z5), axis image, colormap(gray)
