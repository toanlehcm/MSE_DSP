% P0201c: x3(n) = 10u(n) - 5u(n - 5) + 10u(n - 10) + 5u(n - 15).
clc;

x3 = 10*stepseq(0,0,20) - 5*stepseq(5,0,20) - 10*stepseq(10,0,20) + 5*stepseq(15,0,20);
n3 = [0:20];
Hs = stem(n3, x3, 'filled'); 
set(Hs,'markersize',2);
axis([min(n3)-1, max(n3)+1, min(x3)-1, max(x3)+2]);
ytick = [-6:2:12];
xlabel('n'); 
ylabel('x_3(n)');
title('Sequence x_3(n)');