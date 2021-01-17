function [x,n] = real_value(a,n1,n2)
% Generates x(n) = a^n; n1 <= n <= n2
% -----------------------------------
% [x,n] = real_value(a,n1,n2)
%
n = [n1:n2]; x = [(n-n0) >= 0];
Hs = stem(n,x,'b','filled'); % Stem-plot with handle Hs
set(Hs,'markersize',4); % Change circle size
xlabel('n'); ylabel('x(n)'); % Label axis
title('Real Value Exp. Sequence'); % Title plot
