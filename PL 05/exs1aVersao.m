%% PRIMEIRA VERSAO

%% EXERCICIO 1 

key = hashString(3, 20);
%% EXERCICIO 2 

hash = string2hash(key(3, 20), sbdm);

                    %   type (10000) : Type of has 'djb2' (default) or 'sdbm'
%% EXERCICIO 3 


%simular 1000 strings

NS = 1000;
M = 1000/0.8;   % M = 1250
                %0.8 - fator de carga

Array = zeros(1,M);

for s = 1:NS
    
    str = hashString(3,20);
    
    %simular inserção
    
        %aplicar função
    posicao = hashfunction(str, M); %M - tamanho do array
        
        %inserir
    Array(posicao+1) = Array(posicao+1)+1;  %é necessario incrementar
    
    
    %stem(Array)  %nao é aconselhavel colocar o stem dentro do ciclo for
    %drawnow
   % pause(1)    %no histograma vai acrecentando valores conforme vai se adicionando mais strings
end

stem (Array);

[n,x] = histogram(Array, 0:max(Array));

pX = n/1000;

k1=mean(Array(Array>0));
k2=var(Array(array>0));
