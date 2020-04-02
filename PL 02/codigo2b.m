%% codigo 2.b)

%p = 0.5;  %probabilidade, equiprobabilidade, teoria classica
%k = 10;   %10 caras
%N = 1e6;  %numero de experiencias
%n = 11;   %numero de lançamentos

%casos favoraveis 11 em 11
%experienciasA = rand(11,1e6);
%lancamentos = experiencias > 0.5;
%resultados = sum(lancamentos);
%sucessos = resultados == 11; %só interessa os resultados com 10 caras em 10 lançamentos
%cfav11 = sum(sucessos)/10000;

%casos favoraveis 10 em 10
%experiencias = rand(10,1e6);
%lancamentos = experiencias > 0.5;
%resultados = sum(lancamentos);
%sucessos = resultados == 10; %só interessa os resultados com 10 caras em 10 lançamentos
%cfav10 = sum(sucessos)/10000;

%p = cfav11 / cfav10;


p = 0.5;
nMoedas = 11;
N = 1e6;
experiencias = rand(nMoedas,N) <= p;
cfavAeB = sum(sum(experiencias) == 11);
cfavB = sum(sum(experiencias(1:10,:)) == 10)
prob = cfavAeB/cfavB;