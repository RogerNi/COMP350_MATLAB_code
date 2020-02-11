% Computing sum of integers 1/j in two different orders

function [s1, s2] = mySumNew(N) % function name need to be the same with the file name
s1 = 0;
for j = 1 : N % j is local in function, not only in for loop
    s1 = s1 + 1/j;
end

s2 = 0;
for k = N:-1:1
    s2 = s2 + 1/k; 
end
% 2nd method is more accurate

% Two methods give different answers
% Precision issue
end