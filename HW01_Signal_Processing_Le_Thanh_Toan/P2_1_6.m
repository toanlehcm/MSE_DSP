% Problem 2.1 - Question 6.
% x4(n) = e^{0.1n} [u(N+20) - u(n-10)];

n6 = [-200:200];
%sin la 2 vector, cos la 1 vector -> nhan vector
x6 = 2*sin(0.01*pi*n6).*cos(0.5*pi*n6);

Hf_1 = figure; set(Hf_1, 'NumberTitle', 'off', 'name', 'problem 2 - question 6');
Hs = stem(n6, x6, 'filled'); set(Hs, 'makersize', 3);
axis([min(n6) - 1], max(n6) + 1, min(x6) -1, max(x6) + 1); % lay truoc do 10 mau, sau do 10 mau
xlabel('n', 'Fontsize', 10); ylabel('x6(n)', 'Fontsize', 10);
title('Sequence x6(n)', 'Fontsize', 15);
ntick = [n6(1):20:n6(end)];
set(gca, 'XtickMode', 'manual', 'Xtick', ntick);
%nx: 
% 401 mau, doi xung, tuan hoang, chu ky la 0.5*200=40, hàm ch?ng vì n=50
% doi xung voi n=-50.