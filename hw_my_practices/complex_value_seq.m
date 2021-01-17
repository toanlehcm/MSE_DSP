function[x,n] = comlex_value_seq(sigma, omega0, n1, n2)
clc;

n = (n1:n2);
x = exp((sigma + li * omega0).^n);
Hs = stem(n, x, 'm', 'filled');
set(Hs, 'markersize', 4);
