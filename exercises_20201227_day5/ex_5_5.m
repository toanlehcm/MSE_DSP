% example 5.5
clc;

N = 10; k = 0:1:N-1; % sample index
wk = 2*pi*k/N; zk = exp(j*wk); % samples of z
Xk = (zk)./(zk-0.7); % DFS as samples of X(z)
xn = real(idfs(Xk,N)); % IDFS
xtilde = xn'* ones(1,8); xtilde = (xtilde(:))'; % Periodic sequence
subplot(2,2,1); stem(0:39,xtilde);axis([0,40,-0.1,1.5])
xlabel('n'); ylabel('xtilde(n)'); title('N=5')