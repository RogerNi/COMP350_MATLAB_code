function [] = gapGen ()

rep_list = [0, 1/4, 1/2, 3/4, 1, 5/4, 3/2, 7/4, 2, 5/2, 3, 7/2];
gap = zeros(length(rep_list));
for j = 2: length(gap)
    gap(j) = rep_list(j) - rep_list(j-1);
end

figure();
hold on;
plot(rep_list, gap,"*");

end