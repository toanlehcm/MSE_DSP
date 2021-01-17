function [X] = dtft(x, n, w)
% computet descrte-time Fourier transform
% [X] = dtft(x, n, w)
% x = DTFT values computed at w frequencies
% n = samle position row vector
% w = frequency row vector
X = x * exp(-j*n*w); %tai moi tan so tinh n mau