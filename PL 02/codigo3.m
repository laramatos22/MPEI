%% codigo 3

%P[ “mamograma positivo se cancro da mama” ] = 0,9(999)
%P[ “mamograma positivo se NAO cancro da mama” ] = 0,(0000)1

PpositivoDadoDoenca = 0.9; 
PpositivoDadoNaoDoenca = 0.1;
Pdoenca = 1/10000; 
PmamogramaPositivo = (PpositivoDadoDoenca * Pdoenca) + (PpositivoDadoNaoDoenca * (1 - Pdoenca));
p = PpositivoDadoDoenca * Pdoenca / PmamogramaPositivo