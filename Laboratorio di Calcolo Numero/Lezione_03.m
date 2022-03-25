% =======================
% ====== Lezione 03 =====
% =======================

% % As alternative to linspace I can use `logspace`
clc
clear all

logspace(1,1000,20)


x = [1,2,3];
xDiagonal = diag(x)

% Declaring matrix
x = [1,2,3;4,5,6;7,8,9]

temp1 = [22,16,19,17,15,22,20,17,16,15];
temp2 = [15,15,15,12,14,17,21,19,12,21];
temp3 = [16,16,13,19,19,21,13,18,16,20];
temp4 = [15,17,16,19,20,16,16,17,16,22];
temp5 = [12,15,18,13,18,14,18,17,17,17];

% Concatening a row
T = [temp1;temp2;temp3;temp4]
T = [T;temp5]

% Concatenating a column at the end
temp6 = [12,10,23,12,14]
T = [T, temp6']

% How can I access a blocks of information?
T(1:3,1:5)
T(3:5,9:11)

T(:,1:2)

T([1 3 5],:)

% How to delete elements of an array?
T(:,1) = []


% # Array commands such as max, min, ndims, size, lenght
max(T)          % 17    19    19    20    22    21    19    17    22    23
max(T(:))       % 23

sum(T)          % 79    81    80    86    90    88    88    77    95    71
sum(T(:))       % 835

size(T)         % [5 10]
length(T)       % [10]

sort(T)  




