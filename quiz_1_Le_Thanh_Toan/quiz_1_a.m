% 1a: x1(n) = 2delta(n+3) -e^0.2n[u(n+2) -u(n)], -20 <= n <= 20
clc;

n1 = [-20:20];
x1 = 2*impseq(-3,-20,20) - exp(0.2*n1).*(stepseq(-2,-20,20) - stepseq(0,-20,20));

Hf_1 = figure; set(Hf_1, 'NumberTitle', 'off', 'name', 'quiz 1a');
Hs = stem(n1, x1, 'filled'); set(Hs, 'makersize', 3);
axis([min(n1) - 1], max(n1) + 1, min(x1) -1, max(x1) + 1);
xlabel('n', 'Fontsize', 10); ylabel('x1(n)', 'Fontsize', LFS);
title('Sequence x1(n)', 'Fontsize', 15);
ntick = [n1(1):5:n1(end)];
set(gca, 'XtickMode', 'manual', 'Xtick', ntick);