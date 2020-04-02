%% Exercicio 5

clc
clear all

% a) matriz de transição

T = [0.7 0.2 0.3
     0.2 0.3 0.3
     0.1 0.5 0.4];
 
sum(T); % para verificar se é uma matriz estocástica
 
%b)
x0 = [1 0 0]';

P_b = T^2 * x0;
%A probabilidade de estar chuva é de 0.21
probB = P_b(3);

%c)
k=[];  %criação de matriz vazia para dps acrescentar colunas à matriz-> condição 
%       obrigatória para no ciclo for o k "funcionar"
for n = 1:20
   aux = T^n;
   aux(:);  %criação do vetor T
   k = [k aux(:)];   %matriz final de T
end
plot(k');

%d)
v1 = T(:); %valores para n
aux = T^2;
v2 = aux(:); %valores para n+1

n=3;

while(max(v2-v1) > 1e-4)
    v1=v2;
    v2 = T^n;
    v2 = aux(:);
    n=n+1;
end
