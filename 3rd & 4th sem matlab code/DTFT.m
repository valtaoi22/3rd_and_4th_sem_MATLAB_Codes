clc;
clear all;
close all;

n=-5:1:5;
u1=n>=-3;
u2=n>3;
rect=u1-u2;
subplot(2,2,1)
stem(n,rect)
title('Rectangular pulse Vaneet 102015136')
%for-5*pi to 5*pi
s=1;
for w=-5*pi:0.01:5*pi
    y(s)=sum(rect.*exp(-j*w*n));     %formula dtft
    s=s+1;                            %update for y
end

subplot(2,2,2)
w=-5*pi:0.01:5*pi;
plot(w,y) 
xlabel('frequency')
ylabel('Amplitude')
title('DTFT Vaneet Singla 102015136')

%for-pi to pi
s=1;
for w=-pi:0.01:pi
    y1(s)=sum(rect.*exp(-j*w*n));
    s=s+1;
end

subplot(2,2,3)
w=-pi:0.01:pi;
plot(w,y1)
xlabel('frequency')
ylabel('Amplitude')
title('DTFT for one period')