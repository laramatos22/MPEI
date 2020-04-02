%% Exercicio 2

clc
clear all

% a)
% matriz de transição
T = [1/3 ,  1/4  , 0
     1/3 , 11/20 , 1/2
     1/3 ,  1/5  , 1/2];
 
% matriz estocástica = matriz probabiliade cuja soma de cada coluna tem q
% dar 1
k = sum(T);

% b)
X0_b = [60/90 ; 15/90 ; 15/90];
%OU
%XO = [60 15 15]'/90

% c)
x30_c = T^30 * X0_b;
probC = x30_c * 90;

% d)
X0_d = [30 30 30]';
x30d = T^29 * X0_d;
disp(x30d);
%probD = x30d * 90;
