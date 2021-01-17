% quiz 1 b
clc;

n2 = [-150:150]; 
x2 = 4*cos(0.36*pi*n2).*sin(0.62*pi*n2) - 2*(cos(0.15*pi*n2) + sin(0.36*pi*n2));

Hf_1 = figure; set(Hf_1, 'NumberTitle', 'off', 'name', 'quiz 1b');
Hs = stem(n2, x2, 'filled'); set(Hs, 'makersize', 3);
axis([min(n2) - 1], max(n2) + 1, min(x2) -1, max(x2) + 1);
xlabel('n', 'Fontsize', 10); ylabel('x2(n)', 'Fontsize', 10);
title('Sequence x2(n)', 'Fontsize', 15);
ntick = [n2(1):5:n2(end)];
set(gca, 'XtickMode', 'manual', 'Xtick', ntick);