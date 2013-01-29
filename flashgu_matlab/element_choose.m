function [Tmat,QRmat,status,measured_orbit,input_offset]=element_choose(Tmat,QRmat,status,measured_orbit,input_offset)
% choose the Quad and BPM you want to use in the simulation
% when you choose BPM, the measured orbits(bpm readings) are choosen
% correspondingly

%[Tmat,QRmat,status]=init_BBA();
%measured_orbit=Readbpm(1);
%input_offset=Read_real_offset(1);

if nargin==5 %make sure all the parameters are modified correspondingly
    %******************
    useQuadlist=[1 2 3 5 7 9 11 13 14 15];% Quadlist that in use
    %useQuadlist=1:nQuad;
    a=1:status.nQuad;
    unuseQuadlist=setdiff(a,useQuadlist);
    
    unuseBpmlist=[1 2 3];% Bpmlist that NOT use
    a=1:status.nBpm;
    useBpmlist=setdiff(a,unuseBpmlist);
    
    status.nQuad=status.nQuad-length(unuseQuadlist); % new number of Quad according to manual choosen.
    status.nBpm =status.nBpm-length(unuseBpmlist); % new number of BPM according to manual choosen.
    
    % modify Response Matrice
    QRmat.QRmat1(:,unuseQuadlist)=[];
    QRmat.QRmat2(:,unuseQuadlist)=[];
    QRmat.QRmat3(:,unuseQuadlist)=[];
    QRmat.QRmat1(unuseBpmlist,:)=[];
    QRmat.QRmat2(unuseBpmlist,:)=[];
    QRmat.QRmat3(unuseBpmlist,:)=[];
    
    % modify Measured orbits
    measured_orbit.orbit1(unuseBpmlist)=[];
    measured_orbit.orbit2(unuseBpmlist)=[];
    measured_orbit.orbit3(unuseBpmlist)=[];
    
    %modify input offsets
    input_offset.qoffset_real(unuseQuadlist)=[];
    input_offset.bpmoffset_real(unuseBpmlist)=[];
    
    status.zQuad(unuseQuadlist)=[];
    status.zBpm(unuseBpmlist)=[];
    
    status.elemlist.bpmid(unuseBpmlist)=[];
    status.elemlist.quadid(unuseQuadlist)=[];
    disp('Input selection parameters according to elements  modification is OK');
else
    disp('error input in function element_choose');
end