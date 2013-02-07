function input_offset=Read_real_offset(number_of_correction)
% read input offsets which are used ONLY in simulation

global elegant_file_root

switch number_of_correction
    case 1
        qoffsetdata=importdata([elegant_file_root 'flash_dfs.realquadoffset']);
        qoffset_real=qoffsetdata.data;
        bpmoffsetdata=importdata([elegant_file_root 'flash_dfs.realbpmoffset']);
        bpmoffset_real=bpmoffsetdata.data;
        launchdata=importdata([elegant_file_root 'flash_dfs.realinitial']);
        launch_real=launchdata.data(2); %for now only use x' angle
    case 2
        qoffset_real   =dlmread([elegant_file_root 'qoffset_new1.dat'])';
        bpmoffset_real =dlmread([elegant_file_root 'bpmoffset_new1.dat'])';
        launch_real = dlmread([elegant_file_root 'launch_new1.dat'])';
    case 3
        qoffset_real   =dlmread([elegant_file_root 'qoffset_new2.dat'])';
        bpmoffset_real =dlmread([elegant_file_root 'bpmoffset_new2.dat'])';
        launch_real = dlmread([elegant_file_root 'launch_new2.dat'])';
    case 4
        qoffset_real   =dlmread([elegant_file_root 'qoffset_new3.dat'])';
        bpmoffset_real =dlmread([elegant_file_root 'bpmoffset_new3.dat'])';
        launch_real = dlmread([elegant_file_root 'launch_new3.dat'])';
    case 5
        qoffset_real   =dlmread([elegant_file_root 'qoffset_new4.dat'])';
        bpmoffset_real =dlmread([elegant_file_root 'bpmoffset_new4.dat'])';
        launch_real = dlmread([elegant_file_root 'launch_new4.dat'])';
    otherwise
        disp('Do you really want apply 5th correction??');
end

input_offset.qoffset_real=qoffset_real;
input_offset.bpmoffset_real=bpmoffset_real;
input_offset.launch_real=launch_real;
aa=['Read input offset in correction ',num2str(number_of_correction),' is DONE.'];
disp(aa);