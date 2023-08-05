clc
clear all
format short
func = @(x) (x<0.5).*((1-x)/2)+(x>=0.5).*(x.^2);  %func
m=6;  %iteration
l = -1;   %left
r = 1;   %right 
f = ones(1,m);

t=linspace(l,r,100)
plot(t,func(t),'K','Linewidth',2)

f;
i=1;
while i<m
   f(i+2) = f(i+1)+f(i);
   i=i+1;
end
j = 1;
while j<m
    x2 = l + (f(m-j+1)/f(m-j+2))*(r-l);
    x1 = l+r-x2;
    Rs(j,:) = [l r x1 x2 func(x1) func(x2)];
    if func(x2) > func(x1)
        r=x2;
    elseif func(x2) < func(x1)
        l=x1;
    else
        if min(abs(x1),abs(l))==abs(l)
            r=x2;
        else
            l=x1;
        end
    end
    j=j+1;
end
Rs(j,:) = [l r x1 x2 func(x1) func(x2)];
variables = {'L','R','X1','X2','fX1','fX2'};
Res1 = array2table(Rs);
Res1.Properties.VariableNames(1:size(Res1,2)) = variables
Xmid = (l+r)/2
func(Xmid)

