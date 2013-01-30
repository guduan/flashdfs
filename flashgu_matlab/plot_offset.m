function plot_offset(result,input_offset,correction_number)
% plot calculated offset VS offset

tt1=cell2mat({result.qoffset_calculated,input_offset.qoffset_real});
figure;subplot(2,1,1);
bar(tt1);
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