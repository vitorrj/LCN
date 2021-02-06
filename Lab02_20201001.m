% 01 October, 2020

clear all
close all

% Declaring a function
x=2;
y=3*x+5;
% disp([x y])


% Using for in Matlab
for x=[0 2 4 6 8]
    y=3*x+5;
%     disp([x y])
end

% First I need to declare the dominium of the function using passo di campionamento
% x=[0 2 4 6 8];
% dx=0.1;
% x=0:dx:8;

% Or I can declare using linspace 
n=400;
x=linspace(0, 8, n);
y=3*x.^2+5;
% disp([x.' y.'])

% Plotting a 2D graph
figure
plot(x,y), grid, xlabel('x'), ylabel('y'), title('y=f(x)')

y2=2*x.^2+5;
hold on
plot(x, y2,'r')
hold off
legend('y=3x^2+5', 'y=2x^2+5')


f=2;
y_sin=sin(2*pi*f*x);
figure
subplot(3,1,1)              % Creates a 3 images in one column 
plot(x,y_sin), grid, xlabel('x'), ylabel('y'), title('y_1=sin(2 pi f x)')

% Plotting Gauss function
sigma2=1;
mu=3;
y_gauss=1/sqrt(2*pi*sigma2) * exp( -((x-mu).^2) / (2*sigma2) );
subplot(3,1,2)
plot(x,y_gauss), grid, xlabel('x'), ylabel('y'), title('y_2=N(3,1)')

% Generare il prodotto fra Gaussiana e sinusoide e visualizzarlo come terza
% riga

y3=y_sin.*y_gauss;
subplot(3,1,3)
plot(x,y3,'r'), grid, xlabel('x'), ylabel('y'), title('y=y_1 * y_2')

