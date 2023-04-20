clear; clc;

filename = 'sw20Hz.wav';

[x, Fs] = audioread(filename);

N = length(x);

y = zeros(N, 1);

for n = 1: N
  y(n, 1) = x(n, 1);
end
