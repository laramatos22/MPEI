%% codigo 6.a)

for n = 1:((365/2)+1)  %numero de pessoas
N = 1e4;
d = 365;

experiencia = randi (d, n, N);  %numeros random inteiros 

cfav = 0;

for col = 1:N
    coluna = experiencia(:,col);
    
    if (length(unique(coluna)) == n)
        cfav = cfav + 1;
    end
end

p(n) = cfav / N;

end 

plot (1-p, '*:')