function [QRmat,status,measured_orbit,input_offset]=element_choose(measured_orbit,input_offset,status,QRmat)
% choose the Quad and BPM you want to use in the simulation
% when you choose BPM, the measured orbits(bpm readings) are choosen
% correspondingly

%[Tmat,QRmat,status]=init_BBA();
%measured_orbit=Readbpm(1);
%input_offset=Read_real_offset(1);

if nargin<=3 % only modify the measured orbit and input_offset
    %******************
    useQuadlist=status.useQuadlist;% Quadlist that in use
    %useQuadlist=1:nQuad;
    a=1:status.nQuad_old;
    unuseQuadlist=setdiff(a,useQuadlist);
    
    unuseBpmlist=status.unuseBpmlist;% Bpmlist that NOT use
    a=1:status.nBpm_old;
    useBpmlist=setdiff(a,unuseBpmlist);
    
    status.nQuad=status.nQuad_old-length(unuseQuadlist); % new number of Quad according to manual choosen.
    status.nBpm =status.nBpm_old-length(unuseBpmlist); % new number of BPM according to manual choosen.
    
    status.unuseQuadlist=unuseQuadlist;
    status.useBpmlist=useBpmlist;

    % modify Measured orbits
    measured_orbit.orbit1(unuseBpmlist)=[];
    measured_orbit.orbit2(unuseBpmlist)=[];
    measured_orbit.orbit3(unuseBpmlist)=[];
    
    % modify Response Matrice
    QRmat.QRmat1(:,unuseQuadlist)=[];
    QRmat.QRmat2(:,unuseQuadlist)=[];
    QRmat.QRmat3(:,unuseQuadlist)=[];
    QRmat.QRmat1(unuseBpmlist,:)=[];
    QRmat.QRmat2(unuseBpmlist,:)=[];
    QRmat.QRmat3(unuseBpmlist,:)=[];
    
    %modify input offsets
    input_offset.qoffset_real(unuseQuadlist)=[];
    input_offset.bpmoffset_real(unuseBpmlist)=[];
    
    status.zQuad(unuseQuadlist)=[];
    status.zBpm(unuseBpmlist)=[];
    
    status.elemlist.bpmid(unuseBpmlist)=[];
    status.elemlist.quadid(unuseQuadlist)=[];
    disp('Input selection parameters according to elements  modification is OK');
else
    disp('******************************');
    disp('error input in function element_choose');
end