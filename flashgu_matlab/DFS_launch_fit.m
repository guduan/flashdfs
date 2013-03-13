function result=DFS_launch_fit(status,result)

linefit_qoffset=polyfit(status.zQuad_new,result.qoffset_calculated',1);
linefit_bpmoffset=polyfit(status.zBpm_new,result.bpmoffset_calculated',1);
y1=polyval(linefit_qoffset,status.zQuad_new);
y2=polyval(linefit_bpmoffset,status.zBpm_new);


result.linefit_qoffset=linefit_qoffset;
result.linefit_bpmoffset=linefit_bpmoffset;
result.qoffset_move=result.qoffset_calculated-y1';
result.bpmoffset_move =result.bpmoffset_calculated-y2';