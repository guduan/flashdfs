clc;clear all;
global elegant_file_root  matlab_file_root

elegant_file_root='E:\gitHub\flashdfs\flashgu\';
matlab_file_root='E:\gitHub\flashdfs\flashgu_matlab\';

% % delete all transport matrice, only used for test.
% obj=[elegant_file_root '*.mat'];
% delete(obj);

[Tmat,status]=init_BBA_new();

status.opts=struct( ...
    'usenoise',0,...
    'useLinQuad',1,...
    'useMinQuad',1,...
    'useLinBpm',1,...
    'useMinBpm',1,...
    'useLaunchfit',0);

QRmat=DFS_QRmat_Get(Tmat,status);
LRmat=DFS_LRmat_Get(Tmat,status);

% status.unuseQuadlist=[8 10 12 14 16 18 20 21];% Quadlist that NOT use
% status.unuseBpmlist=[1 6 9 12 15 18 21];% Bpmlist that NOT use
status.unuseQuadlist=[2 4 6 8 10];% Quadlist that NOT use
status.unuseBpmlist=[1 2];% Bpmlist that NOT use
% status.unuseQuadlist=[];% Quadlist that NOT use
% status.unuseBpmlist=[];% Bpmlist that NOT use
status=modify_list(status);

[QRmat,status]=modify_QRmat(QRmat,status);
[LRmat,status]=modify_LRmat(LRmat,status);

status.feedback_gain_factor=0.8;
status.bpm_noise_level=2e-6;

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