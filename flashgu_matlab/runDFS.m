function result=runDFS(status,R,x,w)


nQuad=status.nQuad_new;

% [result.offset_calculated,result.std_offset_calculated]=lscov(R,x,w);
[result.offset_calculated,result.std_offset_calculated,result.mse,result.S]=lscov(R,x,w);

result.init_x=result.offset_calculated(1);
result.init_xp=result.offset_calculated(2);
result.qoffset_calculated=result.offset_calculated(3:nQuad+2);
result.bpmoffset_calculated=result.offset_calculated(nQuad+3:end);
result.std_qoffset_calculated=result.std_offset_calculated(3:nQuad+2);
result.std_bpmoffset_calculated=result.std_offset_calculated(nQuad+3:end);
