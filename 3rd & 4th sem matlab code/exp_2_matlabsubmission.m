clc;
clear all;
close all;
x=[-10:10];
y=zeros(1,21);
n=length(x);
for i=1:n
    if (x(i)-2>=0)
        y(i)=1;
    else
        y(i)=0;
    end
end
subplot(2,1,1)
stem(x,y)
xlabel('x')
ylabel('y')
title(' discrete unit step signal vaneet')

t=-10:1:10;
unitstep=t>0;
r=ones(1,21);

rr=2*r;
ramp= t.*rr
ramp=max(0,ramp)
subplot(2,1,2)
stem(t,ramp);
title(' dicrete ramp signal vaneet')
