%% Exercicio 3

udata = load ('u.data');
u = udata(1:end, 1:2);
clear udata;

users = unique(u(:,1));
nu = length (users);

p = 100001;

while ~isprime(p)
    p = p+2;
end

fprintf(1, 'p = %d\n', p);

M=p;
nhf = 100;
R = fix (rand (nhf, 1)*p);

Set = CriarEstrutDados (n, u, users);

Set = calcAssinaturas (Set, nu, k);

J = DistAssinaturas (Set, k, nu, R, M);




