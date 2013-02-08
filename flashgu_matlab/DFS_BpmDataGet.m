function [x,xMeas,xconstrain]=DFS_BpmDataGet(status,measured_orbit,input_offset)

nQuad=status.nQuad_new;
nBpm=status.nBpm_new;
zQuad=status.zQuad_new;
zBpm=status.zBpm_new;

% use 1000 noise settings to simulate 1000 times measurement.
%mean(randn(status.nBpm_new,1000),2) generate mean value of 1000 noise.
bpm_noise_level=status.bpm_noise_level; % bpm noise level in meter

bpm_noise1=bpm_noise_level*mean(randn(status.nBpm_new,1000),2)*status.opts.usenoise;
bpm_noise2=bpm_noise_level*mean(randn(status.nBpm_new,1000),2)*status.opts.usenoise;
bpm_noise3=bpm_noise_level*mean(randn(status.nBpm_new,1000),2)*status.opts.usenoise;
% bpm_noise1=2e-6*randn(nBpm,1)*status.opts.usenoise;
% bpm_noise2=2e-6*randn(nBpm,1)*status.opts.usenoise;
% bpm_noise3=2e-6*randn(nBpm,1)*status.opts.usenoise;

xMeas=[measured_orbit.orbit1+bpm_noise1-input_offset.bpmoffset_real;
    measured_orbit.orbit2+bpm_noise2-input_offset.bpmoffset_real;
    measured_orbit.orbit3+bpm_noise3-input_offset.bpmoffset_real];

RQLin=[ones(1,nQuad),zeros(1,nBpm);zQuad,zeros(1,nBpm)];
RQMin=[eye(nQuad),zeros(nQuad,nBpm)];
RBLin=[zeros(1,nQuad),ones(1,nBpm);zeros(1,nQuad),zBpm];
RBMin=[zeros(nBpm,nQuad),eye(nBpm)];
RLMin=zeros(1,nQuad+nBpm);

xconstrain=[];
%*****
if status.opts.useLinQuad
    xconstrain=[xconstrain;zeros(size(RQLin,1),1)];
end

if status.opts.useMinQuad
    xconstrain=[xconstrain;zeros(size(RQMin,1),1)];
end

if status.opts.useLinBpm
    xconstrain=[xconstrain;zeros(size(RBLin,1),1)];
end

if status.opts.useMinBpm
    xconstrain=[xconstrain;zeros(size(RBMin,1),1)];
end

%***
if ~status.opts.usenoise
    x=xMeas;
elseif status.opts.usenoise&&~status.opts.useLaunchfit
    x=[xMeas;xconstrain];
elseif status.opts.usenoise&&status.opts.useLaunchfit
    xconstrain=[xconstrain;zeros(size(RLMin,1),1)];
    x=[xMeas;xconstrain];
end
%********
disp('Full Orbit Measurement for DFS is OK');
