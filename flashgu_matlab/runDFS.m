function result=runDFS(status,R,x,w)


nQuad=status.nQuad_new;
nBpm=status.nBpm_new;

% [result.offset_calculated,result.std_offset_calculated,result.mse,result.S]=lscov(R,x,w);
[result.offset_calculated,result.std_offset_calculated,result.mse,result.S]=util_lssvd(R,x,w,status.svdthreshold);
% result.offset_calculated=lscov(R,x);
result.qoffset_calculated=result.offset_calculated(1:nQuad);
result.bpmoffset_calculated=result.offset_calculated(nQuad+1:nQuad+nBpm);

if status.opts.useLaunchfit
    result.init_xp1=result.offset_calculated(nQuad+nBpm+2);
    result.init_x1  =result.offset_calculated(nQuad+nBpm+1)+result.init_xp1*status.zBpm_new(1);
    result.init_xp2=result.offset_calculated(nQuad+nBpm+4);
    result.init_x2  =result.offset_calculated(nQuad+nBpm+3)+result.init_xp2*status.zBpm_new(1);
    result.init_xp3=result.offset_calculated(nQuad+nBpm+6);
    result.init_x3  =result.offset_calculated(nQuad+nBpm+5)+result.init_xp3*status.zBpm_new(1);
else
    result.init_x1  =0;
    result.init_xp1=0;
    result.init_x2  =0;
    result.init_xp2=0;
    result.init_x3  =0;
    result.init_xp3=0;
end
% result.std_qoffset_calculated=result.std_offset_calculated(1:nQuad);
% result.std_bpmoffset_calculated=result.std_offset_calculated(nQuad+1:nQuad+nBpm);
