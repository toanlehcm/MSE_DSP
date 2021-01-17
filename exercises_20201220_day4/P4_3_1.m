% P 4.3.1
clc;

%determine in z-domain
b = [0 0 2 1]; a = [1 -1]; %b?c 3,
% da thuc tu lon hon da thuc mau nen tinh residuez truoc khi tra ve
[R,p,C] = residuez(b,a);

[delta, n1] = impseq(0, 0 ,10);%tai sao lay 0 0 10
xb1 = filter(b, a, delta);

%determine in descrete-time domain
[u, n2] = stepseq(0,0,10);
xb2 = 2*impseq(2,0,10) + 3*stepseq(3,0,10);

error = max(abs(xb1-xb2));

%draw pole-zero plot
Hf_1 = figure;
set(Hf_1, 'NumberTitle', 'off', 'Name', 'P4.3.1');
[Hz, Hp, H1] = zplane(b,a); 
set(Hz,'linewidth', 1.5);
set(Hp, 'linewidth', 1.5);
title('Pole-Zero plot', 'FontSize', 15);