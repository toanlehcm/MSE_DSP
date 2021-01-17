%P0201a: x1(n) = 3*delta(n+2) + 2*delta(n) - delta(n-3) + 5*delta(n-7), -5 <= n <= 15
clc;

x1 = 3*impseq(-2,-5,15) + 2*impseq(0,-5,15) - impseq(3,-5,15) + 5*impseq(7,-5,15);
n1 = [-5:15];
Hs = stem(n1,x1,'filled'); 
set(Hs,'markersize',2);
axis([min(n1)-1, max(n1)+1, min(x1)-1, max(x1)+1]);
xlabel('n'); 
ylabel('x_1(n)');
title('Sequence x_1(n)');