function getRootFindingPaths(fname,fdname,nmax,numPaths,trueRoot)
pathTrueRoot = trueRoot*ones(1,nmax);
hold on;
for p = 1:numPaths
    pathB = bisectionPath(fname,randn(),randn(),nmax);
    log10B = log10(abs(pathB-pathTrueRoot));
    pathN = newtonPath(fname, fdname, randn(), nmax);
    log10N = log10(abs(pathN-pathTrueRoot));
    pathS = secantPath(fname, randn(), randn(), nmax);
    log10S = log10(abs(pathS-pathTrueRoot));
    plot(1:nmax,log10B,'r');
    plot(1:nmax,log10N,'b');
    plot(1:nmax,log10S,'g');
end
end