function key = generateV2Str (tamanho, alfabeto, dist) 
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

   key = '';
   for i = 1:tamanho
       index = find(dist > rand());
       key(i) = alfabeto(index(1));
   end

end

