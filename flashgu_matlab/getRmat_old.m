function R = getRmat(Tmat,List,plane)

xcorrid=List.xcorrid;
zxCorr=List.zxCorr;
ycorrid=List.ycorrid;
zyCorr=List.zyCorr;
bpmid=List.bpmid;
zBpm=List.zBpm;
quadid=List.quadid;
zQuad=List.zQuad;

nBpm=length(bpmid);
nxCorr=length(xcorrid);
nyCorr=length(ycorrid);
nQuad=length(quadid);

for n=1:nBpm
    Rbpm(:,:,n)=getTmatAll(Tmat,bpmid(1),bpmid(n));
end

%Rbpm(:,:,:)

for j=1:nQuad
    for i=1:nBpm
        if quadid(j)< bpmid(i)
            Rquad(:,:,j,i)=getTmatAll(Tmat,quadid(j),bpmid(i));
        else
            Rquad(:,:,j,i)=zeros(6);%if the bpm is behind quad,then set Rseponse matrix=0;
        end
    end
end

%Rquad

for j=1:nxCorr
    for i=1:nBpm
        if xcorrid(j)< bpmid(i)
            Rxcorr(:,:,j,i)=getTmatAll(Tmat,xcorrid(j),bpmid(i));
        else
            Rxcorr(:,:,j,i)=zeros(6);
        end
    end
end
%Rxcorr

for j=1:nyCorr
    for i=1:nBpm
        if ycorrid(j)< bpmid(i)
            Rycorr(:,:,j,i)=getTmatAll(Tmat,ycorrid(j),bpmid(i));
        else
            Rycorr(:,:,j,i)=zeros(6);
        end
    end
end
%Rycorr


rbpm=Rbpm(1,1:2,:);
rquad=Rquad(1,1,:,:);%quad R11
rxcorr=Rxcorr(1,2,:,:);%xcorr R12
rycorr=Rycorr(1,2,:,:);%corr R12
rbpm=reshape(rbpm,nBpm,2);
rquad=reshape(rquad,nBpm,nQuad);
rxcorr=reshape(rxcorr,nBpm,nxCorr);
rycorr=reshape(rycorr,nBpm,nyCorr);

% 
% size(rbpm)
% size(rxcorr)
% size(rquad)
% size(-eye(4))

switch plane
    case 'x'
        R=[rbpm rxcorr rquad -eye(nBpm)];
    case 'y'
        R=[rbpm rycorr rquad -eye(nBpm)];
    otherwise
        disp('Please choose the PLANE !');
end

