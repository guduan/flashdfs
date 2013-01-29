function [RALL,RLagr]=DFS_ResMatGet(status,QRmat)
% get the whole Response Matrix for DFS including the soft constrain part

opts=struct( ...
    'useLinQuad',1,...
    'useMinQuad',1,...
    'useLinBpm',1,...
    'useMinBpm',1);

nQuad=status.nQuad;
nBpm=status.nBpm;
zQuad=status.zQuad;
zBpm=status.zBpm;

RQLin=[ones(1,nQuad),zeros(1,nBpm);zQuad,zeros(1,nBpm)];
RQMin=[eye(nQuad),zeros(nQuad,nBpm)];

RBLin=[zeros(1,nQuad),ones(1,nBpm);zeros(1,nQuad),zBpm];
RBMin=[zeros(nBpm,nQuad),eye(nBpm)];

RBPM=-eye(nBpm);

RALL=[QRmat.QRmat1,RBPM;QRmat.QRmat2,RBPM;QRmat.QRmat3,RBPM];
RLagr=[RQLin.*opts.useLinQuad;
               RQMin.*opts.useMinQuad;
               RBLin.*opts.useLinBpm;
               RBMin.*opts.useMinBpm];

disp('Full Response Matrix for DFS is OK');
% R=[RALL;RLagr];