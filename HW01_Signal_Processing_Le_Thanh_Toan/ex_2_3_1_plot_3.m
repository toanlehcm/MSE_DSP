% P2.3.2: x2 = e ^ {0.1n} [u(n) - u(n-20)] periodic. 3 periods
clc;

n2 = [0:21]; 
x2 = exp(0.1*n2).*(stepseq(0,0,21)-stepseq(20,0,21));
x2 = x2'*ones(1,3); 
x2 = (x2(:))'; 
n2 = [-22:43];
Hs = stem(n2,x2,'filled'); set(Hs,'markersize',2);
axis([min(n2)-2,max(n2)+4,min(x2)-1,max(x2)+1]);
xlabel('n'); 
ylabel('x_2(n)');
title('Sequence x_2(n)');