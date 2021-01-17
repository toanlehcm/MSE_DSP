% P0201g: x7(n) = e ^ {-0.05*n}*sin(0.1*pi*n + pi/3), 0 <= n <=100.
clc;
n7 = [0:100]; 
x7 = exp(-0.05*n7).*sin(0.1*pi*n7 + pi/3);
Hs = stem(n7, x7, 'filled'); 
set(Hs,'markersize',2);
axis([min(n7)-5,max(n7)+5,min(x7)-1,max(x7)+1]);
xlabel('n'); 
ylabel('x_7(n)');
title('Sequence x_7(n)');