clc;
clear;
f=@(x)((cos(x))^2);
a=-0.25;
b=0.25;
n=4;
h=(b-a)/n;
sum1= f(a) + f(b);
sum2=0;
w=4;
for i=1:n-1
    sum2= sum2+ w*f(a+i*h);
    w=(6-w);
end;
sum= h*(sum1+sum2)/3