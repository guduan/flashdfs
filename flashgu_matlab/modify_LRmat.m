function [LRmat,status]=modify_LRmat(LRmat,status)
% modify Launch Response Matrices

useQuadlist=status.useQuadlist;% Quadlist that in use
a=1:status.nQuad;
unuseQuadlist=setdiff(a,useQuadlist);

unuseBpmlist=status.unuseBpmlist;% Bpmlist that NOT use
a=1:status.nBpm;
useBpmlist=setdiff(a,unuseBpmlist);

status.nQuad_new=status.nQuad-length(unuseQuadlist); % new number of Quad according to manual choosen.
status.nBpm_new=status.nBpm-length(unuseBpmlist); % new number of BPM according to manual choosen.

status.unuseQuadlist=unuseQuadlist;
status.useBpmlist=useBpmlist;
% the codes above have already been applied, just make sure the robust here

LRmat.LRmat1(unuseBpmlist,:)=[];
LRmat.LRmat2(unuseBpmlist,:)=[];
LRmat.LRmat3(unuseBpmlist,:)=[];

disp('LRmat modification is OK');
