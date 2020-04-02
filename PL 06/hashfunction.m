function [hashCode] = hashfunction(str,M)  %hf = hash function
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

hashCode = string2hash(str);

hashCode=rem(hashCode,M);  %valores entre 0 e M-1    // rem = resto da divisao

end
