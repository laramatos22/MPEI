function [belongs] = belongsToBloomFilter (bloom_filter, hashes_num, element)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

    belongs = 1;
    
    for i = hashes_num
        unique_el = [element num2str(i^5)];
        
        el_index = rem(string2hash(unique_el), length(bloom_filter)) + 1;
        
        if (bloom_filter(el_index) == 0)
            belongs = 0;
            break;
        end
    end

end

