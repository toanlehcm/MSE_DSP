% P0201e: x5(n) = 5[cos(0.49*pi*n) + cos(0.51*pi*n)], -200 <= n <= 200.
clc;

n5 = [-200:200]; 
x5 = 5*(cos(0.49*pi*n5) + cos(0.51*pi*n5));
Hs = stem(n5,x5,'filled'); 
set(Hs,'markersize',2);
axis([min(n5)-10, max(n5)+10, min(x5)-2, max(x5)+2]);
xlabel('n'); 
ylabel('x_5(n)');
title('Sequence x_5(n)');