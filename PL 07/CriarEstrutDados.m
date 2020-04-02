%% Exercicio 2

function [Set] = CriarEstrutDados(n, u, users)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

% % Constrói a lista de filmes para cada utilizador
% Set= cell(Nu,1); % Usa células
% for n = 1:Nu % Para cada utilizador
%     % Obtém os filmes de cada um
%     ind = find(u(:,1) == users(n));
%     % E guarda num array. Usa células porque utilizador tem um número
%     % diferente de filmes. Se fossem iguais podia ser um array
%     Set{n} = [Set{n} u(ind,2)];
% end

    n = 100 %numero de utilizadores
    
    Set = cell(n,1);
    for i = 1:n
        ind = find(u(:,1) == users(n));
        Set{n} = [Set{n} u(ind, 2)];
        
    end
end
