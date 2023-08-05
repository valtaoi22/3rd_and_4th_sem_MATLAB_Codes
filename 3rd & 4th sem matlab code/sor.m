clc;
A=[4 3 0 ; 3 4 -1;0 -1 4 ];
n= 3    ;          %no. of equation
B=[24; 30; -24];
x=[0,0,0]
tol=0.1;
w=1.25;
err=Inf;
 while all(err > tol)
     x_old=x;
     for i=1:n
         sum=0;
         for j=1:i-1
             sum=sum+ A(i,j)*x(j);
         end
         for j=i+1:n
             sum=sum+ A(i,j)*x_old(j);
         end
         x(i)=(1-w)*x_old(i)+(w*(B(i)-sum))/A(i,i);
     end
     err=abs(x-x_old);
 end
 disp(x)
 

