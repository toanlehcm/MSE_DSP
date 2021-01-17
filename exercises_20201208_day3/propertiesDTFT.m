x = rand(1, 11); n = 0:10;
k = 0:500; w = (pi/500)*k;
X = x * (exp(-j*pi/500)).^(n'*k);

y = x; m = n+2;
Y = y * (exp(-j*pi/500)).^(m'*k);

Y_check = (exp(-j*2).^w).*X;
error = max(abs(Y-Y_check))

subplot(1,2,1); plot(w/pi, abs(X_check)); 
grid; axis([-1 1 0 5]);
xlabel('frequency in pi units');
ylabel('alpha*F(x1) + beta*F(x2)');

subplot(1,2,2); plot(w/pi, abs(X_check));
grid; axis([-1 1 0 5]);
xlabel('frequency in pi units');
ylabel('alpha*x1 + beta*x2');
error = max(abs(X-X_check))