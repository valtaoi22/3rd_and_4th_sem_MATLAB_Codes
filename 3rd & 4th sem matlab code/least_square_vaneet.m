clear;
clc;
x=[ 0.1 0.2 0.4 0.5 1 2];
y=[21 11 7 6 5 6];
n=6;
sumuxy=0;
sumx=0;
sumux=0;
sumybx=0;
sumbux=0;
sumbx2=0;
for i=1:n
    sumuxy=sumuxy + sqrt(x(i))*y(i);
    sumx=sumx+ x(i);
    sumux=sumux+ sqrt(x(i));
    sumybx=sumybx+( y(i)/x(i));
    sumbux= sumbux+ 1/sqrt(x(i));
    sumbx2=sumbx2+ 1/(x(i))^2;
end;
b= (sumx*sumybx - sumuxy*sumbux)/(sumbx2*sumx - sumux*sumbux)
a= (sumuxy - b*sumux)/sumx

   
