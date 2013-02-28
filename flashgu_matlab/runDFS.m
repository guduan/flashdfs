function result=runDFS(status,R,x,w)


nQuad=status.nQuad_new;
nBpm=status.nBpm_new;

% [result.offset_calculated,result.std_offset_calculated,result.mse,result.S]=lscov(R,x,w);
[result.offset_calculated,result.std_offset_calculated,result.mse,result.S]=util_lssvd(R,x,w,status.svdthreshold);
% result.offset_calculated=pinv(R)*x;
result.qoffset_calculated=result.offset_calculated(1:nQuad);
result.bpmoffset_calculated=result.offset_calculated(nQuad+1:nQuad+nBpm);

if status.opts.useLaunchfit
    result.init_xp=result.offset_calculated(nQuad+nBpm+2);
    result.init_x=result.offset_calculated(nQuad+nBpm+1)+result.init_xp*status.zBpm_new(1);
    %result.init_x=result.offset_calculated(nQuad+nBpm+1);
else
    result.init_x=0;
    result.init_xp=0;
end
% result.std_qoffset_calculated=result.std_offset_calculated(1:nQuad);
% result.std_bpmoffset_calculated=result.std_offset_calculated(nQuad+1:nQuad+nBpm);
