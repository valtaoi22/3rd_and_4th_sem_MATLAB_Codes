clc;
f=@(x) (x^(3)+4*x^(2)-10);
h=input('enter value of h= ');
N=input('enter value of N= ');

for i=-N:h:N
    if f(i)*f(i+h)<0
        a=i;
        b=i+h;
    end
end
fprintf('sub-interval %f %f',a,b);;