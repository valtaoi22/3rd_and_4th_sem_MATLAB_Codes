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
stem(x,y)
xlabel('x')
ylabel('y')
title('unit step func. vaneet')


        
        