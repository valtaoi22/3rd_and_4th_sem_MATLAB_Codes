%This is the code for both Gauss Seidel and SOR Method
clc;
n=input('Enter number of equations, n:  ');
tol=input('Enter tolerance, tol: ');
N=input('Enter maximum number of iterations, N:  ');
w=input('Enter the relaxation parameter w (omega):  ');
a=input('Enter the matrix a: ');
b=input('Enter the matrix b: ');;
x0=zeros(1,n);
x=zeros(1,n);
k=1;
while k<=N
    for i=1:n
        sum1=0;
        for j=1:i-1
            
            sum1=sum1+a(i,j)*x(j);
        end
        sum2=0;
        for j=i+1:n
            sum2=sum2+a(i,j)*x0(j);
        end
        x(i)=(1-w)*x0(i)+w*(-sum1-sum2+b(i))/a(i,i);
    end
    if max(abs(x-x0))<tol
        break;
    end
    x0=x;
    k=k+1;
end
x
k