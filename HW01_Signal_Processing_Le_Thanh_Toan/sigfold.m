function [y,n] = sigfold(x,n)
% implements y(n) = x(-n)
% -----------------------
% [y,n] = sigfold(x,n)
%
y = fliplr(x); n = -fliplr(n); %hàm fliplright
%Hs = stem(n,y,'b','filled'); % Stem-plot with handle Hs
%set(Hs,'markersize',4); % Change circle size
%xlabel('n'); ylabel('y(n)'); % Label axis
%title('Folded Sequence'); % Title plot
