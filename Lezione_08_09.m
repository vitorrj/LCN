% =======================
% ====== Lezione 08 =====
% =======================

% `for` command
x = [1.92 0.05 -2.43 -0.02 0.09 0.85 -0.06]

x(find(abs(x)<0.1)) = 0


for i=1: length(x)
    if x(i)>=-0.1 & x(i)< 0.1               % smarter way abs(x(i)) < 0.1    
        x(i)=0;
    end
end 


x = 0
while(x<10)
   x = x+1; 
end