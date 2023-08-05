clc;
clear all;
t=-10:1:10;
unitstep1=t>=0; %here change the value 0 to shift the signal
unitstep2=t>=10;
unitstep=unitstep1-unitstep2
subplot(2,2,1)%for plot in one figure many graph

stem(t,unitstep)
title('signal')
subplot(2,2,2)
stem(t,flip(unitstep))
title('reverse signal')
xodd=(unitstep-flip(unitstep))/2;
subplot(2,2,3)%for plot graph in another figure
stem(t,xodd);
title('odd signal')

xeven=(unitstep+flip(unitstep))/2;
subplot(2,2,4)
stem(t,xeven)
title('even signal')

figure 
x=flip(unitstep);
plot(t,x)
    
