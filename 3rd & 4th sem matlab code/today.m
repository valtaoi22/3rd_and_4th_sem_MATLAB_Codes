clc;
x1=0:0.1:10;
x2=(10+x1)/3;
x3=6-x1;
x4=x1-2;
plot(x1,x2,'k-',x1,x3,'b-',x1,x4,'r-')
legend('-x1+3x2=10','x1+x2=6','x1-x2=2')
xlabel('xaxis');
ylabel('yaxis');