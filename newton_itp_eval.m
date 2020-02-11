function y = newton_itp_eval(x, xs, para, degree)
    function yh = newton_help(n)
        if n == degree + 1
            yh = para(n);
        else
            yh = para(n) + (x - xs(n))* newton_help(n+1);
        end
    end
y = newton_help(1);
end