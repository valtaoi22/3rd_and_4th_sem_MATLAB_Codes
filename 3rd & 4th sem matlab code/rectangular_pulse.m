clc;
clear all;
close all;
t=-5:0.01:5;
T=2;
rect1=t>=2;
rect2=t>=4;
rect=rect1-rect2;
plot(t,rect);
