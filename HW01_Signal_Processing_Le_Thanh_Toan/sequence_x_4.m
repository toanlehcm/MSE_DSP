% P0201d: x4(n) = e ^ {0.1n} [u(n + 20) - u(n - 10)].
clc;

n4 = [-25:15];
x4 = exp(0.1*n4).*(stepseq(-20,-25,15) - stepseq(10,-25,15));
Hs = stem(n4,x4,'filled'); 
set(Hs,'markersize',2);
axis([min(n4)-2, max(n4)+2, min(x4)-1, max(x4)+1]);
xlabel('n'); 
ylabel('x_4(n)');
title('Sequence x_4(n)'); 