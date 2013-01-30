function [xMeas,xLagr]=DFS_BpmDataGet(status,measured_orbit,use_noise,input_offset)

nQuad=status.nQuad_new;
nBpm=status.nBpm_new;
zQuad=status.zQuad_new;
zBpm=status.zBpm_new;

bpm_noise1=2e-6*randn(nBpm,1)*use_noise;
bpm_noise2=2e-6*randn(nBpm,1)*use_noise;
bpm_noise3=2e-6*randn(nBpm,1)*use_noise;

xMeas=[measured_orbit.orbit1+bpm_noise1-input_offset.bpmoffset_real;
      measured_orbit.orbit2+bpm_noise2-input_offset.bpmoffset_real;
      measured_orbit.orbit3+bpm_noise3-input_offset.bpmoffset_real];

RQLin=[ones(1,nQuad),zeros(1,nBpm);zQuad,zeros(1,nBpm)];
xQLin=0*RQLin(:,1);
RQMin=[eye(nQuad),zeros(nQuad,nBpm)];
xQMin=0*RQMin(:,1);

RBLin=[zeros(1,nQuad),ones(1,nBpm);zeros(1,nQuad),zBpm];
xBLin=0*RBLin(:,1);
RBMin=[zeros(nBpm,nQuad),eye(nBpm)];
xBMin=0*RBMin(:,1);  

xLagr=[xQLin;xQMin;xBLin;xBMin];
% x=[xMeas;xLagr];

disp('Full Orbit Measurement for DFS is OK');




