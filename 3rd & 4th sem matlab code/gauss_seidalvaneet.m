clc;
clear;
A=[4 1 -1;2 3 1;1 1 -2];
B=[7;4;2];
tol=0.001;
n=3;
x=[0 0 0];

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
        x(i)= (B(i)-sum)/ A(i,i);
    end
    err= abs(x-x_old);
end
disp(x)