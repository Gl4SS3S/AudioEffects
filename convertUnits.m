clear; clc;

filename = 'sw20Hz.wav';

[x, Fs] = audioread(filename);

Ts = 1/Fs;
N = length(x);

for n = 1:N
  t = (n-1) * Ts;
end


t = [0:N-1]*Ts

t = t(:);
