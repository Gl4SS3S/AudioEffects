clear; clc;

filename = 'sw20Hz.wav';
[x, Fs] = audioread(filename);

Ts = 1/Fs;

t = [0:length(x)-1]*Ts; t = t(:);

gl = 0.5;

N = length(x);
yl = zeros(N, 1);

for n = 1:N
  yl(n, 1) = gl * x(n, 1);
end


figure(1);
plot(t, x, '--', t, yl); legend('x', '0.5*x');

g2 = 0.25;

y2 = g2 * x;

figure(2);
plot(t,x,t,y2);
