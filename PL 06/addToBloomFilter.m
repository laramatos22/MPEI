function [bloom_filter] = addToBloomFilter(bloom_filter, hashes_num, element)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

    for i = 1:hashes_num
        %create unique string
        unique_el = [element num2str(i^5)];
        
        %add to the bloom string
        el_index = rem(string2hash(unique_el), length(bloom_filter)) + 1;
        bloom_filter(el_index) = 1;
    end

end

