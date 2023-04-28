clear; clc; close all;

filename = 'sw20Hz.wav';
[in, Fs] = audioread(filename);

Ts = 1/Fs;

out1 = in;

N = length(in);
out2 = zeros(N,1);

for n = 1:N
  out2(n, 1) = in(n, 1) + 1;
end

out3 = in - 0.5;

figure;
t = [0:N-1]*Ts; t=t(:);

plot(t, out1, t, out2, t, out3);
xlabel('Time (sec.)');
ylabel('Amplitude');
legend('out1 = in', 'out2 = in+1', 'out3 = in - 0.5');

figure;

plot(in, out1, in, out2, in, out3);
xlabel('Input Amplitude');
ylabel('Output Amplitude');
legend('out1 = in', 'out2=in+1', 'out3=in-0.5');

ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
