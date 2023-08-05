clc
clear all
zeros=[1 0];
poles=[1 -0.9];
subplot(2,2,1)
zplane(zeros,poles)
title('Z TRANSFORM Vaneet Singla 102015136 ');
w=-4*pi:0.01:4*pi;
X=freqz(zeros,poles,w)
Mag=abs(X)
subplot(2,2,2)
plot(w/pi,Mag)
xlabel('normalised frequency')
ylabel('magnitude')
title('Mangnitude Spectrum Vaneet Singla 102015136')
phase=angle(X)
subplot(2,2,3)
plot(w/pi,phase)
xlabel('Normalised Frequency')
ylabel('phase in pi units')
title('PHASE PLOT Vaneet Singla 102015136');