%% Exercicio 4

N = 10000;
p = 0.35;
n = 20;

y = binomial (p, n, N);
hist(y, (0:20));

%mhist(binomial(p, n, N))