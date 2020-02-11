function y = secant(fname,x0,x1,xtol,ftol,nmax)
f0 = feval(fname,x0);
f1 = feval(fname,x1);
for n = 1:nmax
    d = (x1-x0)*f1/(f1 - f0);
    x0 = x1;
    f0 = f1;
    x1 = x1 - d
    f1 = feval(fname,x1);
    if abs(d) <= xtol || abs(f1) <= ftol
        y = x1;
        return
    end
end
y = x1;
end