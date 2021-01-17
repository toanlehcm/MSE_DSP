% Problem 2.9
% P0209a: autocorrelation of sequence x(n) = 0.9 ^ n, 0 <= n <= 20
% using the conv_m function
clc; 

nx = [0:20];
x = 0.9 .^ nx; %do vector den .^
[xf, nxf] = sigfold(x, nx); %tu tuong quan nen tu tinh xf

%determine rxx(l)
[rxx,nrxx] = conv_m(x, nx, xf ,nxf);

Hf_1 = figure; set(Hf_1, 'NumberTitle', 'off', 'name', 'problem 2.9');
Hs = stem(nrxx, rxx, 'filled'); set(Hs, 'makersize', 3);
axis([min(nrxx) - 1], max(nrxx) + 1, min(rxx) -1, max(rxx) + 1); % lay truoc do 10 mau, sau do 10 mau
xlabel('n', 'Fontsize', 10); ylabel('x1(n)', 'Fontsize', 10);
title('Sequence periodic rxx(1)', 'Fontsize', 15);
ntick = [nrxx(1):4:nrxx(end)]; % display from n2(1) to n2(end) with a step
ytick = [min1(rxx)-1:max(rxx)+1];
set(gca, 'XtickMode', 'manual', 'Xtick', ntick);
set(gca, 'XtickMode', 'manual', 'Xtick', ytick);