%% SEGUNDA VERSAO

media = 10;
var = 5; 
 
% Alfabeto Portugues
ptAlphabet = ['A':'Z', '�', '�', '�', '�', '�', '�', '�', '�', '�', '�', ...
              '�', '�', 'a':'z', '�', '�', '�', '�', '�', '�', '�', '�', ...
              '�', '�'];
          
% ficheiros sript do e-learning
ficheiros = {'pg21209.txt', 'pg26017.txt'};

%fun��o massa probabilidade
pmfPT = pmfLetrasPT (ficheiros, alpha);
distPT = cumsum(pmfPT);

n = 1000;

toPlot = zerps(1, 1000);

for i = 1:n
    length = floor (distNormal (media, var));
    key = generateV2Str(length, ptAlphabet, distPT);
    hash = string2hash (key, 1000) + 1;
    toPlot(hash) = toPllot(hash) + 1;
end

subplot (2,1,1);
plot (toPlot);
subplot(2,1,2);
hist(toPlot(toPlot>0), 1:max(toPlot))