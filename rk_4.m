function x = rk_4(f, a, b, x0, n)

h = (b-a)/n;
t = a;
x = zeros(1,n+1);
x(1) = x0;
for i = 1:n
    k1 = h*feval(f,t,x(i));
    k2 = h*feval(f,t+1/2*h,x(i)+1/2*k1);
    k3 = h*feval(f,t+1/2*h,x(i)+1/2*k2);
    k4 = h*feval(f,t+h,x(i)+k3);
    x(i+1) = x(i) + 1/6*(k1+2*k2+2*k3+k4);
    t = t + h;
end
end