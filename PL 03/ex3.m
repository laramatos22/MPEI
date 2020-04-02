%% Exercicio 3

%Alinea a)

x = 1:4;
Px = ones(1,4)/4;  %ones - matriz de 1's
stem(x,Px), xlabel('x'), ylabel('P(x)');  %grafico da probabilidade

p = 0.5;
N = 1e6;
coroa = rand (4, N) >= p;

p0 = sum(coroa == 0)/N;
p1 = sum(coroa == 1)/N;
p2 = sum(coroa == 2)/N;
p3 = sum(coroa == 3)/N;
p4 = sum(coroa == 4)/N;

[n, x] = hist (coroa);

%Alinea b)

%Valor Esperado
xi = 0:4;
PX = [p0 p1 p2 p3 p4];
P = xi*PX';

%Variancia
varX = (p*p) - PX';

%Desvio padrao

