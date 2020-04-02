function b = binomial(p, n, N)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here

%b = factorial(n, k) * (p^k)* ((1-p)^(n-k))

x = rand(n, N) < p;
b = sum(x);

end

