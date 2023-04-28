clear;clc;

[x] = audioread('sw20Hz.wav');
N = length(x);

sigSquared = x.^2;

sigMeanSquared = (1/N) * sum(sigSquared);

sigRootMeanSquared = sqrt(sigMeanSquared);
