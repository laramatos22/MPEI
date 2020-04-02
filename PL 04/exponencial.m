function X = exponencial(m, N)
%UNTITLED11 Summary of this function goes here
%   Detailed explanation goes here

%X = lambda * e^(-lambda*x);

U = rand(1,N);
X = -m*log(U);

end

