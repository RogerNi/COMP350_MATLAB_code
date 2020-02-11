function iters = secantPath(fname,x0,x1,nmax)
iters = ones(1,nmax);
f0 = feval(fname,x0);
f1 = feval(fname,x1);
for j = 1:nmax
    if f1 == f0
        iters(j) = x1;
        continue;
    end
    d = (x1-x0)*f1/(f1 - f0);
    x0 = x1;
    f0 = f1;
    x1 = x1 - d;
    f1 = feval(fname,x1);
    iters(j) = x1;
end
end