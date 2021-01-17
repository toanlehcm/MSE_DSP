%P4_1_5
clc;

%z-domain
b = [1 -3];
a = [1 -9 27 -27];
[delta, n] = impseq(0,0,10);%n0  = 0
xb1 = filter(b,a,delta); 

%discrete-time domain
[u,n1] = stepseq(0,0,10);
xb2 = ((n1+1).*(3.^n1)).*u;

figure('visible','off');
error = max(abs(xb1-xb2));