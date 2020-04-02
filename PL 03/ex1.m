%% EXERCICIO 1

%Alinea a)    %funcao massa de probabilidade

%teoria classica - a probabilidade tem q ser equiprovavel elementar
x = 1:6;
Px = ones(1,6)/6;  %ones - matriz de 1's
subplot (2, 1, 1); %2- numero de linhas; 1- numero de colunas; 1- grafico 1
stem(x,Px), xlabel('x'), ylabel('P(x)');

%Alinea b)    %funcao distribuicao acumulada

subplot (2, 1, 2);

Fx = cumsum([0 0 1 2 3 4 5 6 0 0]);     %soma acumulativa
stairs(-1:8, Fx);            %grafico em forma de "escadas"