function run_secant()
    function y = f (x)
        y = x^3 -2;
    end
    secant('f',0,1,1.e-12,1.e-12,20)
end