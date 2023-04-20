clear; clc;

filename = 'sw20Hz.wav';
[sw, Fs] = audioread(filename);

Ts = 1 /Fs;

N = length(sw);

t = [0: N - 1] * Ts; t = t(:);

y = -1 * sw;

plot(t, sw, t, y);
