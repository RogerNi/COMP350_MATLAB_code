function c = least_squares_given_gx(x, y)
len = size(x,2);
A = ones(len,3);
for i = 1:len
    A(i,2) = x(i)^2;
    A(i,3) = x(i)^4;
end
c = A\(y.');
end