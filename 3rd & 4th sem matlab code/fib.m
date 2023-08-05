clc
clear all
func = @(x) x^2-2*x;
m=4;
l = 0;
r = 1.5;
f = ones(1,m);
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
        if min(abs(l),abs(x1)==abs(l))
            r=x1;
        else
            l=x1;
        end
    end
    j=j+1;
end
Rs(j,:) = [l r x1 x2 func(x1) func(x2)]
variables = {'L','R','X1','X2','fX1','fX2'};
Res1 = array2table(Rs)
Res1.Properties.VariableNames(1:size(Res1,2)) = variables
Xmid = (l+r)/2
func(Xmid)

