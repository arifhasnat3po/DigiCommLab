a = 2;
w = 12;
t = 0:0.001:10;
y = a*sin(w*t);
plot(t,y,'red');

title('this is a fig of Y')
xlabel('Time')
ylabel('amplitude')
%legend
