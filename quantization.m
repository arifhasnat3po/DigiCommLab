%Quantization
clear all:
close all;
clc;
t = [0: .1:2*pi]; %Times at which to sample the sine function
sig = sin (t);  %Original signal, a sine wave
partition = [-1: .2:1]; 
codebook = [-1.2:.2:1]; 
[index, quants] = quantiz (sig, partition, codebook); %Quantize
plot (t, sig, 'x', t, quants,'. ');
legend('original signal', 'Quantized signal');
axis ([-.2 7 -1.2 1.2])