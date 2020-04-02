function [hashCode] = hashfunction(x, hf, R, p)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

    %obter linha de R
    r = R(hf, :);

    hashCode = mod(sum (r.* x), p);
                                %primo
    
    %OU
    %hashCode = mod ((r * x'), p);
end

