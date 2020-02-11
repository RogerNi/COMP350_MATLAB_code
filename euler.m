function x = euler(f, a, b, x0, n)

h = (b-a)/n;
t = a;
x = zeros(1,n+1);
x(1) = x0;
for i = 1:n
    x(i+1) = x(i) + h*feval(f, t, x(i));
    t = t + h;
end

end