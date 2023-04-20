[x, Fs] = audioread('sw20Hz.wav');

x2 = dbAmpChange(x, 6);

x3 = dbAmpChange(x, -6);

plot(t, x, '.', t, x2, t, x3, '--');
