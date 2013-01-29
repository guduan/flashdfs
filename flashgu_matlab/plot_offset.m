function plot_offset(result,input_offset)
% plot calculated offset VS offset

tt1=cell2mat({result.qoffset_calculated,input_offset.qoffset_real});
figure;subplot(2,1,1);
bar(tt1);title('Quad-Offset comparison in 1st correction');
%axis([0 nQuad+1 -4e-4  4e-4]);
hold on;
tt2=cell2mat({result.bpmoffset_calculated,input_offset.bpmoffset_real});
subplot(2,1,2);bar(tt2);
%axis([0 nBpm+1 -10e-4  10e-4]);
title('BPM-Offset comparison in 1st correction');






%{
% prepare offset data for next correction
qoffset_new=zeros(1,nQuad_old);
bpmoffset_new=zeros(1,nBpm_old);

feedback_gain_factor=0.8;
qoffset_new(useQuadlist)=[qoffset_real-qoffset_calculated*feedback_gain_factor];
bpmoffset_new(useBpmlist)=[bpmoffset_real-bpmoffset_calculated*feedback_gain_factor];

csvwrite([elegant_file_root 'qoffset_new1.dat'],qoffset_new);
csvwrite([elegant_file_root 'bpmoffset_new1.dat'],bpmoffset_new);

fid=fopen([elegant_file_root 'qoffset_new1.dat'],'r');
temp=fgets(fid);
fclose(fid);
aa=['sddsmakedataset -ascii ', [elegant_file_root  'qoffset_new1.sdds'], ' -column=ParameterValue,type=double -data=',temp];
dos(aa);

fid=fopen([elegant_file_root 'bpmoffset_new1.dat'],'r');
temp=fgets(fid);
fclose(fid);
aa=['sddsmakedataset -ascii ', [elegant_file_root 'bpmoffset_new1.sdds'], ' -column=ParameterValue,type=double -data=',temp];
dos(aa);

cd (elegant_file_root);
aa=['C:\cygwin\bin\mintty.exe ',[elegant_file_root 'after_iteration1.txt&']];
dos(aa);
checkfile('qoffset_new_after_1st.sdds');
disp('************************');
disp('1st Corrcetion is DONE!');
disp('Ready for 2nd correction, Please run flashdfs2.m');
disp('************************');
cd (matlab_file_root);

%}