%% Exercicio 6

%a) matriz de transição H
%ordem 1, 2, 3, 4
H = [0.8  0  0.3 0
     0.2 0.9 0.2 0
      0  0.1 0.4 0
      0   0  0.1 1];
  
sum(H);
  
%b) 
v0 = [1 0 0 0]';  %começa na pagina 1
v = H^1000 * v0;

r = v(2);
%r = 5.1810e-06 

% b) alternativo
T1000 = H^1000;
rB = T1000(2, 1);

%c)
l1 = H;
l2 = H^2;
l3 = H^10;
l4 = H^100;

%d) matriz Q
numEstadoNaoAbsorventes = 3;
Q = H(1:numEstadoNaoAbsorventes, 1:numEstadoNaoAbsorventes)

Q = H(1:3, 1:3);

%e) matriz fundamental F  = (I - Q) ^ -1

F = inv(eye(size(Q)) - Q);
%numero medio de vezes q se passa de uma pagina para a outra

%f) 
media = sum(F);

%g)
tempo = sum(F);