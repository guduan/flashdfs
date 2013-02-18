function [QRmat,status]=modify_QRmat(QRmat,status)
% modify Quad Response Matrix after choose QuadList and BPMList.
unuseQuadlist=status.unuseQuadlist;% Quadlist that in use
useQuadlist=status.useQuadlist;

unuseBpmlist=status.unuseBpmlist;% Bpmlist that NOT use
useBpmlist=status.useBpmlist;


QRmat.QRmat1(:,unuseQuadlist)=[];
QRmat.QRmat2(:,unuseQuadlist)=[];
QRmat.QRmat3(:,unuseQuadlist)=[];
QRmat.QRmat1(unuseBpmlist,:)=[];
QRmat.QRmat2(unuseBpmlist,:)=[];
QRmat.QRmat3(unuseBpmlist,:)=[];

disp('QRmat modification is OK');
