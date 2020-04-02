function [str] = generateRandomPTString(str_length, pt_alphabet, distLettersPT)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    
    %generate string
    str = '';
    for i = 1:str_length
        letterIndex = find(distLettersPT > rand());
        str(i) = pt-alphabet(letterIndex(1));
    end

end

