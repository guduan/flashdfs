function plot_offset1(result,input_offset,correction_number,status)
% plot calculated offset VS offset

figure;subplot(4,1,1);
plot(status.zQuad_new,result.qoffset_calculated,'-.or',status.zBpm_new,result.bpmoffset_calculated,'-.*b');
grid on;
switch correction_number
    case 1
        title('Fitted Offsets after 1st correction');
    case 2
        title('Fitted Offsets after 2nd correction');
    case 3
        title('Fitted Offsets after 3rd correction');
    case 4
        title('Fitted Offsets after 4th correction');
end
legend('Fitted Quad-Offset','Fitted BPM-Offset');
legend('boxoff');
% ***************************************************************
subplot(4,1,2);
% tt2=cell2mat({result.qoffset_calculated,input_offset.qoffset_real});
% bar(tt2);
plot(status.zQuad_new,result.qoffset_calculated,'-.or',status.zQuad_new,input_offset.qoffset_real,'-.*b');
hold on;
plot(status.zQuad_new,result.linefit_qoffset(1).*status.zQuad_new+result.linefit_qoffset(2),'-r');
hold off;
grid on;
title({['Line-fit of Quad-offset:  Slope= ',num2str(result.linefit_qoffset(1)*1e6),' urad','  Bias= ',num2str(result.linefit_qoffset(2)*1e6),' um']});
legend('Quad-Offset fitted','Quad-Offset input','Linear Fit of Quad-Offset');
legend('boxoff');
% ***************************************************************
% tt3=cell2mat({result.bpmoffset_calculated,input_offset.bpmoffset_real});
% bar(tt3);
subplot(4,1,3);
plot(status.zBpm_new,result.bpmoffset_calculated,'-.or',status.zBpm_new,input_offset.bpmoffset_real,'-.*b');
hold on;
plot(status.zBpm_new,result.linefit_bpmoffset(1).*status.zBpm_new+result.linefit_bpmoffset(2),'-r');
hold off;
grid on;
title({['Line-fit of BPM offset:  Slope= ',num2str(result.linefit_bpmoffset(1)*1e6),' urad','  Bias= ',num2str(result.linefit_bpmoffset(2)*1e6),' um']});
legend('BPM Offset fitted','BPM Offset input','Linear fit of BPM Offset');
legend('boxoff');
% ***************************************
subplot(4,1,4);
plot(status.zQuad_new,input_offset.qoffset_real-result.qoffset_calculated,'-.dr',status.zBpm_new,input_offset.bpmoffset_real-result.bpmoffset_calculated,'-.pb');
% plot(status.zBpm_new,result.bpmoffset_calculated-input_offset.bpmoffset_real,'-.pb');
hold on;grid on;
line_fit_diff_bpmoffset=polyfit(status.zBpm_new',result.bpmoffset_calculated-input_offset.bpmoffset_real,1);
hold off;
titlestr={['Difference between Fitted and real offset'];
    ['Slope= ',num2str(line_fit_diff_bpmoffset(1)*1e6),' urad','  Bias=',num2str(line_fit_diff_bpmoffset(2)*1e6),' um']};
title(titlestr);
legend('Quad offset','BPM offset');
% legend('Bpm offset');
legend('boxoff');