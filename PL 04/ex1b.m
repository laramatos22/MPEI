%% exercicio 1.b)

u = y/m;

subplot(121);
hist(u,10), title ('lcg()');  %10 - numero de barras
subplot(122);
hist(rand(1,N),10), title('rand()')