% using the conv_m function
clc; 

nx = [0:100];
x = exp(0.2*pi).*cos(0.4*pi*n);
[xf, nxf] = sigfold(x, nx);

[rxx,nrxx] = conv_m(x, nx, xf ,nxf);

Hf_1 = figure; set(Hf_1, 'NumberTitle', 'off', 'name', 'quiz 2 a');
Hs = stem(nrxx, rxx, 'filled'); set(Hs, 'makersize', 3);
axis([min(nrxx) - 1], max(nrxx) + 1, min(rxx) -1, max(rxx) + 1);
xlabel('n', 'Fontsize', 10); ylabel('x1(n)', 'Fontsize', 10);
title('Sequence periodic rxx(1)', 'Fontsize', 15);
ntick = [nrxx(1):4:nrxx(end)];
ytick = [min1(rxx)-1:max(rxx)+1];
set(gca, 'XtickMode', 'manual', 'Xtick', ntick);
set(gca, 'XtickMode', 'manual', 'Xtick', ytick);