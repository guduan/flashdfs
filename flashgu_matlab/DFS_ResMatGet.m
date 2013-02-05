function RALL=DFS_ResMatGet(status,QRmat,LRmat)
% get the whole Response Matrix for DFS including the soft constrain part

nQuad=status.nQuad_new;
nBpm=status.nBpm_new;
zQuad=status.zQuad_new;
zBpm=status.zBpm_new;

RQLin=[ones(1,nQuad),zeros(1,nBpm);zQuad,zeros(1,nBpm)];
RQMin=[eye(nQuad),zeros(nQuad,nBpm)];

RBLin=[zeros(1,nQuad),ones(1,nBpm);zeros(1,nQuad),zBpm];
RBMin=[zeros(nBpm,nQuad),eye(nBpm)];

RBPM=-eye(nBpm);

RLMin=repmat(zeros(1,nQuad+nBpm),2,1);

Rmag=[QRmat.QRmat1,   RBPM;
			QRmat.QRmat2,   RBPM;
			QRmat.QRmat3,   RBPM];
			
RALL=Rmag;

if status.opts.useLinQuad
    RALL=[RALL;RQLin];
end

if status.opts.useMinQuad
    RALL=[RALL;RQMin];
end

if status.opts.useLinBpm
    RALL=[RALL;RBLin];
end

if status.opts.useMinBpm
    RALL=[RALL;RBMin];
end

%*******
if status.opts.useLaunchfit % if useLaunch=1
    [a,b]=size(RALL);
    [c,d]=size(LRmat);
    r1=[LRmat.LRmat1;LRmat.LRmat2;LRmat.LRmat3;zeros(a-c,2)];
    RALL=[r1,RALL];
    r2=[eye(2),zeros(2,b)];
    RALL=[RALL;r2];
end

%***************************************************
disp('Full Response Matrix for DFS is OK');
% R=[RALL;RLagr];