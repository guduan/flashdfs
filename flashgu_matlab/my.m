clc;
qoffset_new=zeros(1,nQuad_old);
bpmoffset_new=zeros(1,nBpm_old);
qoffset_new(useQuadlist)=[qoffset_real-qoffset_calculated];
bpmoffset_new(useBpmlist)=[bpmoffset_real-bpmoffset_calculated]; 

% prepare offset data for next correction
csvwrite('qoffset_new.dat',qoffset_new);
csvwrite('bpmoffset_new.dat',bpmoffset_new);

fid=fopen('qoffset_new.dat','r');
temp=fgets(fid);
fclose(fid);
aa=['sddsmakedataset -ascii ', [elegant_file_root  'qoffset_new1.sdds'], ' -column=ParameterValue,type=double -data=',temp];
dos(aa);

fid=fopen('bpmoffset_new.dat','r');
temp=fgets(fid);
fclose(fid);
aa=['sddsmakedataset  -ascii ', [elegant_file_root 'bpmoffset_new1.sdds'], ' -column=ParameterValue,type=double -data=',temp];
dos(aa);