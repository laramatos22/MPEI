%% Exercicio 1

% k=4;
% 
% B = inicializar(10);
% B = inserir('a', B, k);
% B = inserir('b', B, k);
% 
% stem(B);

clear; clc; close all;

members = {'Europa', 'Portugal', 'Suica', 'Alemanha', 'Franca', 'Espanha', ...
            'Italia', 'Belgica', 'Luxemburgo'};
        
test = {'Reino Unido', 'Polonia', 'Russia', 'Suica', 'Brasil', 'America'};

m = 100;
hashes_num  = 3;

%initialize the bloom filter
bloom_filter = zeros (1, m, 'uint8');

for i = 1:length(members)
    bloom_filter = addToBloomFilter (bloom_filter, hashes_num, members{i});
end

for i = 1:length(test)
    if belongsToBloomFilter (bloom_filter, hashes_num, test{i})
        fprintf("O - %s belongs to the filter.\n", test{i});
    end
end