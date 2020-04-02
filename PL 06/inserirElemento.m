function [B] = inserirElemento (B, k, n, e) %= boolean %k = numero de funções hash
                                    %e = elemento que se vai inserir, é uma
                                    %string
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

key = e;

for i = 1:k   %conjunto de k funções
    
    aux = hashfunction(key,n);
    posicao = rem(aux, n);
    n = length(B);
    B(posicao + 1) = 1;
    key = [key num2str(i)];
    
end

end