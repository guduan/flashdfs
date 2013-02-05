clc;clear all;
global elegant_file_root  matlab_file_root

elegant_file_root='E:\gitHub\flashdfs\flashgu\';
matlab_file_root='E:\gitHub\flashdfs\flashgu_matlab\';

[Tmat,status]=init_BBA_new();
QRmat=DFS_QRmat_Get(Tmat,status);
LRmat=DFS_LRmat_Get(Tmat,status);
status.useQuadlist=[1 2 3 5 7 9 11 13 14 15];% Quadlist that in use
status.unuseBpmlist=[1 2 3];% Bpmlist that NOT use

[QRmat,status]=modify_QRmat(QRmat,status);
[LRmat,status]=modify_LRmat(LRmat,status);

use_noise=1;% add noise on bpm readings
% change feedback_gain_factor=0.5
feedback_gain_factor=0.8;

status.opts=struct( ...
    'useLinQuad',1,...
    'useMinQuad',1,...
    'useLinBpm',1,...
    'useMinBpm',1,...
    'useLaunchfit',0);



DFS_correct_1; 
%{
checkfile([elegant_file_root,'flash_dfs13.orbit']);
DFS_correct_2;
checkfile([elegant_file_root,'flash_dfs23.orbit']);
DFS_correct_3;
checkfile([elegant_file_root,'flash_dfs33.orbit']);
DFS_correct_4;

% ALL_orbit1(1,:)=xMeas1;
% ALL_orbit1(2,:)=xMeas2;
% ALL_orbit1(3,:)=xMeas3;
% ALL_orbit1(4,:)=xMeas4;
% ALL_orbit1(5,:)=xMeas5;
% 
% rms_orbit1(:,1)=sqrt(mean(xMeas1.^2));
% rms_orbit1(:,2)=sqrt(mean(xMeas2.^2));
% rms_orbit1(:,3)=sqrt(mean(xMeas3.^2));
% rms_orbit1(:,4)=sqrt(mean(xMeas4.^2));
% rms_orbit1(:,5)=sqrt(mean(xMeas5.^2));



%*******************************
	% change feedback_gain_factor=0.7
feedback_gain_factor=0.7;
DFS_correct_1; 
DFS_correct_2;
DFS_correct_3;
DFS_correct_4;

rms_orbit2(:,1.)=sqrt(mean(xMeas1.^2));
rms_orbit2(:,2)=sqrt(mean(xMeas2.^2));
rms_orbit2(:,3)=sqrt(mean(xMeas3.^2));
rms_orbit2(:,4)=sqrt(mean(xMeas4.^2));

%*******************************
% change feedback_gain_factor=0.8
feedback_gain_factor=0.8;
DFS_correct_1; 
DFS_correct_2;
DFS_correct_3;
DFS_correct_4;

rms_orbit3(:,1.)=sqrt(mean(xMeas1.^2));
rms_orbit3(:,2)=sqrt(mean(xMeas2.^2));
rms_orbit3(:,3)=sqrt(mean(xMeas3.^2));
rms_orbit3(:,4)=sqrt(mean(xMeas4.^2));
%*******************************
rms_orbit(:,1) =rms_orbit1';
rms_orbit(:,2) =rms_orbit2';
rms_orbit(:,3) =rms_orbit3';


%}