%P0201f: x6(n) = 2 sin(0.01*pi*n) cos(0.5*pi*n), -200 <= n <= 200.
clc;

n6 = [-200:200]; 
x6 = 2*sin(0.01*pi*n6).*cos(0.5*pi*n6);
Hs = stem(n6, x6, 'filled'); 
set(Hs,'markersize',2);
axis([min(n6)-10, max(n6)+10, min(x6)-1, max(x6)+1]);
xlabel('n'); 
ylabel('x_6(n)');
title('Sequence x_6(n)');