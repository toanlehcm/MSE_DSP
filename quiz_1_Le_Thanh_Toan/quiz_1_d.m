% quiz 1 d
clc;

n1 = [-15:14]; 
x1 = [-5, -3, -1, 1, 3, 5];
x1 = x1' * ones(1,5);
x1 = (x1(:))';

Hf_1 = figure; set(Hf_1, 'NumberTitle', 'off', 'name', 'quiz 1 d');
Hs = stem(n1, x1, 'filled'); set(Hs, 'makersize', 3);
axis([min(n1) - 1], max(n1) + 1, min(x1) -1, max(x1) + 1);
xlabel('n', 'Fontsize', 10); ylabel('x1(n)', 'Fontsize', 10);
title('Sequence periodic x1(n)', 'Fontsize', 15);
ntick = [n1(1):20:n1(end)];
ytick = [min1(x1)-1:max(x1)+1];
set(gca, 'XtickMode', 'manual', 'Xtick', ntick);
set(gca, 'XtickMode', 'manual', 'Xtick', ytick);