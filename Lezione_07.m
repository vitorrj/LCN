% =======================
% ====== Lezione 07 =====
% =======================


% ----- Logical in MATLAB -----
a = [1 0 1 1 1 1]
b = [0 0 0 1 0 1]

% Logical operators
~a
~b
a & b
a | b

% application
x = [1 2 -5 2 -10]      
x < 0                       % [0   0   1   0   1]

% Logical functions
any(a)
all(a)
find(b)


% Application
x = [5, -3, 18, 4]
y = [-9, 13, 7, 4]

~y

z = ~y>x                % [0   1   0   0]
z = ~(y>x)              % [1   0   1   1]
z = x & y               % [1   1   1   1]
z = x | y               % [1   1   1   1]


% ----- Logical commands -----
% `if` function
if -1>3
    disp("è vero :)")
else
    disp("non è verissimo! :(")
end


x = input("Inserisce un numero: ")
if x > 0 
    disp("Il valore è "), disp(sqrt(x))
elseif x = 0
    disp("Abbiamo un zero qui")
else
    disp("Numero negativo")
end



