%% Exercicio 7

%DA = 100;
%DB = 200;
%DC = 30;

% A, B, C
T = [80 10  5
     20 60 20
     0  30 75]/100;

matriz = sum(T);

x = [100 200 30]';  %fazer vetor coluna
%x0 = x / sum(x); 

%a)
v3 = T^3 * x;

%b)
v365 = T^365 * x;

%c)
%v = x; %valores para n
%dias = 0;
%while(v(3) <= 130)
    %dias = dias+1;
    %v2 = T^dias*x;
%end
%dias;

n = 1;
moneyAfterNTrans = T * x;
while(1) 
    n = n + 1;
    moneyAfterNTrans = T * moneyAfterNTrans;
    
    if(moneyAfterNTrans(3) > 130)
        break;
    end
end
fprintf('(c) Catarina will have more than $130 after %d transitions.\n', n);
[month, day] = date_from_days(n+1);
fprintf('(c) That is, she will have $%4.2f on %s %dth.\n', moneyAfterNTrans(3), month, day);