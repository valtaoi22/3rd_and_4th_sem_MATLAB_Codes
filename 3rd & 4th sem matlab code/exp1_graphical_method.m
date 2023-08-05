clc;
clear all;
C=[2 1];
A=[1 2;1 1;1 -1;1 -2];
B=[10; 6; 2; 1];

y1=0:1:max(B);
x21=(B(1)-A(1,1).*y1)./A(1,2);
x22=(B(2)-A(2,1).*y1)./A(2,2);
x23=(B(3)-A(3,1).*y1)./A(3,2);
x24=(B(4)-A(4,1).*y1)./A(4,2);

x21=max(0,x21);
x22=max(0,x22);
x23=max(0,x23);
x24=max(0,x24);

plot(y1,x21,'r',y1,x22,'k',y1,x23,'b',y1,x24,'m')
xlabel('value of x1')
ylabel('value of x2')
title('Vaneet Singla,102015136,2ENC6')
legend('x1+2x2=10', 'x1+x2=6', 'x1-x2=2','x1-2x2=1')

A=[1 2;1 1;1 -1;1 -2;1 0;0 1];
B=[10; 6; 2; 1; 0; 0];

sol=[];
for i=1:6
    
   A1=A(i,:);
   B1=B(i,:);
   for j=1+1:6
       A2=A(j,:);
       B2=B(j,:);
       A3=[A1;A2];
       B3=[B1;B2];
       X=A3\B3;
       sol=[sol X];
   end
end
sol=sol';
 
x1= sol(:,1);
x2= sol(:,2);
 
H1= find(x1+2*x2>10);
sol(H1,:)=[];
x1=sol(:,1);
x2=sol(:,2);
 
H2= find(x1+x2>6);
sol(H2,:)=[];
x1=sol(:,1);
x2=sol(:,2);
 
H3= find(x1-x2>2);
sol(H3,:)=[];
x1=sol(:,1);
x2=sol(:,2);
 
H4= find(x1-2*x2>1);
sol(H4,:)=[];
x1=sol(:,1);
x2=sol(:,2);
 
H5= find(x1<0);
sol(H5,:)=[];
x1=sol(:,1);
x2=sol(:,2);
 
H6= find(x2<0);
sol(H6,:)=[];
x1=sol(:,1);
x2=sol(:,2);
 
 
for i=1: size(sol(:,1))
    obj(i,:)=sum(sol(i,:).*C);
end
 
P= max(obj)
M= find(obj==P)
OS = sol(M,:)

