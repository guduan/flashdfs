function result=runDFS(status,R,x,w)


nQuad=status.nQuad_new;

[result.offset_calculated,result.std_offset_calculated]=lscov(R,x,w);

result.qoffset_calculated=result.offset_calculated(1:nQuad);
result.bpmoffset_calculated=result.offset_calculated(nQuad+1:end);
result.std_qoffset_calculated=result.std_offset_calculated(1:nQuad);
result.std_bpmoffset_calculated=result.std_offset_calculated(nQuad+1:end);
