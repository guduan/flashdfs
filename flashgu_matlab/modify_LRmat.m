function [LRmat,status]=modify_LRmat(LRmat,status)
% modify Launch Response Matrices

unuseQuadlist=status.unuseQuadlist;% Quadlist that in use
useQuadlist=status.useQuadlist;

unuseBpmlist=status.unuseBpmlist;% Bpmlist that NOT use
useBpmlist=status.useBpmlist;

LRmat.LRmat1(unuseBpmlist,:)=[];
LRmat.LRmat2(unuseBpmlist,:)=[];
LRmat.LRmat3(unuseBpmlist,:)=[];

disp('LRmat modification is OK');
