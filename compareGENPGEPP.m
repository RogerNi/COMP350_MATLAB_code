function compareGENPGEPP(n,N)

np_es = zeros(N);
pp_es = zeros(N);

hold on;
for j = 1:N
    A = randn(n);
    x = randn(n,1);
    b = A*x;
    np_es(j) = log10(norm(genp(A,b)-x));
    pp_es(j) = log10(norm(gepp(A,b)-x));
end
plot(1:N,np_es,'r');
plot(1:N,pp_es,'b');

end