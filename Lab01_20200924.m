% Sep 24, 2020
% MATLAB means Laboratory of Matrix and that's what we will be working
% As a good practice is always good to clean the stack memory
clear all

% F5 to run the code and ; to not display the output
x = 1+2
y = 3+4;                % opposed to x, y doesn't show in the command window anymore

% ---------- BASIC COMMANDS ----------

% 'disp' for printing a variable VALUE
disp(y)
 
% 'whos' to check the stack memory
whos

% 'clear' deletes a variabile
clear x
whos

% ---------- MANIPULATING ARRAY ----------

% declaring an array
myarray = [10, 15, 20, 25]      %array row
myarray2 = [1; 2; 3]            %array column
myarray2'                       %transpost of the array

myarray3 = [myarray 10 11 12]   %concatenating elements of an array 

% returning an index value
myarray(2)                      %15                    
myarray([1 2 4])                %10 15 25

% declaring array 3x3
myarray3 = [1,2,3 ; 4,5,6; 7, 8, 9]
disp(myarray3(3,2))             %8
disp(myarray3(6))               %8, MATLAB reads by column on a quadratic matrix
disp(myarray3(1,:))             %[1 2 3] return a whole row


% generating numbers in a range
myarray = [1:10]                %[1 2 3 4 5 6 7 8 9 10]
myarray = [1:2:10]              %[1 3 5 7 9], skips every 2 numbers


% summing array
myarray = [1:10]                %[1 2 3 4 5 6 7 8 9 10]
myarray(1:2:10)+myarray(2:2:10)

% return the length of an array
length(myarray)

% 'end' to run until last element of an array
myarray(2:2:end)






