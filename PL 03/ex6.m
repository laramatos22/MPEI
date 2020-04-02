%% Exercicio 6

p = 1/1000; % probabilidade
n = 8000; % espaço de amostragem - chips
k = 7; % defeitos
% E[x] = n*p = 8

%Poisson
lambda=n*p;
pX1 = ((lambda^k)/factorial(k))*(exp(-lambda));

%Binomial
%pX2 = factorial(n)/(factorial(n-k)*factorial(k)*p^k*(1-p)^(n-k));
pX2 = prod(n:-1:n-k+1)/prod(1:k)*p^k*(1-p)^(n-k);