%% Codigo 2 - 2a versao

N = 1e5; %numero de experiencias
p = 0.5; %probabilidae de caras
k = 2;   %numero de caras
n = 3;   %numero de lançamentos
experiencia = rand (k,N);
lancamentos = experiencias > 0.5;

%conta num de caras
result = sum(lancamentos);

%%quando temos k caras
sucessos = result==k;

probSimulacao = sum(sucessos)/N;