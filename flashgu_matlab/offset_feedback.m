function offset_feedback(result,input_offset,correction_number,status)
% feedback offsets, prepare offset data for next correction

global elegant_file_root matlab_file_root

qoffset_new=zeros(1,status.nQuad);
bpmoffset_new=zeros(1,status.nBpm);

qoffset_new(status.useQuadlist)=input_offset.qoffset_real-result.qoffset_calculated*status.feedback_gain_factor;
bpmoffset_new(status.useBpmlist)=input_offset.bpmoffset_real-result.bpmoffset_calculated*status.feedback_gain_factor;
<<<<<<< HEAD
% qoffset_new(status.useQuadlist)=input_offset.qoffset_real;
% bpmoffset_new(status.useBpmlist)=input_offset.bpmoffset_real;

<<<<<<< HEAD
% use launch fitted by Quad offsets
% launch_new=input_offset.launch_real-[result.linefit_qoffset(1);result.linefit_qoffset(2)]*status.feedback_gain_factor;
launch_new=input_offset.launch_real-mean([result.init_xp1,result.init_xp2,result.init_xp3;result.init_x1,result.init_x2,result.init_x3],2)*status.feedback_gain_factor;
% launch_new=launch_new-[result.linefit_qoffset(1);result.linefit_qoffset(2)]*status.feedback_gain_factor;
=======
launch_new=input_offset.launch_real-[result.init_x;result.init_xp]*status.feedback_gain_factor;

% initial_para=polyfit(status.zBpm_new(1:3),measured_orbit.orbit1(1:3)',1);
% input_offset.launch_real-[result.init_x;result.init_xp]*status.feedback_gain_factor;
>>>>>>> parent of 62ccb95... 03121

% launch_new=input_offset.launch_real;
% launch_new=input_offset.launch_real*0;
=======
initial_para=polyfit(status.zBpm_new(1:3),measured_orbit.orbit1(1:3)',1);
launch_new=input_offset.launch_real-[result.init_x;result.init_xp]*status.feedback_gain_factor-[initial_para(2);initial_para(1)];

>>>>>>> parent of 15c9d0a... 03212
csvwrite([elegant_file_root 'qoffset_new',num2str(correction_number),'.dat'],qoffset_new);
csvwrite([elegant_file_root 'bpmoffset_new',num2str(correction_number),'.dat'],bpmoffset_new);
csvwrite([elegant_file_root 'launch_new',num2str(correction_number),'.dat'],launch_new);
%generate new quadoffset after iteration
fid=fopen([elegant_file_root 'qoffset_new',num2str(correction_number),'.dat'],'r');
temp=fgets(fid);
fclose(fid);
aa=['sddsmakedataset -ascii ', [elegant_file_root 'qoffset_new',num2str(correction_number),'.sdds'], ' -column=ParameterValue,type=double -data=',temp];
dos(aa);
%generate new bpmoffset after iteration
fid=fopen([elegant_file_root 'bpmoffset_new',num2str(correction_number),'.dat'],'r');
temp=fgets(fid);
fclose(fid);
aa=['sddsmakedataset -ascii ', [elegant_file_root 'bpmoffset_new',num2str(correction_number),'.sdds'], ' -column=ParameterValue,type=double -data=',temp];
dos(aa);

if status.opts.useLaunchfit
%generate new launch parameters after iteration
aa=['sddsmakedataset -ascii ', [elegant_file_root 'launch_new',num2str(correction_number),'.sdds'],...
        ' -column=ParameterValue,type=double -data=',num2str(launch_new(1)),',',num2str(launch_new(2))];
dos(aa);
else 
    aa=['sddsmakedataset -ascii ', [elegant_file_root 'launch_new',num2str(correction_number),'.sdds'],...
        ' -column=ParameterValue,type=double -data=0,0'];
dos(aa);
end

cd (elegant_file_root);
aa=['C:\cygwin\bin\mintty.exe ',[elegant_file_root 'after_iteration',num2str(correction_number),'.txt&']];
dos(aa);

switch correction_number
    case 1
        checkfile('qoffset_new_after_1st.sdds');
        disp('************************');
        disp('1st Corrcetion is DONE!');
        disp('************************');
    case 2
        checkfile('qoffset_new_after_2nd.sdds');
        disp('************************');
        disp('2nd Corrcetion is DONE!');
        disp('************************');
    case 3
        checkfile('qoffset_new_after_3rd.sdds');
        disp('************************');
        disp('3rd Corrcetion is DONE!');
        disp('************************');
    case 4
        checkfile('qoffset_new_after_4th.sdds');
        disp('************************');
        disp('4th Corrcetion is DONE!');
        disp('************************');
    otherwise
        disp('5th correction is NOT Ready yet');
end
cd (matlab_file_root);