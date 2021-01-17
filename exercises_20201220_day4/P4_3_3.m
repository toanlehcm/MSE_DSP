% P4_3_3
clc;

%determine in z-domain
b = [0 0.866 0.0306 -2.486 3.2094 -1.62 0.81];
a = [1 -2.9 4.8 -4.7 2.8 -0.9];
[delta,n1] = impseq(0,0,10);
xb1 = filter(b,a,delta);

%determine in discrete-time domain
[u2, n2] = stepseq(0,0,10); %u(n)
[u3, n3] = stepseq(2,0,10); %u(n-2)
xb2 = (n2.*sin(pi/3*n2)).*u2 + ((0.9).^n3).*u3;

error = max(abs(xb1-xb2));
%draw pole-zero plot
Hf_1 = figure; 
set(Hf_1, 'NumberTitle', 'off', 'Name', 'P4.3.3');
[Hz, Hp, H1] = zplane(b,a); 
set(Hz,'linewidth', 1.5);
set(Hp, 'linewidth', 1.5);
title('Pole-Zero plot', 'FontSize', 15);