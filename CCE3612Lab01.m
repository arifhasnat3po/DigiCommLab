clc;
clear all;
close all;

t1=0:0.1:25;
f=150;
fs1=350;
fs2=830;
fs3=1600;
X=sin(2*pi*f*t1/f);
subplot(4,1,1)
plot(t1,X,'red');
xlabel('Time');
ylabel('Amplitude');
title('Continuous sine wave');
 
Y=sin(2*pi*f*t1/fs1);
subplot(4,1,2)
stem(t1,Y,'green');
xlabel('Time');
ylabel('Amplitude');
title('Sine wave smapled at 350');
Y=sin(2*pi*f*t1/fs2);
subplot(4,1,3)
stem(t1,Y,'black');
xlabel('Time');
ylabel('Amplitude');
title('Sine wave smapled at 830');
Y=sin(2*pi*f*t1/fs3);
subplot(4,1,4)
stem(t1,Y);
xlabel('Time');
ylabel('Amplitude');
title('Sine wave smapled at 1600');