clear all;
close all;
clc;
%Encoding
n = 15; 
k = 11; 
data = randi( [0 1],k,1);
encData = encode (data, n, k, 'hamming/binary');
encData (4) = ~encData (4);
numerr = 0