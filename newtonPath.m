function iters = newtonPath(fname, fdname, x, nmax)
iters = ones(1,nmax);
for j = 1:nmax
    d = feval(fname,x)/feval(fdname,x);
    x = x - d;
    iters(j)=x;
end
end