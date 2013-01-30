function [measured_orbit,input_offset,status]=modify_meas_input(measured_orbit,input_offset,status)
% modify measured orbit and input offset data after choose QuadList and BPMList.

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

%**********
% begin modify

% modify Measured orbits
measured_orbit.orbit1(unuseBpmlist)=[];
measured_orbit.orbit2(unuseBpmlist)=[];
measured_orbit.orbit3(unuseBpmlist)=[];

%modify input offsets
input_offset.qoffset_real(unuseQuadlist)=[];
input_offset.bpmoffset_real(unuseBpmlist)=[];

status.zQuad_new=status.zQuad;
status.zBpm_new=status.zBpm;
status.elemlist.bpmid_new=status.elemlist.bpmid;
status.elemlist.quadid_new=status.elemlist.quadid;

status.zQuad_new(unuseQuadlist)=[];
status.zBpm_new(unuseBpmlist)=[];
status.elemlist.bpmid_new(unuseBpmlist)=[];
status.elemlist.quadid_new(unuseQuadlist)=[];

disp('Input selection parameters according to elements  modification is OK');