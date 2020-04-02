%% Codigo5

N = 1e5; %numero de experiencias
A = 5; %amostra de torneiras
p = 0.3; %probabilidade de a torneira focar com defeito

experiencias = rand (n,N);
lancamentos = experiencias > 1-p;

%conta num de caras
result = sum(lancamentos);

%%quando temos k caras
sucessos = result==k;

probSimulacao = sum(sucessos)/N
