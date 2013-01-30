clc;clear all;
global elegant_file_root  matlab_file_root

elegant_file_root='E:\gitHub\flashdfs\flashgu\';
matlab_file_root='E:\gitHub\flashdfs\flashgu_matlab\';

[Tmat1,QRmat1,status]=init_BBA(600);
[Tmat2,QRmat2,~]=init_BBA(720);
[Tmat3,QRmat3,~]=init_BBA(900);

measured_orbit1.orbit1=Readbpm1(600);
measured_orbit1.orbit2=Readbpm1(720);
measured_orbit1.orbit3=Readbpm1(900);
input_offset1=Read_real_offset(1);

Tmat.Tmat1=Tmat1;
Tmat.Tmat2=Tmat2;
Tmat.Tmat3=Tmat3;

QRmat.QRmat1=QRmat1;
QRmat.QRmat2=QRmat2;
QRmat.QRmat3=QRmat3;

status.useQuadlist=[1 2 3 5 7 9 11 13 14 15];% Quadlist that in use
status.unuseBpmlist=[1 2 3];% Bpmlist that NOT use

[QRmat,status]=modify_QRmat(QRmat,status);
[measured_orbit1,input_offset1,status]=modify_meas_input(measured_orbit1,input_offset1,status);

%******************
% add noise on bpm readings
use_noise=1;

%******************


DFS_correct_1;
DFS_correct_2;
DFS_correct_3;
DFS_correct_4;