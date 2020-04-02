function similar = areSimilar(item1, item2, similarity_matriz, threshold)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

similar = (similarity_matriz(item1, item2) < threshold);

end

