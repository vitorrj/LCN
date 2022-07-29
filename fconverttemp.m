function [tempCels] = fconverttemp(tempFar)
    tempCels = 5/9*(tempFar-32);
end