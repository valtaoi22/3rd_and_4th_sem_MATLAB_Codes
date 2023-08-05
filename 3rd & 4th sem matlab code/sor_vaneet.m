clear;
clc;
A=[4.63 -1.21 3.22; -3.07 5.48 2.11; 1.26 3.11 4.57];
B=[2.22; -3.17; 5.11];
tol=0.001;
n=3;
x=[0 0 0];
w=1.25;
err = Inf;
while all(err > tol)
  x_old=x;
   for i=1:n
        sum=0;
        for j=1:i-1
            sum=sum+ A(i,j)*x(j);
        end
        for j=i+1:n
            sum= sum + A(i,j)*x_old(j);
        end
        x(i)= (1-w)*x_old(i)+(w*(B(i)-sum))/ A(i,i);
    end
    err= abs(x-x_old);
end
disp(x)
