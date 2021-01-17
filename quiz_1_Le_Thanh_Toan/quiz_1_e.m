% quiz 1 e.
clc; 

n4 = [-4:24];
% signal x4a = {...,-4, 0, 2, 8...}
x4a = [-4 0 2 8];
x4a = x4a' * ones(1,2);
x4a = (x4a(:))';

% signal x4b = {...-1, 1, 3, 7, 5...}
x4b = [-1 1 3 7 5];
x4b = x4b' * ones(1,2);
x4b = (x4b(:))';

% signal x4c = {...2, 7...}
x4c = [2 7];
x4c = x4c' * ones(1,2);
x4c = (x4c(:))';

x4 = x4a(1:25) + x4b(1:25) + x4c(1:25);

Hf_1 = figure; set(Hf_1, 'NumberTitle', 'off', 'name', 'quiz 1 e');
Hs = stem(n4, x4, 'filled'); set(Hs, 'makersize', 3);
axis([min(n4) - 1], max(n4) + 1, min(x4) -1, max(x4) + 1);
xlabel('n', 'Fontsize', 10); ylabel('x1(n)', 'Fontsize', 10);
title('Sequence periodic x4(n)', 'Fontsize', 15);
ntick = [n4(1):2:n4(end)];
ytick = [min1(x4)-1:max(x4)+1];
set(gca, 'XtickMode', 'manual', 'Xtick', ntick);
set(gca, 'XtickMode', 'manual', 'Xtick', ytick);