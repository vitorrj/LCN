%2020, Oct 8	
% --- FUNZIONI BIDIMENSIONLE ---
%Functions such as f:(x,y)⊆ℝ²-> ℝ
clear all
close all

%1. Generate the dominium of the function
d=0.1;
x = -5:d:5;
y = -5:d:5;
[xm,ym] = meshgrid(x,y);    %use mesh

%2. Declaring the function
%z = 3*xm+ym+5;              % careful it is xm&ym not x&y

% --- EXERCISE ----
mx=0;
my=0;
s2x=1;
s2y=1;

z = exp( -((xm-mx).^2)/(2*s2x) - ((ym-my).^2)/(2*s2y))


%3. Ploting a 3-dimension function
figure
surf(xm,ym,z), colorbar                 % 'surf' stands for surface and plot 3D

figure
surf(xm,ym,z), colorbar, shading interp % removes the grids and add

%3. Ploting a 3-dimension function as an image
figure
imagesc(x,y,z),colorbar, colormap(gray), axis image                     %instead of plotting 3D I print an image scaled



