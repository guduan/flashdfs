function [measured_orbit,input_offset,status]=modify_meas_input(measured_orbit,input_offset,status)
% modify measured orbit and input offset data after choose QuadList and BPMList.

unuseQuadlist=status.unuseQuadlist;% Quadlist that in use
useQuadlist=status.useQuadlist;

unuseBpmlist=status.unuseBpmlist;% Bpmlist that NOT use
useBpmlist=status.useBpmlist;

%**********
% begin modify

% modify Measured orbits
measured_orbit.orbit1(unuseBpmlist)=[];
measured_orbit.orbit2(unuseBpmlist)=[];
measured_orbit.orbit3(unuseBpmlist)=[];

%modify input offsets
input_offset.qoffset_real(unuseQuadlist)=[];
input_offset.bpmoffset_real(unuseBpmlist)=[];

if ~isfield(status,'Quad_name_new') % only apply on the 1st correction
    input_offset.qoffset_real_name(unuseQuadlist)=[];
    input_offset.bpmoffset_real_name(unuseBpmlist)=[];
    status.Quad_name_new=input_offset.qoffset_real_name;
    status.Bpm_name_new=input_offset.bpmoffset_real_name;
end

status.zQuad_new=status.zQuad;
status.zBpm_new=status.zBpm;
status.elemlist.bpmid_new=status.elemlist.bpmid;
status.elemlist.quadid_new=status.elemlist.quadid;

status.zQuad_new(unuseQuadlist)=[];
status.zBpm_new(unuseBpmlist)=[];
status.elemlist.bpmid_new(unuseBpmlist)=[];
status.elemlist.quadid_new(unuseQuadlist)=[];

disp('Input selection parameters according to elements  modification is OK');