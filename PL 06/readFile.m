function [wordsFile] = readFile(fileName)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here

    file = fopen (fileName);
    file_contents = fscanf(file, '%c', inf);
    wordsFile = strsplit(file_contents);

end

