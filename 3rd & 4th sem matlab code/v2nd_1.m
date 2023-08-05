clc;
f=@(x) (x^2-17);
x0=input('Enter value of x0=');
e=input('Enter accuracy value e=');
N=input('Enter value of max number of iterations=');
i=1;
flag=0;
while(i<=N)
    x1=(x0)-(f(x0)/(2*x0));
    if(abs(x1-x0)<=e)
        fprintf('value of x1=%f and iteration taken=%d',x1,i);
        flag=1;
        break;
    else
        x0=x1;
        i=i+1;
    end
end
if(flag==0)
    fprintf('The method failed after N iterations,N=%f',N);
end