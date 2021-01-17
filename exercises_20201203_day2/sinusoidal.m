function [x,n] = sinusoidal(A,omega0,theta0,n1,n2)
% Generates x(n) = Acos(omega0*n + theta0); n1 <= n <= n2
% -------------------------------------------------------
% [x,n] = sinusoidal(A,omega0,theta0,n1,n2)
%
n = [n1:n2]; x = A*cos(omega0*n + theta0);
Hs = stem(n,x,'b','filled'); % Stem-plot with handle Hs
set(Hs,'markersize',4); % Change circle size
xlabel('n'); ylabel('x(n)'); % Label axis
title('Sinusoidal Sequence'); % Title plot
