clc; 
clear; 
 
constants = {'x1','x2','s1','s2','sol'}; 
%total 5 items will update including above 
C = [-5 -6]; %cost in max
a = [-1 -1; -4 -1]; %constraints in <= without s1 s2
b = [-2 ; -4];  %r.h.s

[m,n] = size(a); 
s = eye(m); 
A = [a s b]; 
cost = zeros(1,n+m+1); 
cost(1:n) = C; 
bv = [3 4]; %update basic variable
zjcj = cost(bv)*A - cost; 
zcj = [zjcj ; A]; 
smpTb = array2table(zcj); 
smpTb.Properties.VariableNames(1:n+m+1) = constants; 
disp(smpTb); 
 
while true 
    sol(:) = A(:,n+m+1); 
    if(any(sol < 0)) 
        fprintf('The current BFS is not optimal\n'); 
        zc = zjcj(1:n+m); 
        [leaving_val, pvt_row] = min(sol); 
        if(all(A(pvt_row,:) > 0)) 
            fprintf('LPP is unbounded\n'); 
            break 
        end 
        ratio = zeros(1,m+n); 
        for i = 1:m+n 
            if A(pvt_row, i) < 0 
                ratio(i) = -zc(i) / A(pvt_row, i); 
            else 
                ratio(i) = inf; 
            end 
        end 
        [entering_val, pvt_col] = min(ratio); 
         
        bv(pvt_row) = pvt_col; 
        pvt_key = A(pvt_row, pvt_col); 
        A(pvt_row,:) = A(pvt_row,:)./pvt_key; 
        for i = 1:m 
            if i ~= pvt_row 
                zjcj = zjcj - zjcj(pvt_col).*A(pvt_row,:); 
                A(i,:) = A(i,:) - A(i, pvt_col).*A(pvt_row,:); 
            end 
        end 
        zcj = [zjcj; A]; 
        table = array2table(zcj); 
        table.Properties.VariableNames(1:n+m+1) = constants; 
        disp(table); 
 
         
    else 
        fprintf('The current BFS is optimal\n'); 
        break; 
    end 
end 
 
bv = [n+m+1, bv]; 
for i=1:m+1 
    var = bv(i); 
    fprintf('%s = %f\n',constants{var},zcj(i,n+m+1)); 
end
