function J = createNewMinHashSimilarityMatrix (u, users)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

Nu = length(users); %Numero de utilizadores

Set = cell (Nu, 1); % usa celulas

for n = 1:Nu % para cada utilizador
    
    %Obtem os filmes de cada um
    ind = find(u(:,1) == users (n));
    
    %e guarda num array. Usa celulas porque cada utilizador tem um numero
    %diferente de filmes. Se fossem iguais podia ser um array
    Set{n} = [Set{n} u(ind, 2)];
end

    Set{1};
    
end

