% Problem 2.3 - Question 1.
% P0203a: x1(n) = {...,-2,-1,0,1,2,-2,-1,0,1,2...} periodic. 5 periods
% Plot 5 periods

n1 = [-12:12]; x1 = [-2 -1 0 1 2];
x1 = x1' * ones(1,5);%tu hang thanh cot
% 5 chu ky nen ones(1, 5); duplicate 5 lan
x1 = (x1(:))' %bien hang thanh cot

Hf_1 = figure; set(Hf_1, 'NumberTitle', 'off', 'name', 'problem 2.3 - question 1');
Hs = stem(n1, x1, 'filled'); set(Hs, 'makersize', 3);
axis([min(n1) - 1], max(n1) + 1, min(x1) -1, max(x1) + 1); % lay truoc do 10 mau, sau do 10 mau
xlabel('n', 'Fontsize', 10); ylabel('x1(n)', 'Fontsize', 10);
title('Sequence periodic x1(n)', 'Fontsize', 15);
ntick = [n1(1):20:n1(end)]; % display from n2(1) to n2(end) with a step
ytick = [min1(x1)-1:max(x1)+1];
set(gca, 'XtickMode', 'manual', 'Xtick', ntick);
set(gca, 'XtickMode', 'manual', 'Xtick', ytick);