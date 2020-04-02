%% EXERCICIO 1 PPT DA AULA

clc 
clear all

H = [0   0   1/2 0   1/2 1/5
     1/3 1/3 1/2 1/2 1/2 1/5
     1/4 0   0   0   0   1/5
     1/4 1/3 0   0   0   1/5
     1/4 0   0   1/2 0   1/5
     0   1/3 0   0   0   0];
 
x0 = [1/6 1/6 1/6 1/6 1/6 1/6]';

x3 = H^3*x0;

k = [];

for n = 1:50
    aux = H^n;
    aux(:);
    k = [k aux(:)];
end

plot(k');