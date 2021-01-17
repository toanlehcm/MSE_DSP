% P2.3.1: x1(n) = {...,-2,-1,0,1,2,-2,-1,0,1,2...} periodic. 5 periods
clc;

n1 = [-12:12]; 
x1 = [-2,-1,0,1,2];

x1 = x1'*ones(1,5); 
x1 = (x1(:))';
Hs = stem(n1,x1,'filled'); set(Hs,'markersize',2);
axis([min(n1)-1,max(n1)+1,min(x1)-1,max(x1)+1]);
xlabel('n'); 
ylabel('x_1(n)');
title('Sequence x_1(n)');