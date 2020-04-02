%% Exercicio 5

xi = [1 2 3 4 5 6];   %tamanho do array xi

pX = [0.15 0.20 0.15 0.15 0.1 0.25];   %probabilidade de cada posição de xi

n = 10000;    % numero de experiencias

histogram(fmp(xi, pX, n), length(xi))