%% Código 3 
%probabilidae de obter 6 caras em 15 lançamentos de uma moeda equilibrada

N = 10000; %numero de experiencias
p=0.5;
k = 6;    %número de caras da moeda
n = 15;   %numero de lançamentos 

experiencias = rand(k,N);
lancamentos = experiencias > 0.5; %0.5 corresponde a 1 - probabilidade de caras e criação de matriz logica (1=verdadeiro; 0=falso)
resultados = sum(lancamentos);
sucessos = resultados >= 6; %só interessa os resultados com 6 caras em 15 lançamentos
probSimulacao = sum(sucessos);

probSim = probSimulacao/N;

pTeorica=0;
for i=k:n
    pTeorica=pTeorica+binomial(n, i, 0.5);
end