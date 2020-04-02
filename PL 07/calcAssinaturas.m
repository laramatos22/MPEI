%exercicio 3

function [matriz] = calcAssinaturas(sets, nu, k)
                                        %nu - nº de utilizadores
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

     matriz = zeros (k, nu);

    for u = 1:nu
        filmes = sets{u};
    %para toda a funcao hash
        for hf = 1:k
            %processar com hash function todos os elementos
            minimo = hashfunction(filmes(1), hf, R, p);
            for f = 2:length(filmes)
                hc = hashfunction(filmes(f), hf, R, p);
                if (hc < minimo)
                    minimo = hc;
                end
                matriz (hf, u) = minimo; %guardar minimo
            end
        end
    end
    
end

