%% Código 2

N = 1e4; %numero de experiencias
p = 0.5; %probabilidae de caras
k = 2;   %numero de caras
n = 3;   %numero de lançamentos

experiencias = rand(3,1000);
lancamentos = experiencias > 0.5; %0.5 corresponde a 1 - probabilidade de caras e criação de matriz logica (1=verdadeiro; 0=falso)
resultados = sum(lancamentos);
sucessos = resultados == 2; %só interessa os resultados com 2 caras em 3 lançamentos
probSimulacao = sum(sucessos)/10000