%% Exercicio 2

%Alinea a)

Nota = 1:100;
pNota = ones(1,100)/100;
subplot (2, 1, 1); %2- numero de linhas; 1- numero de colunas; 1- grafico 1
stem(Nota, pNota), xlabel('x'), ylabel('P(x)');

%Alinea b)    função massa de probabilidade

xi = [5 50 100];
cFav = [90 9 1];
Px = cFav/100; %teoria classica

%Alinea c)

subplot (2, 1, 2);
Fx = cumsum([0 0 pNota 0 0]);     %soma acumulativa
stairs(-1:102, Fx);            %grafico em forma de "escadas"