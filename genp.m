function x = genp(A,b) 
% genp.m Gaussian elimination with no pivoting 
% 
% input: A is an n x n nonsingular matrix 
% b is an n x 1 vector 
% output: x is the solution of Ax=b. 
% 
n = length(b); 
for k = 1:n-1 
    for i = k+1:n 
        mult = A(i,k)/A(k,k); 
        A(i,k+1:n) = A(i,k+1:n)-mult*A(k,k+1:n); 
        b(i) = b(i) - mult*b(k); 
    end
end
x = zeros(n,1); 
x(n) = b(n)/A(n,n); 
for k = n-1:-1:1 
    x(k) = (b(k) - A(k,k+1:n)*x(k+1:n))/A(k,k); 
end
