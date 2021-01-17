% Problem 2.1 - Question 4.
% x4(n) = e^{0.1n} [u(N+20) - u(n-10)];

n4 = [-25:15]; %take 5 samples before and after
x4 = exp(0.1 * n4) .* (stepseq(-20, -25, 15) - stepseq(10, -25, 15));

Hf_1 = figure; set(Hf_1, 'NumberTitle', 'off', 'name', 'problem 2 - question 4');
Hs = stem(n4, x4, 'filled'); set(Hs, 'makersize', 3);
axis([min(n4) - 1], max(n4) + 1, min(x4) -1, max(x4) + 1);
xlabel('n', 'Fontsize', 10); ylabel('x4(n)', 'Fontsize', LFS);
title('Sequence x4(n)', 'Fontsize', 15);
ntick = [n4(1):5:n4(end)];
set(gca, 'XtickMode', 'manual', 'Xtick', ntick);
%ntick lay khoan cach ve tu bao nhieu den bao nhieu