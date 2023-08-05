clc;
n=8;
x=[0,(2*pi)/7,(4*pi)/7,(6*pi)/7,(8*pi)/7,(10*pi)/7,(12*pi)/7,2*pi];
y=[0,(sin(2*pi/7))^2,(sin(4*pi/7))^2,(sin(6*pi/7))^2,(sin(8*pi/7))^2 (sin(10*pi/7))^2 (sin(12*pi/7))^2 0];
xb=5.5;
sum=0;
for i=1:n
    l(i)=1;
    for j=1:n
    if i~=j
        l(i)= ((xb-x(j))/(x(i)-x(j)))*l(i);
    end
    end
    sum=sum+l(i)*y(i);
end

sum

             
