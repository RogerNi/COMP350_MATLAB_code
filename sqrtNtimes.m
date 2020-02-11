% Take positive input and square roots N times then tries to recover the
% original number

function [y] = sqrtNtimes(x, N)

y=x;
for j=1:N
    y=sqrt(y);
end

for j = 1 : N
    y = y^2;
end

end