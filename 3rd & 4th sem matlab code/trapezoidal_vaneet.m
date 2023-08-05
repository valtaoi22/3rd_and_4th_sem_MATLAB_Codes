clear;
clc;
f=@(x)(1/(1-x^2));
a=-1;
b=1;
n=4;

h=(b-a)/n;
sum1=f(a)+f(b);
sum2=0;
for i=1:n-1
    sum2=sum2 + f(a+i*h);
end
sum= h*(sum1 + 2*sum2)/2