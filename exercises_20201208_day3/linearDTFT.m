%function [x, n] = dtft(x1, x2)
x1 = rand(1, 11); 
x2 = rand(1, 11);
n = 0:10;
alpha = 2;
beta = 3; 
k = 0:500;
w = (pi/500)*k;

%calculate DTFT of x1 and x2
X1 = x1 * (exp(-j*pi/500)).^(n'*k); %DTFT of x1
X2 = x2 * (exp(-j*pi/500)).^(n'*k); %DTFT of x2
X_check = alpha*X1 + beta*X2;

%calculate x as alpha*x1 + beta*x2
x = alpha*x1 + beta*x2;
X = x *(exp(-j*pi/500)).^(n'*k); % DTFT of x

subplot(1,2,1);
plot(w/pi, abs(X_check));
grid;
axis([-1 1 0 5]);
xlabel('frequency in pi units');
ylabel('alpha*F(x1) + beta*F(x2)');

subplot(1,2,2);
plot(w/pi, abs(X_check));
grid;
axis([-1 1 0 5]);
xlabel('frequency in pi units');
ylabel('alpha*x1 + beta*x2');
error = max(abs(X-X_check))