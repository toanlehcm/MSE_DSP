function [y, ny] = conv_m(x, nx, h, nh)
nyb = nx(1) + nh(1); 
nye = nx(length(x)) + nh(length(h));
ny = [nyb:nye];
y = conv(x, h);

%seq x(n)
subplot(2,2,1); Hs = stem(nx, x); title('x(n)');
set(Hs,'linewidth',1.5);
xlabel('n'); ylabel('x(n)');

%seq h(n)
subplot(2,2,2); Hs = stem(nh, h); title('h(n)');
set(Hs,'linewidth',1.5);
xlabel('n'); ylabel('h(n)');

% sequence y(n)
subplot(2,2,3); Hs = stem(ny, y); title('y(n)');
xlabel('n'); ylabel('y(n)');