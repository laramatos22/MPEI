%% CALCULO MATRIZ F

clc
clear all

estados = [1 2 3 4];

% matriz Tcan
Tcan = zeros(4);
Tcan(1, 1) = 0.8; Tcan(2, 1) = 0.2;
Tcan(2, 2) = 0.9; Tcan(3, 2) = 0.1;
Tcan(1, 3) = 0.3; Tcan(2, 3) = 0.2;
Tcan(3, 3) = 0.4; Tcan(4, 3) = 0.1;
Tcan(4, 4) = 1;

%% Q
Q = Tcan(1:3, 1:3);

%% F
aux = eye(size(Q)) - Q;
F = inv(aux);

%% Calculo tempos medios até absorção
temp = F' * ones(3, 1);
% alternativo
tempAb = sum(F);