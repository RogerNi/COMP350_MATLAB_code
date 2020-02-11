function [z, h, c, d] = cubic_spline(t, y)
len = size(t,2) - 1;
z = zeros(1,len+1);
h = zeros(1,len);
b = zeros(1,len);
u = zeros(1,len);
v = zeros(1,len);
c = zeros(1,len);
d = zeros(1,len);
for i = 1:len
    h(i) = t(i+1) - t(i);
    b(i) = (y(i+1) - y(i))/h(i);
end
u(2) = 2*(h(1)+h(2));
v(2) = 6*(b(2)-b(1));
for i = 3:len
    mult = h(i-1)/u(i-1);
    u(i) = 2*(h(i-1)+h(i))-mult*h(i-1);
    v(i) = 6*(b(i)-b(i-1))-mult*v(i-1);
end
z(len+1) = 0;
for i = len:-1:2
    z(i) = (v(i)-h(i)*z(i+1))/u(i);
end
z(1) = 0; 

for i = 1:len
    c(i) = (y(i+1)-y(i))/h(i) - h(i)*(z(i+1)-z(i))/6;
    d(i) = (y(i)*t(i+1)-y(i+1)*t(i))/h(i) + h(i)*(t(i)*z(i+1)-t(i+1)*z(i))/6;
end

end