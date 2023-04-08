wm=.5*pi;
res=0.01;
fs=1;
sam=floor(1/(fs*res));
t=0:res:10-res;
m=sin(wm*t);
allT=[0.05, 0.1, 0.2, 0.3, 0.4, 0.5];
f=(1/res)*([0:1/(length(t)-1):1]-0.5);
figure
subplot(1,1,1); plot(t,m);
title(['sampling frequency=' num2str(fs) 'Hz']);
xlabel('Time(s)');
ylabel('Magnitude');
 
advance=33;
for k=1:6;
    T=allT(k);
    durInSam=floor(T/res);
    sm=zeros(size(t));
    
    for i=0:floor(length(t)/sam)-1, sm(advance+(i*sam)+1:advance+(i*sam)+durInSam)=m(i*sam+1+advance);
    end
    y=fftshift(abs(fft(sm)));
    
    figure
    subplot(2,1,1);
    plot(t,m,'-.');
    hold on;
    plot(t,sm);
    axis([0 10 -1.2 1.2]);
    xlabel('Time(s)');
    ylabel('Magnitude');
    legend('signal', 'PAM-signal');
    title(['T= ' num2str(T) 's']);
    subplot(2,1,2);
    plot(f,y);
    xlabel('Frequency(Hz)');
    ylabel('Magnitude');
end
