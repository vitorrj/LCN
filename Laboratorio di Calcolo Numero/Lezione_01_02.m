% =======================
% ====== Lezione 01 =====
% =======================

% `help` to find information about documentation
% `clc` clean command window
clc

% `clear` delete variabiles in the stack memory
B = 10;
clear B
% cd


% Natural logarithm
y = log(10)

% Different base form logarithm 2,10..
x = log2(10)

% Mathematical commands
exp(1)      % e^1
sqrt(4)     % 4^2

% =======================
% ====== Lezione 02 =====
% =======================

% `disp` is our printf from C++ or print for 

% `lookfor` is an alternative to `help` and is
% used when we don't know the command we are searching for 

% mean is not the same as median!

% # Arrays
% Declaring an array
x = [1,4,3]         % vettore riga
y = [1;2;3]         % vettore colonna

% Trapost of a number
% yTrasposto = y.'    % trasposto

% The reason why we use .' is because when working with complex numberx
% `x'` will return the coniugato of the complex 
z = [3+4i, 1-2i, -j];
z'
z.'

% Returning an element of an array 
x(2); 

% Concatenating vectors
x = [1,4,z3];
y = [10,14,13];
c = [x,y] % If I want to concatenate vertically I use `;`

% Generating numbers
% Vettori equamente intervallati (creating a array with ordered numbers)
x = [3:2:20];
y = [20:-2:3];

% Using linspace (when I know how many I want)
x = linspace(2,100,50)
