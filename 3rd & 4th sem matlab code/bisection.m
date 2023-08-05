format long
clc
f=@(x) (x^(2)-3);
a=input('enter value of a= ');
b=input('enter value of b= ');

E=input('enter value of E= ');
N=(log(b-a)-log(E))/log(2) ;
N=ceil(N);

for i=1:N
    c=(a+b)/2;
    if f(a)*f(c)<0
        a=a;
        b=c;
    else
        b=b;
        a=c;
    end
end
fprintf(' Root= %f and iteration= %f',c, N);    
