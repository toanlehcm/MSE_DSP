% P2.6.1: % Even odd decomposition of x1(n) = [0 1 2 3 4 5 6 7 8 9];
% n = 0:9;
clc;

x1 = [0 1 2 3 4 5 6 7 8 9]; 
n1 = (0:9); 
[xe1,xo1,m1] = evenodd(x1,n1);

subplot(2,1,1); 
Hs = stem(m1,xe1); set(Hs,'markersize',2);
axis([min(m1)-1,max(m1)+1,min(xe1)-1,max(xe1)+1]);
xlabel('n'); 
ylabel('x_e(n)');
title('Even part of x_1(n)');

subplot(2,2,1); 
Hs = stem(m1,xo1); set(Hs,'markersize',2);
axis([min(m1)-1,max(m1)+1,min(xo1)-2,max(xo1)+2]);
xlabel('n'); 
ylabel('x_o(n)');
title('Odd part of x_1(n)');