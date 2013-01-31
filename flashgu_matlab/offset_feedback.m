function offset_feedback(feedback_gain_factor,result,input_offset,correction_number,status)
% feedback offsets, prepare offset data for next correction

global elegant_file_root matlab_file_root

% nQuad=status.nQuad_new;
% nBpm=status.nBpm_new;
% zQuad=status.zQuad_new;
% zBpm=status.zBpm_new;

qoffset_new=zeros(1,status.nQuad);
bpmoffset_new=zeros(1,status.nBpm);

%feedback_gain_factor=0.8;
qoffset_new(status.useQuadlist)=[input_offset.qoffset_real-result.qoffset_calculated*feedback_gain_factor];
bpmoffset_new(status.useBpmlist)=[input_offset.bpmoffset_real-result.bpmoffset_calculated*feedback_gain_factor];
% launch_new=[result.init_x,result.init_xp].*(1-feedback_gain_factor);
launch_new=[result.init_x,result.init_xp].*0.1;
csvwrite([elegant_file_root 'qoffset_new',num2str(correction_number),'.dat'],qoffset_new);
csvwrite([elegant_file_root 'bpmoffset_new',num2str(correction_number),'.dat'],bpmoffset_new);
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
%generate new launch parameters after iteration
aa=['sddsmakedataset -ascii ', [elegant_file_root 'launch_new',num2str(correction_number),'.sdds'],...
        ' -column=ParameterValue,type=double -data=',num2str(launch_new(1)),',',num2str(launch_new(2))];
dos(aa);

cd (elegant_file_root);
aa=['C:\cygwin\bin\mintty.exe ',[elegant_file_root 'after_iteration',num2str(correction_number),'.txt&']];
dos(aa);

cd (matlab_file_root);
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
