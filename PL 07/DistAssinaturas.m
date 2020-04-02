% exercicio 3

function [MH] = DistAssinaturas(Set, k, nu, R, M)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

    MH = zeros (nu, nu);
    
    for u1 = 1:nu
        for u2 = 1:nu
            sig1 = Set(:, u1);
            sig2 = Set(:, u2);
            
            MH (u1, u2) = 1 - sum(sig1 == sig2) / k;
        end
    end
    
   
end

