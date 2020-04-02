%% Exercicio 3

% Gere m=1000 strings aleatorias com 40 caracteres 
% (considere como caracteres possíveis o conjunto de caracteres minusculos, 
% maiúsculos e algarismos) e preencha um Bloom Filter, de tamanho
% n=8000. Este Bloom Filter deve ter k = 3 funçoes de dispersão
% e as strings geradas devem obedecer às diferentes probabilidades
% de ocorrência das letras em português.

clear; clc; close all;

%portuguese alphabet
pt_alphabet = ['A':'Z', 'À', 'Á', 'Â', 'Ã', 'Ç', 'É', 'Ê', 'Í', 'Ó', 'Ô', ...
                'Õ', 'Ú', 'a':'z', 'à', 'á', 'â', 'ã', 'ç', 'é', 'ê', 'í', ...
                'ó', 'ô', 'õ'];
            

%get portuguese letters alphabet distribution
files = {'pg21209.txt', 'pg26017.txt'};
pmfPT = pmfLetrasPT(files, pt_alphabet);
distLettersPT = cumsum(pmfPT);

%initialize the bloom filter
bloom_size = 8000;
hashes_num = 3;
bloom_filter = zeros (1, bloom_size, 'uint8');

%initialize str_numbers
string_num = 1000;
string_length = 40;

%add every string to the filter
for i = 1:string_num
    bloom_filter = addToBloomFilter(bloom_filter, hashes_num, ...
                    generateRandomPTString(string_length, pt_alphabt, distLettersPT));
end

% (b) Gere um segundo conjunto de 10000 strings aleatorias com 40 
%   caracteres e teste a pertenca das mesmas ao Bloom Filter que preencheu
%   antes. 

test_num = 10000;

%test if added strings belong to the filter
false_positives = 0;
for i = 1:test_num
    
    test_str = generateRandomPTString(string_length, pg_alphabte, distLettersPT);
    
    if belongstoBloomFilters(bloom_filter, hashes_num, test_str) == 1
        fprintf("O ");
        false_positives = false_positives + 1;
    else 
        fprintf("X ");
    end
    
    if rem (i, 50) == 0
        fprintf("\n");
    end
end

fprintf("\nPercentage of false positives: %4.3f%%\n", (false_positives/test_num)*100);