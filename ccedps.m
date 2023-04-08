clc;
clear all;
close all;

n=-11:1:11; %value of n
for k=1:23 % using for loop
if (n (k)>=0) % if statement
y(k)=1
else
end
end
y(k)=0 % else statement
stem(n,y)