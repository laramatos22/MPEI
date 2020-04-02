%% Codigo 2 - 2a versao

N = 1e5; %numero de experiencias
p = 0.5; %probabilidae de caras
k = 2;   %numero de caras
n = 3;   %numero de lançamentos
lancamentos = rand(n,N) > p;
sucessos = sum(lancamentos)==k;
probSimulacao = sum(sucessos)/N