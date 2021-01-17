% in class exercise p3.1_1: DTFT of x1(n) = 0.6^|n| *(u(n+10) - u(n-11))
clc; %close all;
%
[x11, n11] = stepseq(-10, -11, 11); %n1=[], min(n21, n22), max() //u(n+10)
[x12, n12] = stepseq(11, -11, 11); %u(n-11)
[x13, n13] = sigadd(x11, n11, -x12, n12); %u(n+10) - u(n-11)
n1 = n13; x1 = (0.6 .^abs(n1)).^x13;
w1 = linspace(-pi, pi, 201);
X1 = dtft(x1, n1, w1); %DTFT of x1(n)
magX1 = abs(X1); phaseX1 = angle(X1);

% magni
Hf_1 = figure; set(Hf_1, 'NumberTitle', 'off', 'Name', 'B31_1');
subplot(2,1,1); plot(w1/pi, magX1, 'linewidth', 1.5);
axis([-1 1 0 5]); wtick = [-1:0.2:1]; magtick = [0:0.5:5];
xlable('\omega/\pi');
ylable('|X|');
title('magnitude response');
set(gca, 'XTick', wtick);
set(gca, 'YTick', magtick);

% phase plot
%Hf_1 = figure; set(Hf_1, 'NumberTitle', 'off', 'Name', 'B31_1');
subplot(2,1,1); plot(w1/pi, magX1, 'linewidth', 1.5);
axis([-1 -1 -180 180]); wtick = ([-1:0.2:1 ]); magtick = [0:0.5:5];
xlable('\omega/\pi');
ylable('|X|');
title('magnitude response');
set(gca, 'XTick', wtick);
set(gca, 'YTick', magtick);