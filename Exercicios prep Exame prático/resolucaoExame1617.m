%RESOLUÇÃO EXAME PRATICO 2016/2017

clear all
close all
clc

%% 1

% 1 a)
%matriz de transição
T = [0.9  0.5 0.5
     0.09 0.4 0.4
     0.01 0.1 0.1];
 
%vetor estado inicial
i0 = [0 0 1]';

% 1 b)
probB = T^3 * i0;
fprintf("1 b)\n")
disp(probB)

% 1 c)
current_T = T;
next_T = T*T;
A = abs (current_T - next_T);
while max(A(:)) > 1e-3
    current_T = next_T;
    next_T = next_T * T;
    A = abs (current_T - next_T);
end
fprintf ("1 c)\n")
disp (current_T * i0);


%% 2

% 2 a)
N = 5; %numero de pages

H = [ 0  1/2 1/3 1/4  0
     1/2  0   0  1/4 1/2
     1/2 1/2 1/3 1/4  0
      0   0   0   0  1/2
      0   0  1/3 1/4  0];
  
One_over_N = ones(N, N)/N;

beta = 0.8;

%matriz da Google
A = (beta*H) + ((1 - beta)*One_over_N);

% 2 b)

rank = ones(N, 1)/N; % = rank_0

for i = 1:10
    rank = A * rank;
end
fprintf("2 b)\n");
disp(rank);

%% 3

% 3 a)
%matriz de transição
T3 = [0.7 0.2  0   0  0 0
     0.2  0  0.3  0  0 0
      0  0.6 0.3  0  0 0 
     0.1 0.2 0.3 0.1 0 0
      0   0   0  0.4 1 0
      0   0  0.1 0.5 0 1];

% 3 b)
i03 = [1 0 0 0 0 0]; %estado inicial é um caracter 'a'

p10 = T3^9 .* i03;
p15 = T3^14 .* i03;

fprintf("3 b)\n");
disp(p10(3));
disp(p15(4));

% 3 c)
Q = T3(1:4, 1:4)';
F = inv(eye(size(Q)) - Q);
expected_chars = sum(F);
fprintf("3 c)");
fprintf("Média: %f caracteres\n", expected_chars(3));