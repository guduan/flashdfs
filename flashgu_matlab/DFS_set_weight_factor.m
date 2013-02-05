function w=DFS_set_weight_factor(status,weight_factor)
% set weight factors for lscov

w=[weight_factor*status.nBpm_new];
if status.opts.useLaunchfit
    w=[1;1;w];
end

if status.opts.useLinQuad
    w=[w;weight_factor*ones(2,1)];
end

if status.opts.useMinQuad
    w=[w;weight_factor*ones(status.nQuad_new,1)];
end

if status.opts.useLinBpm
    w=[w;weight_factor*ones(2,1)];
end

if status.opts.useMinBpm
    w=[w;weight_factor*ones(status.nQuad_new,1)];
end

disp('weight factors choosen is DONE!');
