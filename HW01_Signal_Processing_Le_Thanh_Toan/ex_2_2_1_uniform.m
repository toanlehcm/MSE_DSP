% P2.2.1: x1(n) = uniform[0,2]
clc;

n1 = [0:100000-1]; 
x1 = 2*rand(1,100000);
[h1,x1out] = hist(x1,100); 
bar(x1out, h1);
axis([-0.1 2.1 0 1200]);
xlabel('interval');
ylabel('number of elements');
title('Histogram of sequence x_1(n) in 100 bins');