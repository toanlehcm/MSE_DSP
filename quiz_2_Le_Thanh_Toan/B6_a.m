% Bai 6: a. x(n) = -2u(n + 1) - 3?(2-n)
clc;

b = [-2 0 3 3]; a = [1 1 0 0];
[delta,n1] = impseq(0,0,9); 
xb1 = filter(b,a,delta);
[u,n2] = stepseq(0,0,9);
xb2 = (((n2-3).*((1/4).^(n2-2))).*cos((pi/2)*(n2-1))).*u;
error = max(abs(xb1-xb2));
Hf_1 = figure; 
set(Hf_1,'NumberTitle','off','Name','B6.a');
[Hz,Hp,Hl] = zplane(b,a); 
set(Hz,'linewidth',1); 
set(Hp,'linewidth',1);
title('B6_a'); 