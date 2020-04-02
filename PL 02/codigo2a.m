%% codigo 2.a)

p = 0.5;  %probabilidade, equiprobabilidade, teoria classica
k = 10;   %10 caras
N = 1e6;  %numero de experiencias
n = 10;   %numero de lançamentos

experiencias = rand(10,1e6);
lancamentos = experiencias > 0.5;
resultados = sum(lancamentos);
sucessos = resultados == 10; %só interessa os resultados com 10 caras em 10 lançamentos
probSimulacao = sum(sucessos)/10000


%ou
%cfav = sum(nf==nMoedas);
%p = cfav/N;