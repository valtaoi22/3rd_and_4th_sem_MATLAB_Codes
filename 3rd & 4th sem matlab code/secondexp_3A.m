clc;
f=@(x) ((x)^(2)-17);
x0=input('enter value of x0= ');
x1=input('enter value of x1= ');
E=input('enter value of E= ');
N=input('enter maximum no. of iteration,N= ');
i=1;
while i<=N
    x2=x1-((x1-x0)/(f(x1)-f(x0)))*f(x1) ;
  if  abs(x2-x1)<=E
      fprintf('value of x2=%f and iteration taken=%d', x2,i);
      break;
  else
      x0=x1;
      x1=x2;
      i=i+1;
  end
end
