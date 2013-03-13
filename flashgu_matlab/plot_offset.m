function plot_offset(result,input_offset,correction_number,status)
% plot calculated offset VS offset

tt1=cell2mat({result.qoffset_calculated,input_offset.qoffset_real});
figure;subplot(2,2,1);
bar(tt1);
% set(gca,'XTickLabel',[]);
% a=get(gca,'Ylim');
% text([1:status.nQuad_new],a(1)*ones(1,status.nQuad_new),status.Quad_name_new','HorizontalAlignment','right','rotation',70);
switch correction_number
    case 1
        title('Quad-Offset comparison in 1st correction');
    case 2
        title('Quad-Offset comparison in 2nd correction');
    case 3
        title('Quad-Offset comparison in 3rd correction');
    case 4
        title('Quad-Offset comparison in 4th correction');
end
legend('Quad-Offset calculated','Quad-Offset input');
legend('boxoff');
% ***************************************
subplot(2,2,2);
plot(status.zQuad_new,result.qoffset_calculated,'-.or',status.zQuad_new,result.qoffset_move,'-.*b');
title('Quad Offsets removed linear component');
legend('with linear component','withOUT linear component');
legend('boxoff');
% ***************************************
tt3=cell2mat({result.bpmoffset_calculated,input_offset.bpmoffset_real});
subplot(2,2,3);bar(tt3);
% set(gca,'XTickLabel',[]);
% a=get(gca,'Ylim');
% text([1:status.nBpm_new],a(1)*ones(1,status.nBpm_new),status.Bpm_name_new','HorizontalAlignment','right','rotation',70);
switch correction_number
    case 1
        title('BPM-Offset comparison in 1st correction');
    case 2
        title('BPM-Offset comparison in 2nd correction');
    case 3
        title('BPM-Offset comparison in 3rd correction');
    case 4
        title('BPM-Offset comparison in 4th correction');
end
legend('BPM Offset calculated','BPM Offset input');
legend('boxoff');
% ***************************************
subplot(2,2,4);
plot(status.zBpm_new,result.bpmoffset_calculated,'-.or',status.zBpm_new,result.bpmoffset_move,'-.*b');
title('BPM Offsets removed linear component');
legend('with linear component','withOUT linear component');
legend('boxoff');