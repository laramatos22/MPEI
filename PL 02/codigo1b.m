%% Código 1.b)

nFilhos = 2;
N = 1e6; %numero de experiencias
%cfav = 1;
%pM = cfav/cpossiveis;  %casos favoraveis/casos possiveis
pM = 0.5;
pF = 1 - pM;
experiencia = rand(nFilhos,1) <= pM; % 1 significa que é rapaz
experiencias = rand(nFilhos, N) <= pM;
nf = sum(experiencias);

cfavAeB = sum(nf==2); %dois filhos masculinos
cfavB = sum(experiencias(1,:))   %array com numeros da 1a linha toda
p = cfavAeB/cfavB;