clc;
A=[1 1;0 1;0 1;1 -1;1 0];
B=[30;3;12;0;20];
C=[2,3];
M=max(B);
x1=0:1:M;
x2=max(0,((B(1)-A(1,1)*x1)/A(1,2)));
x3=max(0,((B(2)-A(2,1)*x1)/A (2,2)));
x4=max(0,((B(3)-A(3,1)*x1)/A(3,2)));
x5=max(0,((B(4)-A(4,1)*x1)/A(4,2)));
x6=max(0,((B(5)-A(5,1)*x1)/A(5,2)));
plot(x1,x2,'b-',x1,x3,'r-',x1,x4,'c-',x1,x5,'y-',x1,x6,'g-')
xlabel('value of x1')
ylabel('value of x2')
title('Vaneet Singla,102015136,2ENC6')
legend('x1+x2=30','x2=3','x2=12','x1-x2=0','x1=20');
A=[1 1; 0 1; 0 1; 1 -1;1 0;1 0; 0 1];
B=[30;3;12;0;20;0;0];
sol=[];
for i=1:length(A) 
    A1=A(i,:);
    B1=B(i,:);
    for j=i+1:length(A)
        A2=A(j,:);
        B2=B(j,:);
        A3=[A1;A2];
        B3=[B1;B2];
        X=A3\B3;
        
        sol=[sol,X];
    end
end
sol=sol';
x1=sol(:,1);
x2=sol(:,2);
H1=find(x1+x2>30);
sol(H1,:)=[];
x1=sol(:,1);
x2=sol(:,2);
H2=find(x2<3);
sol(H2,:)=[];
x1=sol(:,1);
x2=sol(:,2);
H3=find(x2>12);
sol(H3,:)=[];
x1=sol(:,1);
x2=sol(:,2);
H4=find(x1-x2<0);
sol(H4,:)=[];
x1=sol(:,1);
x2=sol(:,2);
H5=find(x1<0);
sol(H5,:)=[];
x1=sol(:,1);
x2=sol(:,2);
H6=find(x2<0);
sol(H6,:)=[];
x1=sol(:,1);
x2=sol(:,2);
H7=find(20<x1);
sol(H7,:)=[];
x1=sol(:,1);
x2=sol(:,2);
for i=1:size(sol(:,1))
    obj(i,:)=sum(sol(i,:).*C)
end
P=max(obj)
M=find(obj==P);
OS=sol(M,:)