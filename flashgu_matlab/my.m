clc;clear all;
global elegant_file_root  matlab_file_root

elegant_file_root='E:\gitHub\flashdfs\flashgu\';
matlab_file_root='E:\gitHub\flashdfs\flashgu_matlab\';

% delete all transport matrice, only used for test.
obj=[elegant_file_root '*.mat'];
delete(obj);

[Tmat,status]=init_BBA_new();

<<<<<<< HEAD
=======
status.usesoftconstr=0;
status.opts=struct( ...
    'usenoise',0,...
    'useLinQuad',status.usesoftconstr,...
    'useMinQuad',status.usesoftconstr,...
    'useLinBpm',status.usesoftconstr,...
    'useMinBpm',status.usesoftconstr,...
    'useLaunchfit',1);

>>>>>>> parent of 62ccb95... 03121
QRmat=DFS_QRmat_Get(Tmat,status);
LRmat=DFS_LRmat_Get(Tmat,status);

status.unuseQuadlist=[2 4 6 8 10 14 15];% Quadlist that NOT use
status.unuseBpmlist=[1 2];% Bpmlist that NOT use
% status.unuseQuadlist=[];% Quadlist that NOT use
% status.unuseBpmlist=[];% Bpmlist that NOT use

status=modify_list(status);

[QRmat,status]=modify_QRmat(QRmat,status);
[LRmat,status]=modify_LRmat(LRmat,status);

% ********************************
%{
DFS_correct_1;
%{
checkfile([elegant_file_root,'flash_dfs13.orbit']);
DFS_correct_2;

checkfile([elegant_file_root,'flash_dfs23.orbit']);
DFS_correct_3;

checkfile([elegant_file_root,'flash_dfs33.orbit']);
DFS_correct_4;


%}