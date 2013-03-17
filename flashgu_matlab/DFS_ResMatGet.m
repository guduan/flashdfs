function [R,Rmag,Rconstrain]=DFS_ResMatGet(status,QRmat,LRmat)
% get the whole Response Matrix for DFS including the soft constrain part

nQuad=status.nQuad_new;
nBpm=status.nBpm_new;
zQuad=status.zQuad_new;
zBpm=status.zBpm_new;
sigBPM=status.nQuad_new*status.fitScale;

RQLin=[ones(1,nQuad),zeros(1,nBpm);zQuad,zeros(1,nBpm)];
RQMin=[eye(nQuad)/sigBPM,zeros(nQuad,nBpm)];

RBLin=[zeros(1,nQuad),ones(1,nBpm);zeros(1,nQuad),zBpm];
RBMin=[zeros(nBpm,nQuad),eye(nBpm)/sigBPM];

RBPM=-eye(nBpm);

Rmag=[QRmat.QRmat1,   RBPM;
    QRmat.QRmat2,   RBPM;
    QRmat.QRmat3,   RBPM];

Rconstrain=[];
R=[];
if status.opts.useLinQuad
    Rconstrain=[Rconstrain;RQLin];
end

if status.opts.useMinQuad
    Rconstrain=[Rconstrain;RQMin];
end

if status.opts.useLinBpm
    Rconstrain=[Rconstrain;RBLin];
end

if status.opts.useMinBpm
    Rconstrain=[Rconstrain;RBMin];
end
%*****
% if status.opts.useLaunchfit
%     r1=[LRmat.LRmat1;LRmat.LRmat2;LRmat.LRmat3];
%     R=[Rmag,r1];
% else
%     R=[Rmag;Rconstrain];
% end
if ~status.opts.usenoise&&~status.opts.useLaunchfit
    R=Rmag;
elseif ~status.opts.usenoise&&status.opts.useLaunchfit
    r1=blkdiag(LRmat.LRmat1,LRmat.LRmat2,LRmat.LRmat3);
    R=[Rmag,r1];
elseif status.opts.usenoise&&~status.opts.useLaunchfit
    R=[Rmag;Rconstrain];
elseif status.opts.usenoise&&status.opts.useLaunchfit
    r1=blkdiag(LRmat.LRmat1,LRmat.LRmat2,LRmat.LRmat3);
    [a,b]=size(Rconstrain);
    Rconstrain=[Rconstrain,zeros(a,6)];
    if ~isempty(Rconstrain)
        R=[Rmag,r1;Rconstrain];
    else
        R=[Rmag,r1];
    end
end
%***************************************************
disp('Full Response Matrix for DFS is OK');
