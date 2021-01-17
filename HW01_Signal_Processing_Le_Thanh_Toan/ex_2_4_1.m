% P2.4.1: x(n) = [2,4,-3,1,-5,4,7]; -3 <=n <= 3;
% x1(n) = 2x(n - 3) + 3x(n + 4) - x(n)
clc;

n = [-3:3]; 
x = [2,4,-3,1,-5,4,7];
[x11,n11] = sigshift(x,n,3); % shift by 3
[x12,n12] = sigshift(x,n,-4); % shift by -4
[x13,n13] = sigadd(2*x11,n11,3*x12,n12); % add two sequences
[x1,n1] = sigadd(x13,n13,-x,n); % add two sequences
Hs = stem(n1,x1,'filled'); set(Hs,'markersize',2);
axis([min(n1)-1,max(n1)+1,min(x1)-3,max(x1)+1]);
xlabel('n');
ylabel('x_1(n)');
title('Sequence x_1(n)'); 
ntick = n1;