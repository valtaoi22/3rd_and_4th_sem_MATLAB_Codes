clc;
clear all;
t=-20:1:20;
unitstep1=t>=0; %here change the value 0 to shift the signal
unitstep2=t>=10;
unitstep=unitstep1-unitstep2
%subplot(2,2,1);%for plot in one figure many graph
%plot(t,unitstep)
%subplot(2,2,2);
%plot(t,flip(unitstep))

xodd=(unitstep-flip(unitstep))/2;
figure %for plot graph in another figure
stem(t,xodd);
xeven=(unitstep+flip(unitstep))/2;
figure
stem(t,xeven)


