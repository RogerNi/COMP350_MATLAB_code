function [] = gapConst ()

range = 0:0.1:4.5;
result = zeros(length(range));
for j = 1: length(result)
    result(j) = gap(range(j));
end
figure();
plot(range, result,"*");

end