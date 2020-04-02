%% Exercicio 3

clc
clear all

T = rand(20, 20);

for i = 1:20
    T(:, i) = T(:, i) / sum(T(:, i));
end

x0 = zeros(20, 1);
x0(1) = 1;

% 20 transições
x20 = T^20 * x0;
prob_x20 = x20(20);

% 40 transições
x40 = T^40 * x0;
prob_x40 = x40(20);

% 100 transições
x100 = T^100 * x0;
prob_x100 = x100(20);
