clc;
A=[4.63 -1.21 3.22; -3.07 5.48 2.11; 1.26 3.11 4.57]
B=[2.22; -3.17; 5.11]
tol=0.001;
err=inf;
x=zeros(1,size(A,1));
itr=0;

while all(err>tol)
    x_old=x;
   for i=1:size(A,1)
       sum=0;
    for j=1:i-1
       sum=sum+ A(i,j)*x(j);
    end
    for j=i+1:size(A,1)
        sum=sum+ A(i,j)*x_old(j);
    end
    x(i)=(1/A(i,i))*(B(i)-sum);
   end
   itr=itr+1;
   err=abs(x_old-x);
end
itr
disp(x)