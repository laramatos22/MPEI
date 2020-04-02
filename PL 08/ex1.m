%% Exercicio 1

clc 
clear all

% P (P\P) = 0.70
% P (P\F) = 0.80
% P (F\P) = 0.30
% P (F\F) = 0.20

T = [0.7 0.8 ; 0.3 0.2];

% ou
% T =  [0.7 , 0.8
%       0.3 , 0.2]

% a) Se estiver presente na aula de 4a numa determinada semana, qual a
% probabilidade de estar presentes na aula de 4a da aula seguinte

vP_a = [1 ; 0];
% vetor probabilidade/estados correspondentes inicial (0)

v2_a = T^2 * vP_a; % probabibilidade de estar presente é de 0.73

% b) Se nao estiver presente na aula de 4a numa determinada semana, qual a
% probabilidade de estar presente na aula da 4a da semana seguinte

vP_b = [0 ; 1];

v2_b = T^2 * vP_b; % probabilidade de estar presente é 0.72

% c) Sabendo que esteve presente na 1a aula, qual a probabilidade de estar
% na ultima ultima, assumindo q o semestre tem exatamente 15 semanas de
% aulas e nao existem feriados

vP_c = [1 ; 0]; 

v29_c = T^29 * vP_c; % probabilidade de estar presente é 0.73
%29 = 15 semanas * 2 aulas por semana - 1 dia (0 é considerado a 1a aula)

% d) Grafico

pD = [0.85; 0.15];
toPlot = zeros(1, 30);
for i = 1:30
    placeHolder = T^(i-1) * pD;
    toPlot(i) = placeHolder(2);
end

plot(toPlot);
