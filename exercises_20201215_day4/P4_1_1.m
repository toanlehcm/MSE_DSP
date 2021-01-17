%P4.1 - Q1
clc;

[delta, n] = impseq(0,0,4);

%left-side consequence
b1 = [0 2 3]; a1 = [1];
xb1 = filter(b1, a1, delta);
xb1 = fliplr(xb1); 
n1 = -fliplr(n);

%right-side consequence
b2 = [1 -2 -3]; a2 = [1];
xb2 = filter(b2, a2, delta);
n2 = n;

[xa1, na1] = sigadd(xb1, n1, xb2, n2); %determine in descrete-time domain
xa2 = [0 0 3 2 1 -2 -3 0 0]; %determine z-domain
error = max(abs(xa1 - xa2));