function RALL=DFS_ResMatGet(status,QRmat,LRmat)
% get the whole Response Matrix for DFS including the soft constrain part

opts=struct( ...
    'useLinQuad',1,...
    'useMinQuad',1,...
    'useLinBpm',1,...
    'useMinBpm',1,...
    'useLaunchfit',1);

nQuad=status.nQuad_new;
nBpm=status.nBpm_new;
zQuad=status.zQuad_new;
zBpm=status.zBpm_new;

RQLin=[ones(1,nQuad),zeros(1,nBpm);zQuad,zeros(1,nBpm)];
RQMin=[eye(nQuad),zeros(nQuad,nBpm)];

RBLin=[zeros(1,nQuad),ones(1,nBpm);zeros(1,nQuad),zBpm];
RBMin=[zeros(nBpm,nQuad),eye(nBpm)];

RBPM=-eye(nBpm);
%***************************************************
Rmag=[LRmat.LRmat1.*opts.useLaunchfit,  QRmat.QRmat1,   RBPM;
    LRmat.LRmat2.*opts.useLaunchfit,  QRmat.QRmat2,   RBPM;
    LRmat.LRmat3.*opts.useLaunchfit,  QRmat.QRmat3,   RBPM];

RLagr=[RQLin.*opts.useLinQuad;
    RQMin.*opts.useMinQuad;
    RBLin.*opts.useLinBpm;
    RBMin.*opts.useMinBpm];

RALL=[Rmag;
    zeros(size(RLagr,1),2),RLagr];
%***************************************************
disp('Full Response Matrix for DFS is OK');
% R=[RALL;RLagr];