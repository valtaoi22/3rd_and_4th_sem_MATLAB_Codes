clc;
x0=input('Enter initial approximation x0:');
E=input('Enter tolerance value e:');
N=input('Enter the max number of iterations:');
i=1;
g=@(x)((7/22)*(asin(-1*x/2) + 44/7));
while(i<=N)
    x1=g(x0);
    if(abs(x1-x0)<=E)
        fprintf('Solution accurate to within 10^-2 is %f',x1);
        break;
    else
        i=i+1;
        x0=x1;
    end
end