%% Exercicio 7

% A

lambda = 15 %media de mensagens por segundo 
%lambda = E[X]
k = 0;
pX1 = ((lambda^k)/factorial(k))*(exp(-lambda));


% B

lambda = 15;
pTotal = 0;
for k = [0:10]
    pTotal = pTotal + (((lambda^k)/factorial(k))*(exp(-lambda)));
end

pX2 = 1 - pTotal;