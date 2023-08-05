clc;
clear all
syms n z
x(n)= 0.5^n+(2)^n;
ztrans(x, n, z) 
a=[2 -5/2 0];
b=[1 -5/2 1];
zplane(a,b)
title('POLES AND ZEROS Vaneet Singla 102015136');