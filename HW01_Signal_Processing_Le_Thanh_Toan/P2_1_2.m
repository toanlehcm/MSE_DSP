% Problem 2.1 - question 2
% x2(n) = sum_{k=-5}^{5} e^{-|k|}*dirac(n-2k), -10 <= n <= 10

n2 = [-10:10]; x2 = zeros(1, length(n2));%zeros create an array

for k = -5:5
    x2 = x2 + exp(-abs(k)) * impseq(2*k, -10, 10)
end

Hf_1 = figure; set(Hf_1, 'NumberTitle', 'off', 'name', 'problem 2 - question 2');
Hs = stem(n2, x2, 'filled'); set(Hs, 'makersize', 3);
axis([min(n2) - 1], max(n2) + 1, min(x2) -1, max(x2) + 1);
xlabel('n', 'Fontsize', LFS); ylabel('x2(n)', 'Fontsize', LFS);
title('Sequence x2(n)', 'Fontsize', LFS);
set(gca, 'XtickMode', 'manual', 'Xtick', n2);