function x = rk_2 (f, alp, a, b, x0, n)

h = (b-a)/n;
t = a;
x = zeros(1,n+1);
x(1) = x0;
for i = 1:n
    k1 = h*feval(f,t,x(i));
    k2 = h*feval(f,t+alp*h,x(i)+alp*k1);
    x(i+1) = x(i) + (1-1/(2*alp))*k1 + 1/(2*alp)*k2;
    t = t + h;
end
end