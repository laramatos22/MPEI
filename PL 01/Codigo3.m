%% C�digo 3 
%probabilidae de obter 6 caras em 15 lan�amentos de uma moeda equilibrada

N = 10000; %numero de experiencias
p=0.5;
k = 6;    %n�mero de caras da moeda
n = 15;   %numero de lan�amentos 

experiencias = rand(k,N);
lancamentos = experiencias > 0.5; %0.5 corresponde a 1 - probabilidade de caras e cria��o de matriz logica (1=verdadeiro; 0=falso)
resultados = sum(lancamentos);
sucessos = resultados >= 6; %s� interessa os resultados com 6 caras em 15 lan�amentos
probSimulacao = sum(sucessos);

probSim = probSimulacao/N;

pTeorica=0;
for i=k:n
    pTeorica=pTeorica+binomial(n, i, 0.5);
end