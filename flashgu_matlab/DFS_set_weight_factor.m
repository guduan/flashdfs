function w=DFS_set_weight_factor(status,weight_factor)
% set weight factors for lscov

wmag=[weight_factor*ones(3*status.nBpm_new,1)];

wconstrain=[];
if status.opts.useLinQuad
    wconstrain=[wconstrain;ones(2,1)];
end

if status.opts.useMinQuad
    wconstrain=[wconstrain;ones(status.nQuad_new,1)];
end

if status.opts.useLinBpm
    wconstrain=[wconstrain;ones(2,1)];
end

if status.opts.useMinBpm
    wconstrain=[wconstrain;ones(status.nBpm_new,1)];
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
