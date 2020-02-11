function [r] = gap (x)

if x == 0
    r = 0;
    return;
end
rep_list = [0, 1/8, 1/4, 3/8, 1, 5/4, 3/2, 7/4, 2, 5/2, 3, 7/2];
for j = 2: length(rep_list)
    if x < rep_list(j)
        r = x - rep_list(j - 1);
        return;
    end
end
r = x - rep_list(end);

end