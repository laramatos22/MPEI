function y = lcg (X0,a,c,m,N)

y = zeros(1,N+1);
y(1) = X0;

for i = 2:N+1
    y(i) = rem(a * y(i-1) + c, m);
end

y(1) = [];  %vetor vazio, nao devolve qq valor na 1a posição   