function status=modify_list(status)
% modify Quad and BPM list according to manual choosen 

a=1:status.nQuad;
status.useQuadlist=setdiff(a,status.unuseQuadlist);

b=1:status.nBpm;
status.useBpmlist=setdiff(b,status.unuseBpmlist);

status.nQuad_new=status.nQuad-length(status.unuseQuadlist); % new number of Quad according to manual choosen.
status.nBpm_new=status.nBpm-length(status.unuseBpmlist); % new number of BPM according to manual choosen.