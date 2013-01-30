function [QRmat,status]=modify_QRmat(QRmat,status)
% modify Quad Response Matrix after choose QuadList and BPMList.

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

QRmat.QRmat1(:,unuseQuadlist)=[];
QRmat.QRmat2(:,unuseQuadlist)=[];
QRmat.QRmat3(:,unuseQuadlist)=[];
QRmat.QRmat1(unuseBpmlist,:)=[];
QRmat.QRmat2(unuseBpmlist,:)=[];
QRmat.QRmat3(unuseBpmlist,:)=[];

disp('QRmat modification is OK');
