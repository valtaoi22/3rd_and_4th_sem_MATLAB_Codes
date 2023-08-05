clc;
clear all;
t1=[-10:0.01:10];
n=length(t1);
a=input('a ');
for i=1:n
    if (t1(i)>=1/a && t1(i)<=2/a)
        y(i)=10*a*(t1(i)-(1)/a);
    elseif (t1(i)>=2/a && t1(i)<=3/a)
        y(i)=10;
    elseif (t1(i)>=3/a && t1(i)<=4/a)
        y(i)= -10*a*(t1(i)-(4)/a); 
    else
        y(i)=0;
    end
end

plot( t1,y)
%axis([-10 10 -2 15])
xlim([-10 10])
ylim([-2 15])
xticks(-10:2:10)
yticks(-2:2:15)