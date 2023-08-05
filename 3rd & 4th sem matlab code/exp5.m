clc;
clear all;
close all;
n=-10:1:10;
u1=n>=0;
u2=n>=6;
xn=u1-u2;
hn=xn;

l=length(xn);
m=length(hn);
xn=[xn,zeros(1,l+m-1)];
hn=[hn,zeros(1,l+m-1)];
y=zeros(1,l+m-1);
for i=1:l+m-1
    sum=0;
    for j=1:i
        sum = sum + (xn(j)*hn(i-j+1));
    end
    y(i)=sum;
end
y