clc;
A=[4 1 0; 1 20 1;0 1 4];
X=[1 ;1; 1];
tol=0.001;
err=Inf;
while err > tol
    y=A*X;
    k=max(abs(y));
    X=y/k;
    y1=A*X;   
    k1=max(abs(y1));
    X=y1/k1;
    
    err=abs(k1-k);
end
disp(X)
disp(k1)

 
    
