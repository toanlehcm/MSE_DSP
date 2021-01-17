function [x,n] = random_gaussian(N)
% Generates x(n) = randn(1,N)
% ---------------------------------------
% [x,n] = random_gaussian(N)
%
n = [1:N]; x = rand(1,N);
Hs = stem(n,x,'b','filled'); % Stem-plot with handle Hs
set(Hs,'markersize',4); % Change circle size
xlabel('n'); ylabel('x(n)'); % Label axis
title('Random Gaussian Sequence'); % Title plot
