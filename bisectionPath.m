function iters = bisectionPath(fname, a, b, nmax)
c = (a+b)/2;
iters = ones(1,nmax);
for j = 1:nmax
    if feval(fname,a)*feval(fname,c) < 0
        b = c;
    else
        a = c;
    end
    c = (a+b)/2;
    iters(j)=c;
end
end