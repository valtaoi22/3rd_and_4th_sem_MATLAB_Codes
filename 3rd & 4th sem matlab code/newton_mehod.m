clc;
f=@(x)9*exp(-x)*sin(2*pi*x)-3.5;
f1=@(x) -9*exp(-x)*sin(2*pi*x)+18*pi*exp(-x)*cos(2*pi*x);
e=input('Enter accuracy value e=');
N=input('Enter value of max number of iterations=');
h=input('enter value of h=' );
for i= -N:h:N
    if(f(i)*f(i+h)<0)
        x0=-(i);
        x1=-(i+h);
        break
    end
end

while(i<=N)
    x1=(x0)-((f(x0))/f1(x0));
    if(abs(x1-x0)<=e)
        fprintf('value of x1=%f and iteration taken=%d',x1,i);
        flag=1;
        break;
    else
        x0=x1;
        i=i+1;
    end
end
