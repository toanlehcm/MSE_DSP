function[x,n] = complex_val(sigma, omega0, n1, n2)
n = (n1:n2); 
x = exp((sigma + 1i * omega0).^n);
Hs = stem(n, x, 'm', 'filled');
set(Hs, 'markersize', 4);
xlabel('n');
ylabel('x(n)');
title('demo');
end