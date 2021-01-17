% quiz 1 c
clc;

n = [0:150]; 
x = exp(0.05*n).*cos(0.02*pi*n).*sin(0.16*pi*n);

Hf_1 = figure; set(Hf_1, 'NumberTitle', 'off', 'name', 'quiz 1 c');
Hs = stem(n, x, 'filled'); set(Hs, 'makersize', 3);
axis([min(n) - 1], max(n) + 1, min(x) -1, max(x) + 1);
xlabel('n', 'Fontsize', 10); ylabel('x(n)', 'Fontsize', 10);
title('Sequence x(n)', 'Fontsize', 15);
ntick = [n(1):5:n(end)];
set(gca, 'XtickMode', 'manual', 'Xtick', ntick);