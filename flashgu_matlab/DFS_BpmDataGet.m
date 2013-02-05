function [xMeas,xLagr]=DFS_BpmDataGet(status,measured_orbit,input_offset)

nQuad=status.nQuad_new;
nBpm=status.nBpm_new;
zQuad=status.zQuad_new;
zBpm=status.zBpm_new;

use_noise=1;
bpm_noise1=2e-6*randn(nBpm,1)*use_noise;
bpm_noise2=2e-6*randn(nBpm,1)*use_noise;
bpm_noise3=2e-6*randn(nBpm,1)*use_noise;

xMeas=[measured_orbit.orbit1+bpm_noise1-input_offset.bpmoffset_real;
    measured_orbit.orbit2+bpm_noise2-input_offset.bpmoffset_real;
    measured_orbit.orbit3+bpm_noise3-input_offset.bpmoffset_real];

RQLin=[ones(1,nQuad),zeros(1,nBpm);zQuad,zeros(1,nBpm)];
RQMin=[eye(nQuad),zeros(nQuad,nBpm)];
RBLin=[zeros(1,nQuad),ones(1,nBpm);zeros(1,nQuad),zBpm];
RBMin=[zeros(nBpm,nQuad),eye(nBpm)];
RLMin=repmat(zeros(1,nQuad+nBpm),2,1);

[a,b]=size([RQLin;RQMin;RBLin;RBMin;RLMin]);
xLagr=zeros(a,1);
disp('Full Orbit Measurement for DFS is OK');




