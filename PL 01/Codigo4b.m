n=20; %lancamentos

S=0:n; %espa�o de amostragem

for k =S
    p(k+1) = lancamentos (k,n,0.5,1e6);
end

stem(S,p)