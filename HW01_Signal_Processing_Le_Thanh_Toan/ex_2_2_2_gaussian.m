% P2.2.2: x2(n) = gaussian{10,10}
clc;

n2 = [1:10000]; 
x2 = 10 + sqrt(10)*randn(1,10000);
[h2,x2out] = hist(x2,100); 
bar(x2out,h2);
xlabel('interval');
ylabel('number of elements');
title('Histogram of sequence x_2(n) in 100 bins');
% nhan vector thi .*stepseq