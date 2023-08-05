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

l=length(xn);
m=length(hn);
xn=[xn,zeros(1,l+m-1)];
hn=[hn,zeros(1,l+m-1)];
y=zeros(1,l+m-1);
for i=1:l+m-1
    sum=0;
    for j=1:i
        sum=sum+(xn(j)*hn(i-j+1));
    end
    y(i)=sum;
end

 %y=conv(xn,hn)
min=min(n)+min(n);
max=max(n)+max(n);
c=min:1:max;
stem(c,y)
axis([-5 5 0 8])
xticks(-20:1:20)
xlabel('N')
ylabel('Y(n)')
title('Y(n) conv Vaneet Singla 102015136');


