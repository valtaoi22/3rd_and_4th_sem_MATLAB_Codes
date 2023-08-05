function v = rampe(a)
t=[-2*a:0.01:2*a];
n=length(t);
for i=1:n
    if (t(i)>=a)
        y(i)=t(i)-a;
    else 
        y(i)=0;
    end
end
plot(t,y)




