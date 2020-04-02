function y = Bernoulli(p,N)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
y = rand(1,N) < p;
%ou
% y = rand (1,N) > (1-p);
end