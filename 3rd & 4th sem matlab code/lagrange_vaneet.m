clear;
clc;
x=[0 8 16 24 32 40];
y=[14.621 11.843 9.870 8.418 7.305 6.413];
xb=15;
n=6;
sum=0;
for i=1:n
   
    l(i)=1;
    for j=1:n
        if i~=j
            l(i)=l(i)*((xb-x(j))/ (x(i)-x(j)));
        end
    end
    sum=sum +l(i)*y(i);
end
disp(sum)