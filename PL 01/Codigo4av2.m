function [p] = Codigo4av2(k,n,p, N)
%simulacao de k sucessos em N lancamentos, p = probabilidade de sucesso, N = nº de
%experiencias
%AT, 24 set 2019
%   Detailed explanation goes here


experiencias = rand (n,N);
lancamentos = experiencias > p;

%conta num de caras
result = sum(lancamentos);

%%quando temos k caras
sucessos = result==k;

probSimulacao = sum(sucessos)/N

end

