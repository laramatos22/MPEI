%% Código 1.a)

pM = 0.5; %probabilidade de sair um genero é igual (1(casos favoraveis)/2(casos possiveis)) - sao equiprovaveis
pF = 1 - pM;

nFilhos = 2; 

experiencia = rand(nFilhos,1) <= pM; % 1 significa que é rapaz

N = 1e6;
experiencias = rand(nFilhos,N) <= pM; 

nf = sum(experiencias); %numero de filhos = soma de experiencias

cfav = sum(nf>=1);  %casos favoraveis

p = cfav/N;