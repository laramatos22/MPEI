function dist = getJaccardDistance (item1, item2)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

a = length(intersect(item1, item2));
dist = 1 - a/(length(item1) + length(item2 - a))

end

