function numI = adp_simpson (f, tv, a, b, eps, level_max)

eval_times = 0;

    function t = eval(f, x)
        t = feval(f,x);
        eval_times = eval_times + 1;
    end

    function [m, fm, I] = simpson(f, a, fa, b ,fb)
        m = (a+b)/2;
        fm = eval(f, m);
        I = abs(b - a) / 6 * (fa + 4 * fm + fb);
    end

    function I = adp(f, a, fa, b, fb, eps, whole, m, fm)
        [lm, flm, left] = simpson(f, a, fa, m, fm);
        [rm, frm, right] = simpson(f, m, fm, b, fb);
        delta = left + right - whole;
        level_max = level_max - 1;
        if level_max >  0
            if abs(delta) <= 15*eps
                I = left + right + delta /15;
            else
                I = adp(f, a, fa, m, fm, eps/2, left, lm, flm) + adp(f, m, fm, b, fb, eps/2, right, rm, frm);
            end
        else
            I = left + right;
        end
    end

fa = eval(f,a);
fb = eval(f,b);
[m, fm, whole] = simpson(f, a, fa, b, fb);
numI = adp(f, a, fa, b, fb, eps, whole, m, fm);
eval_times
error = abs(numI - tv)

end
