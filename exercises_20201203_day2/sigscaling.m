function [y,n] = sigscaling(a,x)
% implements y(n) = a{x(n)} 
%-------------------------------
% [y,n] = (a,x)
%
n = [1:length(x)]; y = a*x;
Hs = stem(n,y,'b','filled'); % Stem-plot with handle Hs
set(Hs,'markersize',4); % Change circle size
xlabel('n'); ylabel('y(n)'); % Label axis
title('Scaling Sequence'); % Title plot
