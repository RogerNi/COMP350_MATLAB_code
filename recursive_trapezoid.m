function I = recursive_trapezoid (f, tv, a, b, e)

eval_times = 0;
function t = eval(f, x)
    t = feval(f,x);
    eval_times = eval_times + 1;
end


h = b - a;
I = h * (eval(f,a)+eval(f,b)) /2;
j = 1;
m = 1;

while abs(tv - I) > e
    
    m = 2*m;
    h = h/2;
    s = 0;
    for k=1:m/2
        x = a + h*(2*k-1);
        s = s + eval(f,x);
    end
    I = I/2 + h*s;
    j = j + 1;
end

eval_times 
error = abs(tv - I)

end