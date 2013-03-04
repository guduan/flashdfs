function plot_offset(result,input_offset,correction_number,status)
% plot calculated offset VS offset

tt1=cell2mat({result.qoffset_calculated,input_offset.qoffset_real});
figure;subplot(2,1,1);
bar(tt1);
set(gca,'XTickLabel',[]);
a=get(gca,'Ylim');
text([1:status.nQuad_new],a(1)*ones(1,status.nQuad_new),status.Quad_name_new','HorizontalAlignment','right','rotation',70);
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
hold on;

tt2=cell2mat({result.bpmoffset_calculated,input_offset.bpmoffset_real});
subplot(2,1,2);bar(tt2);
set(gca,'XTickLabel',[]);
a=get(gca,'Ylim');
text([1:status.nBpm_new],a(1)*ones(1,status.nBpm_new),status.Bpm_name_new','HorizontalAlignment','right','rotation',70);
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