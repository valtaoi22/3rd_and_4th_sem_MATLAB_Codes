clear all
clc
Variables={'x_1','x_2','s_1','s_2','A_2','a3','sol'};
OVariables={'x_1','x_2','s_1','s_2','sol'};
OrigC=[-3 5 0 0 -1 -1 0]
Info=[1 1 1 0 0 0 6; 2 -1 0 -1 1 0 9; 2 3 0 0 0 1 12]
BV=[3 5 6]
%PHASE-1
fprintf('**** PHASE-1 **** \n')
Cost=[0 0 0 0 -1 -1 0]
A=Info;
StartBV=find(Cost<0);
[BFS,A]=simp(A,BV,Cost,Variables);
%PHASE-2 
fprintf('**** PHASE-2 **** \n') 
A(:,StartBV)=[];     %Removing Artificial var by giving them empty value 
OrigC(:,StartBV)=[];   %Removing Artificial var cost by giving them empty value 
[OptBFS, OptA]=simp(A,BFS,OrigC,OVariables);
FINAL_BFS=zeros(1,size(A,2));
FINAL_BFS(OptBFS)=OptA(:,end);
FINAL_BFS(end)=sum(FINAL_BFS.*OrigC);
 
OptimalBFS= array2table(FINAL_BFS); 
OptimalBFS.Properties.VariableNames(1:size(OptimalBFS,2))=OVariables