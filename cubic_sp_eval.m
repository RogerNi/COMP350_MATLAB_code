function y = cubic_sp_eval(x,t,z,h,c,d)
len = size(t,2);
    function index = find_interval(x)
        for i = 1: len
            if t(i) >= x
                index = max(1, i - 1);
                return
            end
            index = len - 1;
        end
    end
index = find_interval(x);
y = (t(index+1)-x)^3*(z(index)/(6*h(index)))+(x-t(index))^3*(z(index+1)/(6*h(index)))+c(index)*x+d(index);
end