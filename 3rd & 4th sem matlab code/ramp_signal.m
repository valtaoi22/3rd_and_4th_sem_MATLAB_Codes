clc;
clear all;
t=-10:1:10;
unitstep=t>0;
r=ones(1,21);
rr=2*r;
ramp= t.*rr
ramp=max(0,ramp)
plot(t,ramp);
