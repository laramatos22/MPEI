function [X] = fmp (xi, pX, n)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here

    soma = cumsum(pX); %soma cumulativa de pX
    
    for i = 1:n
        idx = 1 + sum(rand(1,1) > soma);
        X(i) = xi(idx);
    end
end

