function [succFibonacci] = ffibonacci(n)

    vet = zeros(1,n);
    vet(1) = 1;
    vet(2) = 1;

    for i=3:n   
        vet(i) = vet(i-1) + vet(i-2);
    end
    
    vet

end