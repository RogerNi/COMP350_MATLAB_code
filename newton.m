function root=newton(fname,fdname,x,xtol,ftol,nmax,display)
n = 0;
fx = feval(fname,x);
if display
disp(' n x f(x)')
disp('-------------------------------------')
fprintf('%4d %23.15e %23.15e\n', n, x, fx)
end
if abs(fx) <= xtol
root = x;
return
end
for n = 1:nmax
fdx = feval(fdname,x);
d = fx/fdx;
x = x - d;
fx = feval(fname,x);
if display
fprintf('%4d %23.15e %23.15e\n',n,x,fx)
end
if abs(d) <= xtol | abs(fx) <= ftol
root = x;
return
end
end
