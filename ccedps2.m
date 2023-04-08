clc;
close all;
clear all;
n=-11:1:11; %value of n
for k=1:23 % using for loop
if (n(k)==0) % if statement
y(k)=1
else % else statement
y(k)=0
end
end
stem(n,y)