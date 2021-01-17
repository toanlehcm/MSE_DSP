function [y, n] = periodic(x, P)
% Generates y(n) = periodic(x, n); n1 <= n <= n2
% -------------------------------------------------------
% [y,n] = periodic(x, n1, n2)
% P la chu k? muon lap
% so lan lap khong nhat thiet la 1 chu ky, khong lap lai dung 1 chu ky
% n1 muon bao nhieu cung duoc, chay tu n1 den n2
% phai dinh nghia duoc day goc x~(n)= {}
%
n = [1: P*length(x)]; y = x'.*ones(1, P); %x la bien vector hang ngang, doi thanh vector cot, nhan P lan, chuyen vector hang thanh vector cot
y = y(:)';
Hs = stem(n,y,'b','filled'); % Stem-plot with handle Hs
set(Hs,'markersize',4); % Change circle size
xlabel('n'); ylabel('x(n)'); % Label axis
title('Periodic Sequence'); % Title plot
