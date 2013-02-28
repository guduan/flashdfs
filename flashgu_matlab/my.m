clc;clear all;
global elegant_file_root  matlab_file_root

elegant_file_root='E:\gitHub\flashdfs\flashgu\';
matlab_file_root='E:\gitHub\flashdfs\flashgu_matlab\';

% delete all transport matrice, only used for test.
obj=[elegant_file_root '*.mat'];
delete(obj);

[Tmat,status]=init_BBA_new();

status.opts=struct( ...
    'usenoise',1,...
    'useLinQuad',0,...
    'useMinQuad',0,...
    'useLinBpm',0,...
    'useMinBpm',0,...
    'useLaunchfit',0);

QRmat=DFS_QRmat_Get(Tmat,status);
LRmat=DFS_LRmat_Get(Tmat,status);

% status.unuseQuadlist=[8 10 12 14 16 18 20 21];% Quadlist that NOT use
% status.unuseBpmlist=[1 6 9 12 15 18 21];% Bpmlist that NOT use
status.unuseQuadlist=[2 4 6 8 10 14 15];% Quadlist that NOT use
status.unuseBpmlist=[1 2];% Bpmlist that NOT use
% status.unuseQuadlist=[];% Quadlist that NOT use
% status.unuseBpmlist=[];% Bpmlist that NOT use
status=modify_list(status);

[QRmat,status]=modify_QRmat(QRmat,status);
[LRmat,status]=modify_LRmat(LRmat,status);

status.feedback_gain_factor=0.8;
status.bpm_noise_level=20e-6;
status.svdthreshold=0;


DFS_correct_1;
%{
checkfile([elegant_file_root,'flash_dfs13.orbit']);
DFS_correct_2;

checkfile([elegant_file_root,'flash_dfs23.orbit']);
DFS_correct_3;
checkfile([elegant_file_root,'flash_dfs33.orbit']);
DFS_correct_4;
%}