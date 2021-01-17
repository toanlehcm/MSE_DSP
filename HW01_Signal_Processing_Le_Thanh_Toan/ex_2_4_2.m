% P2.4.2: x(n) = [2,4,-3,1,-5,4,7]; -3 <=n <= 3;
% x2(n) = 4x(4 + n) + 5x(n + 5) + 2x(n)
clc;

n = [-3:3]; 
x = [2,4,-3,1,-5,4,7];
[x21,n21] = sigshift(x,n,-4); % shift by -4
[x22,n22] = sigshift(x,n,-5); % shift by -5
[x23,n23] = sigadd(4*x21,n21,5*x22,n22); % add two sequences
[x2,n2] = sigadd(x23,n23,2*x,n); % add two sequences
Hs = stem(n2,x2,'filled'); set(Hs,'markersize',2);
axis([min(n2)-1,max(n2)+1,min(x2)-4,max(x2)+6]);
xlabel('n'); 
ylabel('x_2(n)');
title('Sequence x_2(n)');