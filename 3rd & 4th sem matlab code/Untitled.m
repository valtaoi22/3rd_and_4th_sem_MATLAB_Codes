f=@(x) ((x)^(2)-2);
a=input('enter value of a= ');
b=input('enter value of b= ');
N=input('enter value of N= ');
h=(b-a)/N ;
for i=1:N
    Pr=f(a+(i-1)*h)*f(a+(i)*h);
    if Pr<0
        fprintf('interval is %f %f \n',a+(i-1)*h,a+(i)*h);
    end
end



