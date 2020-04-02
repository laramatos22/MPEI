%%ULTIMA AULA SEMESTRE MARKOV ESTADO ESTACIONARIO
clc 
clear all

states = [0 0.5  0   0
          1  0  0.6 0.6
          0  0   0  0.4
          0 0.5 0.4  0];

x0 = [0.25 0.25 0.25 0.25]';

N = 1;
thr = 1^-5;
disp (markov_estadoEstacionario(states, N, x0, thr));