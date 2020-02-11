function ass6_q3(n)

x = @(t,x) x;
xt = @(t) exp(t);
trap_euler = @(f, a, b, x0, n) rk_2 (f, 1, a, b, x0, n);
mp_euler = @(f, a, b, x0, n) rk_2 (f, 1/2, a, b, x0, n);

eu = euler(x, 0, 4, 1, n);
trap = trap_euler(x, 0 ,4, 1, n);
mp = mp_euler (x, 0 ,4, 1, n);
rk2 = rk_2(x, 1/4, 0, 4, 1, n);
rk4 = rk_4 (x, 0, 4, 1, n);
r = 0:4/n:4;
tv = xt(r);

plot(r, eu, 'g', r, trap, 'b', r, mp, 'y',r, rk2, 'c',r, rk4, 'k', r, tv, 'r');
legend({"Euler's Method","trapezoidal Euler’s method","Midpoint Euler's Method","Runge-Kutta method of Order 2","Runge-Kutta method of Order 4","true value"},'Location','northwest');
title("Plot of n = "+int2str(n));

end