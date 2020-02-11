function y = steffense(fname,x,xtol,ftol,nmax)
f = feval(fname,x);
fxn = feval(fname,x+f);
for n = 1:nmax
    n
    d = f^2/(fxn - f);
    x = x - d
    f = feval(fname,x);
    fxn = feval(fname,x+f);
    if abs(d) <= xtol || abs(f) <= ftol
        y = x;
        return
    end
end
y = x1;
end