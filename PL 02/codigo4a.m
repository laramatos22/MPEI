%% codigo 4.a)

n = 20;  %dardos
m = 100; %alvos
N = 1e6; %experiencias
%p = 1/m; %probabilidade

%fazer matriz com 20 dardos e saber em q alvo acertou de 1 a 100

%experiencias = floor (rand (n, N) + 1); 
experiencia2 = randi (m, n, N);  %numeros random inteiros 

%result = sum(alvos) == 1;
%p = sum(result) / N;

%cfav = ??
cfav = 0;
for col= 1:N
    coluna = experiencia2(:,col);
    
    if (length(unique(coluna)) == n)
        cfav = cfav + 1;
    end
end

p = cfav / N;