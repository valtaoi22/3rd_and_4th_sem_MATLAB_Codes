clc;
clear all;
n=2;
cost = [5 12 4 0 -100 0];
A = [1 2 1 1 0 10; 2 -1 3 0 1 8];
[m,n]=size(A);
bv = [4 5];
zjcj = cost(bv) * A -cost;
zcj = [zjcj ; A];
bigMtable = array2table(zcj);
bigMtable.Properties.VariableNames(1:n) = {'x1', 'x2' , 'x3', 's1', 'a2', 'soln'}
 
flag = true;
while(flag)
    zc = zjcj(1: end-1);
    if any(zjcj<0)
        fprintf('The Current BFS is not optimal. \n');
        
        [Enter_val, pvt_col] = min(zc);
        if all(A(:,pvt_col <=0))
            error('LPP is unbounded. ');
        else
            sol = A(:,end);
            column = A(:,pvt_col);
            for i =1:size(A,1)
                if(column(i) >= 0)
                    ratio(i) = sol(i)/column(i);
                else
                    ratio(i) =inf;
                end
            end
            [leaving_var, pvt_row] = min(ratio);
        end
        bv(pvt_row)=pvt_col;
        pvt_key=A(pvt_row, pvt_col);
        A(pvt_row,:)=A(pvt_row,:)./pvt_key;
        for i=1:m
            if i~=pvt_row
                A(i,:)=A(i,:)-A(i,pvt_col).*A(pvt_row,:);
            end
        end
        zjcj=zjcj-zjcj(pvt_col).*A(pvt_row,:);
        zcj=[zjcj;A];
        table=array2table(zcj);
        table.Properties.VariableNames(1:n)={'x1', 'x2' , 'x3', 's1', 'a2', 'soln'}
    else
        flag=false;
        fprintf('The current BFS is optimal.\n');
    end
end
