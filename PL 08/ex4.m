%% Exercicio 4

p = 0.4;
q = 0.6;

% a) matriz de transição T
T = [  (p^2)   , 0 , 0 ,   (q^2)
     ((1-p)^2) , 0 , 0 ,  (q*(1-q))
     (p*(1-p)) , 0 , 0 ,  (q*(1-q))
     (p*(1-p)) , 1 , 1 , ((1-q)^2)];
 
% b) 
xA = [1 ; 0 ; 0 ; 0];
probB = T^10 * xA;
% a probabilidade de chegar a B é 0.1821
%                             C   0.1583
%                             D   0.4616

%OU 
T10 = T^10
pB10 = T10(2, 1); %2a linha 1a coluna
pC10 = T10(3, 1);
pD10 = T10(4, 1);