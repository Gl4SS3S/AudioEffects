clear; clc; close all;

in = [-1:.1:1];

out1 = in;

N = length(in);
out2 = 2*in;

out3 = 3*in;

plot(in, out1, in, out2, in, out3);
xlabel('Input Amplitude');
ylabel('Output Amplitude');
legend('out1 = in', 'out2 = 2*in', 'out3 = 3*in');

ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
