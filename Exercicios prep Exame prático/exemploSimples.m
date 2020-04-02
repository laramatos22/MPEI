%% EXERCICIO/EXEMPLO SIMPLES

T = zeros(4);
T(2, 1) = 1;
T(1, 2) = 0.5; T(4, 2) = 0,5;
T(2, 3) = 0.6; T(4, 3) = 0.4;
T(2, 4) = 0.6; T(3, 4) = 0.4;


from = 1;
to = 3;

state = crawl (T, from, to);