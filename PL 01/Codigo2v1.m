%% C�digo 2

N = 1e4; %numero de experiencias
p = 0.5; %probabilidae de caras
k = 2;   %numero de caras
n = 3;   %numero de lan�amentos

experiencias = rand(3,1000);
lancamentos = experiencias > 0.5; %0.5 corresponde a 1 - probabilidade de caras e cria��o de matriz logica (1=verdadeiro; 0=falso)
resultados = sum(lancamentos);
sucessos = resultados == 2; %s� interessa os resultados com 2 caras em 3 lan�amentos
probSimulacao = sum(sucessos)/10000