clc;
clear all;
close all;

t=-5:0.01:5;
rect1=t>=0;
rect2=t>=1;
x=rect1-rect2;

subplot(2,1,1);
plot(t,x)
title('Rectangular pulse Vaneet Singla 102015136')


s=1;
for f=-5:0.01:5
    y(s)=trapz(t,(x.*exp(-j*2*pi*f*t)));
    s=s+1;
end

f=-5:0.01:5;
subplot(2,1,2)
plot(f,y)
title('CTFT Vaneet Singla 102015136')
