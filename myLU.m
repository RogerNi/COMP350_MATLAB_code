function [L, U] = myLU(A)
[n,] = size(A);
L = zeros(n);
for k = 1:n-1 
    for i = k+1:n 
        mult = A(i,k)/A(k,k); 
        L(i,k) = mult;
        A(i,k+1:n) = A(i,k+1:n)-mult*A(k,k+1:n); 
    end
end
U = triu(A);
L(1:n+1:end) = 1;
end