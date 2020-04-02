%% Código funcção

function p = binomial(n, p, k)

prob = factorial(n)/(factorial(n-k)*factorial(k))*p^k*(1-p)^(n-k)