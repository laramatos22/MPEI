%% Exercicio 2.

%Usar rand

% Alinea a) - sequencia de 10 experiencias de Bernoulli com probabilidade
% de sucesso p
p = 0.5;
l = rand(10, 1e5);
sucessos = l <= p;
probA = sum(sum(sucessos))/(10*1e5);

% Alinea b) - 15 lançamentos de 1 dado (honesto)
p = 0.5;
l = rand(15, 1e5);
sucessos = 1 <= p;
probB = sum(sum(sucessos))/(15*1e5);

% Alinea c) - um conjunto de 20 numeros reais igualmente distribuidos entre
% -4 e 10
n=20;
C = (rand(1,n) * 14) - 4;