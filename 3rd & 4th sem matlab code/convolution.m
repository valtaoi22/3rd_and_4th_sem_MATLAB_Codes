clc;
clear all;
close all;
n=-10:1:10;
for i=1:length(n)
    if (n(i)==0)
        xn(i)=1;
    elseif(n(i)==1)
        xn(i)=2;
    else 
        xn(i)=0;
    end
end
for i=1:length(n)
    if (n(i)==0)
        hn(i)=1;
    elseif(n(i)==1)
        hn(i)=2;
    elseif(n(i)==2)
        hn(i)=3;
    else 
        hn(i)=0;
    end
end
% xn=[1,2];
% hn=[1,2,3];
l=length(xn);
m=length(hn);
xn=[xn,zeros(1,l+m-1)]
hn=[hn,zeros(1,l+m-1)]
y=zeros(1,l+m-1);
for i=1:l+m-1
    sum=0;
    for j=1:i
        sum = sum + (xn(j)*hn(i-j+1));
    end
    y(i)=sum;
end
c=-20:1:20;
stem(c,y)
xticks(-20:1:20)
