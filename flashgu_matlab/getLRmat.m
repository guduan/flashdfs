function LR = getLRmat(Tmat,List)
% get Launch Response Matrices

corrid=List.corrid;
zCorr=List.zCorr;
bpmid=List.bpmid;
zBpm=List.zBpm;
quadid=List.quadid;
zQuad=List.zQuad;

nBpm=length(bpmid);
nCorr=length(corrid);
nQuad=length(quadid);
LR=[];
for i=1:nBpm
    a=getTmatAll(Tmat,1,bpmid(i));
    LR(i,1)=a(1,2); %R12  response to the incoming angle
end

