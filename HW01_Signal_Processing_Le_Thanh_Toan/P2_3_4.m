% Problem 2.3 - Question 4.
% P0203d x1(n) = {...,1,2,3...}_periodic + {...,1,2,3,4...}_periodic
clc; 

n4 = [0:24];
% signal x4a = {...,1,2,3,...}
x4a = [1 2 3];
x4a = x4a' * ones(1,9);%tu 0 den 24 la 25 gia tri, toi thieu lap 9 lan.
x4a = (x4a(:))';
%x4a chu ky 3 samples -> 9 chu ky

% signal x4b = {...,1,2,3,4,...}
%x4b: 4 mau -> 7 chu ky
x4b = [1 2 3 4];
x4b = x4b' * ones(1,7);%toi thieu lap 7 lan.
x4b = (x4b(:))';

x4 = x4a(1:25) + x4b(1:25); % take samples from 0 to 24

Hf_1 = figure; set(Hf_1, 'NumberTitle', 'off', 'name', 'problem 2.3 - question 4');
Hs = stem(n4, x4, 'filled'); set(Hs, 'makersize', 3);
axis([min(n4) - 1], max(n4) + 1, min(x4) -1, max(x4) + 1); % lay truoc do 10 mau, sau do 10 mau
xlabel('n', 'Fontsize', 10); ylabel('x1(n)', 'Fontsize', 10);
title('Sequence periodic x4(n)', 'Fontsize', 15);
ntick = [n4(1):2:n4(end)]; % display from n2(1) to n2(end) with a step
ytick = [min1(x4)-1:max(x4)+1];
set(gca, 'XtickMode', 'manual', 'Xtick', ntick);
set(gca, 'XtickMode', 'manual', 'Xtick', ytick);