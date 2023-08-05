clc;
A=[-1 1 1 0;1 1 0 1];
B=[1 ;2];
c=[1 2 0 0];
[m,n]=size(A);
if(n>m)
    ncm=nchoosek(n,m);
    pair=nchoosek(1:n,m);
    sol=[];
    for i=1:ncm
        y=zeros(n,1);
        C=A(:,pair(i,:));
        X=inv(C)*B;
        if all(X>=0 & X~=inf & X~=-inf)
            y(pair(i,:))=X;
        sol=[sol y];
        end
    end
else
    fprintf('ncm does not exist');
end
sol;
fprintf('basic feasible sol are');
sol=sol'  %basic feasible solution
for i=1: size(sol(:,1))
obj(i,:)=sum(sol(i,:).*c);
end
%optimal value
p=max(obj)
m=find(obj==p);
%optimal solution
os=sol(m,:)