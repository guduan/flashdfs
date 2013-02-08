% back up
for j=1:10
for i=1:10
    weight_factor=10^i;
    w=[weight_factor*ones(size(xMeas1));ones(size(xLagr1))];
    result1=runDFS(status,R,x1,w);
    a=[result1.qoffset_calculated-input_offset1.qoffset_real]';
    b=[result1.bpmoffset_calculated-input_offset1.bpmoffset_real]';
    rms_error_quad(i)=sqrt(mean(a.^2));
    rms_error_bpm(i)=sqrt(mean(b.^2));
end
rms_error=rms_error_quad+0.1*rms_error_bpm;
minimum=min(rms_error);

%%%%%%%%%%%%%%%%%%%%%%%%%
function w=DFS_set_weight_factor(status,weight_factor)
% set weight factors for lscov

wmag=[weight_factor*ones(3*status.nBpm_new,1)];

wconstrain=[];
if status.opts.useLinQuad
    wconstrain=[wconstrain;weight_factor*ones(2,1)];
end

if status.opts.useMinQuad
    wconstrain=[wconstrain;weight_factor*ones(status.nQuad_new,1)];
end

if status.opts.useLinBpm
    wconstrain=[wconstrain;weight_factor*ones(2,1)];
end

if status.opts.useMinBpm
    wconstrain=[wconstrain;weight_factor*ones(status.nBpm_new,1)];
end

if status.opts.useLaunchfit
    wconstrain=[wconstrain;1];
end

if status.opts.usenoise
    w=[wmag;wconstrain];
else
    w=wmag;
end

disp('weight factors choosen is DONE!');
%%%%%%%%%%%%%%%%%%%%%%%%%