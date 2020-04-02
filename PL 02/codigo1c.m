%% codigo 1.c)

N = 1e6; %numero de experiencias
nFilhos=2;
pM = 0.5;    %na simula��o a probabilidade tem q ser igual para M e F
pF = 1 - pM;
experiencia = rand(nFilhos,1) <= pM; % 1 significa que � rapaz
experiencias = rand(nFilhos, N) <= pM;

nf = sum(experiencias);

%A = "outro filho � rapaz"
%B = "1� filho � rapaz"

cfavAeB = sum(nf == 1);  %o 1� filho � rapaz
cfavB = sum( experiencias(1,:) );
p = cfavAeB / cfavB;