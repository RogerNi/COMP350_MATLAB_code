function [] = computeDerivSin( x, N)

dSin = zeros(1,N);
for j = 1: N
    h = 10^(-j);
    dSin(j) = (sin(x+h) - sin(x))/h;
end

iteration=1:N;
figure();
hold on;
nDeriv = plot(iteration, dSin);
tDeriv = plot(iteration,cos(1)*ones(1,N));
dSin
cos(1)
end