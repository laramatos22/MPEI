%% Problema 1 (2015-2016)

clc
clear all

%     A   B   C   D   E   F
H = [ 0   0  1/2  0  1/2 1/5
     1/4 1/3 1/2 1/2 1/2 1/5
     1/4  0   0   0   0  1/5
     1/4 1/3  0   0   0  1/5
     1/4  0   0  1/2  0  1/5
      0  1/3  0   0   0   0];
  
SEQ = [1 2 3 4 5 6];
  
x0 = [1/6 1/6 1/6 1/6 1/6 1/6]';

%a)

x3 = H^3 * x0;

%b)

k=[];  %criação de matriz vazia para dps acrescentar colunas à matriz-> condição 
%       obrigatória para no ciclo for o k "funcionar"
for n = 1:20
   aux = H^n;
   aux(:);  %criação do vetor T
   k = [k aux(:)];   %matriz final de T
end
plot(k');

%c)
%getCanonicalForm(H, SEQ);

