function a = newton_interpolation (x, y, degree)
a = zeros(1, degree + 1);
for k = 1: degree
    a(k)= y(k);
    for i = k+1: degree + 1
        y(i) = (y(i) - y(k))/(x(i)-x(k));
    end
end
a(degree + 1) = y(degree + 1);
end