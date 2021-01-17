function [xe, xo, n] = evenold (x,n)
%
if (any (imag(x)~= 0))
    error('x is not real sequence')
end

m = -fliplr (n);
m1 = min([m,n]); m2 = max([m,n]);
m = m1:m2;
nm = n(1) - m(1);
n1 = 1:length(n); x1 = zeros(1, length(m));
x1(n1 + nm) = x; x = x1;
xe = 0.5 * (x + fliplr(x));
xo = 0.5 * (x - fliplr(x));
%original x sequence x(n)
subplot(2,2,1); stem(m, x); title('x sequence');
xlabel('n'); ylabel('x(n)');

%flipped x sequence x(-n) dao truc doi xung cua truc
subplot(2,2,2); stem(m, fliplr(x)); title('fliplr sequence');
xlabel('n'); ylabel('xe(n)');

%even x sequence x(n)
subplot(2,2,3); stem(m, xe); title('x even sequence');
xlabel('n'); ylabel('xe(n)');

%odd x sequence x(n)//m la chuoi goc
subplot(2,2,4); stem(m, xo); title('x odd sequence');
xlabel('n'); ylabel('xo(n)');